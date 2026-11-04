using System.Security.Cryptography;
using System.Text;
using System.Text.Json;
using System.Web;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Options;
using TadierBot.WebApi.Configurations;
using TadierBot.WebApi.DTOs.User;
using TadierBot.WebApi.Repositories.Concrete;

namespace TadierBot.WebApi.Controllers;

[ApiController]
public abstract class BaseController : ControllerBase
{
    protected readonly IAdminRepository AdminRepository;
    protected readonly BotConfiguration BotConfig;

    protected BaseController(
        IAdminRepository adminRepository,
        IOptions<BotConfiguration> botConfig)
    {
        AdminRepository = adminRepository;
        BotConfig = botConfig.Value;
    }

    /// <summary>
    /// Telegram WebApp initData kriptografik imzosini (HMAC-SHA256) tekshirish.
    /// </summary>
    protected bool ValidateTelegramInitData(string? initData, out TelegramUserDto? user)
    {
        user = null;
        if (string.IsNullOrWhiteSpace(initData))
        {
            return false;
        }

        try
        {
            var parsed = HttpUtility.ParseQueryString(initData);
            string? hash = parsed["hash"];
            if (string.IsNullOrEmpty(hash))
            {
                return false;
            }

            // 1. "hash" dan tashqari barcha parametrlarni alfavit tartibida saralash
            var sortedParams = parsed.AllKeys
                .Where(k => k != null && k != "hash")
                .OrderBy(k => k, StringComparer.Ordinal)
                .Select(k => $"{k}={parsed[k]}");

            string dataCheckString = string.Join("\n", sortedParams);

            // 2. Secret Key = HMAC_SHA256("WebAppData", botToken)
            byte[] secretKey = HMACSHA256.HashData(
                Encoding.UTF8.GetBytes("WebAppData"),
                Encoding.UTF8.GetBytes(BotConfig.BotToken));

            // 3. Computed Hash = HMAC_SHA256(secretKey, dataCheckString)
            byte[] computedHashBytes = HMACSHA256.HashData(
                secretKey,
                Encoding.UTF8.GetBytes(dataCheckString));

            string computedHash = Convert.ToHexStringLower(computedHashBytes);

            // 4. Vaqt hujumlariga qarshi xavfsiz solishtirish (Constant-time comparison)
            if (!CryptographicOperations.FixedTimeEquals(
                    Encoding.UTF8.GetBytes(computedHash),
                    Encoding.UTF8.GetBytes(hash)))
            {
                return false;
            }

            // 5. "user" JSON parametrini o'qish
            string? userJson = parsed["user"];
            if (!string.IsNullOrEmpty(userJson))
            {
                var options = new JsonSerializerOptions
                {
                    PropertyNameCaseInsensitive = true,
                    PropertyNamingPolicy = JsonNamingPolicy.SnakeCaseLower
                };
                user = JsonSerializer.Deserialize<TelegramUserDto>(userJson, options);
            }

            return user != null;
        }
        catch
        {
            return false;
        }
    }

    /// <summary>
    /// Foydalanuvchining Admin ekanligini xavfsiz tekshirish.
    /// </summary>
    protected async Task<bool> AuthorizeAdminAsync(string? initData)
    {
        if (!ValidateTelegramInitData(initData, out var user) || user == null)
        {
            return false;
        }

        return await AdminRepository.IsAdminAsync(user.Id);
    }
}


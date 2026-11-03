using System.Security.Cryptography;
using System.Text;
using System.Text.Json;
using System.Web;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Options;
using TadierBot.WebApi.Configurations;
using TadierBot.WebApi.DTOs;
using TadierBot.WebApi.Repositories.Concrete;

namespace TadierBot.WebApi.Controllers;

[ApiController]
[Route("api/[controller]")]
public class UserController : ControllerBase
{
    private readonly IAdminRepository _adminRepository;
    private readonly BotConfiguration _botConfig;
    private readonly ILogger<UserController> _logger;

    public UserController(
        IAdminRepository adminRepository,
        IOptions<BotConfiguration> botConfig,
        ILogger<UserController> logger)
    {
        _adminRepository = adminRepository;
        _botConfig = botConfig.Value;
        _logger = logger;
    }

    /// <summary>
    /// Telegram Mini App initData orqali xavfsiz avtorizatsiya va profil ma'lumotlarini olish.
    /// </summary>
    [HttpPost("profile")]
    public async Task<IActionResult> GetProfile([FromBody] TelegramAuthRequest request)
    {
        if (string.IsNullOrWhiteSpace(request.InitData))
        {
            return BadRequest(new { Message = "initData bo'sh bo'lishi mumkin emas." });
        }

        // 1. Telegram kriptografik imzosini (HMAC-SHA256) tekshirish
        if (!ValidateTelegramInitData(request.InitData, _botConfig.BotToken, out var telegramUser))
        {
            _logger.LogWarning("Soxta yoki yaroqsiz initData bilan so'rov keldi.");
            return Unauthorized(new { Message = "Telegram avtorizatsiyasi tasdiqlanmadi (Noto'g'ri imzo)." });
        }

        if (telegramUser == null)
        {
            return BadRequest(new { Message = "Foydalanuvchi ma'lumotlari topilmadi." });
        }

        // 2. Bazadan Adminlik holatini tekshirish
        bool isAdmin = await _adminRepository.IsAdminAsync(telegramUser.Id);

        string fullName = $"{telegramUser.FirstName} {telegramUser.LastName}".Trim();
        if (string.IsNullOrWhiteSpace(fullName))
        {
            fullName = telegramUser.Username ?? "Foydalanuvchi";
        }

        // 3. Mini App ga foydalanuvchi roli va huquqini qaytarish
        return Ok(new UserProfileResponse
        {
            TelegramId = telegramUser.Id,
            FullName = fullName,
            Username = telegramUser.Username,
            Role = isAdmin ? "Admin" : "Foydalanuvchi",
            IsAdmin = isAdmin
        });
    }

    /// <summary>
    /// Telegram WebApp initData ni tekshirish.
    /// </summary>
    private static bool ValidateTelegramInitData(string initData, string botToken, out TelegramUserDto? user)
    {
        user = null;
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
                Encoding.UTF8.GetBytes(botToken));

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
                var options = new JsonSerializerOptions { PropertyNameCaseInsensitive = true };
                user = JsonSerializer.Deserialize<TelegramUserDto>(userJson, options);
            }

            return user != null;
        }
        catch
        {
            return false;
        }
    }
}


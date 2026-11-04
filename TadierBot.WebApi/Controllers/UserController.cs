using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Options;
using TadierBot.WebApi.Configurations;
using TadierBot.WebApi.DTOs.User;
using TadierBot.WebApi.Repositories.Concrete;
using TadierBot.WebApi.Services.Concrete;

namespace TadierBot.WebApi.Controllers;

[Route("api/[controller]")]
public class UserController : BaseController
{
    private readonly IUserService _userService;
    private readonly ILogger<UserController> _logger;

    public UserController(
        IAdminRepository adminRepository,
        IUserService userService,
        IOptions<BotConfiguration> botConfig,
        ILogger<UserController> logger)
        : base(adminRepository, botConfig)
    {
        _userService = userService;
        _logger = logger;
    }

    /// <summary>
    /// Telegram Mini App initData orqali xavfsiz avtorizatsiya, profil ma'lumotlari (Ism, Rol)
    /// va foydalanuvchi statistikasini (Streak, Ball, Daraja) olish.
    /// </summary>
    [HttpPost("profile")]
    public async Task<IActionResult> GetProfile([FromBody] TelegramAuthRequest request)
    {
        if (string.IsNullOrWhiteSpace(request.InitData))
        {
            return BadRequest(new { Message = "initData bo'sh bo'lishi mumkin emas." });
        }

        // 1. Telegram kriptografik imzosini BaseController orqali tekshirish
        if (!ValidateTelegramInitData(request.InitData, out var telegramUser) || telegramUser == null)
        {
            _logger.LogWarning("Soxta yoki yaroqsiz initData bilan so'rov keldi.");
            return Unauthorized(new { Message = "Telegram avtorizatsiyasi tasdiqlanmadi (Noto'g'ri imzo)." });
        }

        // 2. Bazadan Adminlik holatini tekshirish
        bool isAdmin = await AdminRepository.IsAdminAsync(telegramUser.Id);

        // 3. Foydalanuvchi statistikasini olish (Streak, Ball, Daraja)
        var stats = await _userService.GetStatsAsync(telegramUser.Id);

        string fullName = $"{telegramUser.FirstName} {telegramUser.LastName}".Trim();
        if (string.IsNullOrWhiteSpace(fullName))
        {
            fullName = telegramUser.Username ?? "Foydalanuvchi";
        }

        // 4. Mini App ga profil, rol va statistikani qaytarish
        return Ok(new UserProfileResponse
        {
            TelegramId = telegramUser.Id,
            FullName = fullName,
            Username = telegramUser.Username,
            Role = isAdmin ? "Admin" : "Foydalanuvchi",
            IsAdmin = isAdmin,
            Stats = stats
        });
    }

    /// <summary>
    /// Foydalanuvchining Streak, Ball va Darajasini alohida olish uchun endpoint.
    /// </summary>
    [HttpPost("stats")]
    public async Task<IActionResult> GetStats([FromBody] TelegramAuthRequest request)
    {
        if (string.IsNullOrWhiteSpace(request.InitData))
        {
            return BadRequest(new { Message = "initData bo'sh bo'lishi mumkin emas." });
        }

        if (!ValidateTelegramInitData(request.InitData, out var telegramUser) || telegramUser == null)
        {
            return Unauthorized(new { Message = "Telegram avtorizatsiyasi tasdiqlanmadi." });
        }

        var stats = await _userService.GetStatsAsync(telegramUser.Id);
        return Ok(stats);
    }
}

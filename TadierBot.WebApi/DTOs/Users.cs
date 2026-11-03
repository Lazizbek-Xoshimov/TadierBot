namespace TadierBot.WebApi.DTOs;

/// <summary>
/// Mini App dan Telegram initData qatorini qabul qiluvchi model
/// </summary>
public class TelegramAuthRequest
{
    public string InitData { get; set; } = string.Empty;
}

/// <summary>
/// Mini App ga qaytariladigan profil ma'lumotlari (Ism, Rol va Adminlik holati)
/// </summary>
public class UserProfileResponse
{
    public long TelegramId { get; set; }
    public string FullName { get; set; } = string.Empty;
    public string? Username { get; set; }
    public string Role { get; set; } = "Foydalanuvchi";
    public bool IsAdmin { get; set; }
}

/// <summary>
/// Telegram initData ichidagi JSON dan o'qib olinadigan foydalanuvchi modeli
/// </summary>
public class TelegramUserDto
{
    public long Id { get; set; }
    public string? FirstName { get; set; }
    public string? LastName { get; set; }
    public string? Username { get; set; }
    public string? LanguageCode { get; set; }
}


namespace TadierBot.WebApi.DTOs.User;

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

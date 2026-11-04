namespace TadierBot.WebApi.DTOs.User;

/// <summary>
/// Mini App dan Telegram initData qatorini qabul qiluvchi model
/// </summary>
public class TelegramAuthRequest
{
    public string InitData { get; set; } = string.Empty;
}

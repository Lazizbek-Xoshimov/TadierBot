using System.Text.Json.Serialization;

namespace TadierBot.WebApi.DTOs.User;

/// <summary>
/// Telegram initData ichidagi JSON dan o'qib olinadigan foydalanuvchi modeli
/// </summary>
public class TelegramUserDto
{
    [JsonPropertyName("id")]
    public long Id { get; set; }

    [JsonPropertyName("first_name")]
    public string? FirstName { get; set; }

    [JsonPropertyName("last_name")]
    public string? LastName { get; set; }

    [JsonPropertyName("username")]
    public string? Username { get; set; }

    [JsonPropertyName("language_code")]
    public string? LanguageCode { get; set; }
}

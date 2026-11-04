namespace TadierBot.WebApi.DTOs.User;

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
    public UserStatsResponse? Stats { get; set; }
}

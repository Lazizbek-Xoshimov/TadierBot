namespace TadierBot.WebApi.Models;

public class User
{
    public int Id { get; set; }
    public long TelegramId { get; set; }
    public string? FullName { get; set; }
    public string? Username { get; set; }
    public string LanguageCode { get; set; } = "uz";
    public bool IsBanned { get; set; } = false;
    public int Score { get; set; } = 0;
    public int StreakDays { get; set; } = 0;
    public string Level { get; set; } = "A1";
    public DateTime? LastStreakDate { get; set; }
    public DateTime CreatedAt { get; set; } = DateTime.UtcNow;
    public DateTime LastActiveAt { get; set; } = DateTime.UtcNow;
}


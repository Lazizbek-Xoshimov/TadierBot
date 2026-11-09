namespace TadierBot.WebApi.DTOs.User;

/// <summary>
/// Mini App foydalanuvchi statistikasi (Streak, Ball, Daraja) javob modeli
/// </summary>
public class UserStatsResponse
{
    public int StreakDays { get; set; }
    public int Score { get; set; }
    public string Level { get; set; } = "A1";
    public int CompletedTestsCount { get; set; }
    public int RankPosition { get; set; }
}


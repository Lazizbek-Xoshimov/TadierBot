namespace TadierBot.WebApi.Models;

/// <summary>
/// Foydalanuvchining topshirgan daraja testi natijasi tarixi
/// </summary>
public class UserQuizAttempt
{
    public long Id { get; set; }
    public long TelegramId { get; set; }
    public int CorrectAnswersCount { get; set; }
    public int TotalQuestionsCount { get; set; } = 20;
    public int ScoreEarned { get; set; }
    public string AssignedLevel { get; set; } = "A1";
    public DateTime CompletedAt { get; set; } = DateTime.UtcNow;
}


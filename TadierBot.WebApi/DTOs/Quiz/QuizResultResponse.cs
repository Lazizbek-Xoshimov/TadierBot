using TadierBot.WebApi.DTOs.User;

namespace TadierBot.WebApi.DTOs.Quiz;

/// <summary>
/// Test topshirilgandan so'ng qaytariladigan yakuniy natija
/// </summary>
public class QuizResultResponse
{
    public int TotalQuestions { get; set; } = 20;
    public int CorrectAnswersCount { get; set; }
    public double Percentage { get; set; }
    public string AssignedLevel { get; set; } = "A1"; // 'A1', 'A2', 'B1', 'B2'
    public int ScoreEarned { get; set; }
    public UserStatsResponse? UserStats { get; set; }
}


namespace TadierBot.WebApi.Models;

/// <summary>
/// Matn yoki audioga bog'langan test savoli modeli
/// </summary>
public class QuizQuestion
{
    public int Id { get; set; }
    public int PassageId { get; set; }
    public string QuestionText { get; set; } = string.Empty;
    public string OptionA { get; set; } = string.Empty;
    public string OptionB { get; set; } = string.Empty;
    public string? OptionC { get; set; }
    public string? OptionD { get; set; }
    public int CorrectOption { get; set; } // 0=A, 1=B, 2=C, 3=D
    public int OrderIndex { get; set; } = 1;
    public DateTime CreatedAt { get; set; } = DateTime.UtcNow;
}


namespace TadierBot.WebApi.DTOs.Quiz;

/// <summary>
/// Admin panel orqali matn yoki audioga yangi test savoli qo'shish so'rovi
/// </summary>
public class QuizQuestionCreateRequest
{
    public int PassageId { get; set; }
    public string QuestionText { get; set; } = string.Empty;
    public string OptionA { get; set; } = string.Empty;
    public string OptionB { get; set; } = string.Empty;
    public string? OptionC { get; set; }
    public string? OptionD { get; set; }
    public int CorrectOption { get; set; } // 0=A, 1=B, 2=C, 3=D
    public int OrderIndex { get; set; } = 1;
}


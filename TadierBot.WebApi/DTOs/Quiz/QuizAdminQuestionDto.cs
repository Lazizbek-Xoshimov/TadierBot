namespace TadierBot.WebApi.DTOs.Quiz;

/// <summary>
/// Admin panelda savollar ro'yxatini ko'rish uchun to'liq model (to'g'ri javob va tegishli matn sarlavhasi bilan)
/// </summary>
public class QuizAdminQuestionDto
{
    public int Id { get; set; }
    public int PassageId { get; set; }
    public string PassageTitle { get; set; } = string.Empty;
    public string PassageType { get; set; } = "Reading"; // 'Reading' yoki 'Listening'
    public string Level { get; set; } = "A1";
    public string QuestionText { get; set; } = string.Empty;
    public string OptionA { get; set; } = string.Empty;
    public string OptionB { get; set; } = string.Empty;
    public string? OptionC { get; set; }
    public string? OptionD { get; set; }
    public int CorrectOption { get; set; } // 0=A, 1=B, 2=C, 3=D
    public int OrderIndex { get; set; }
    public DateTime CreatedAt { get; set; }
}


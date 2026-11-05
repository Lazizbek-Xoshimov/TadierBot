namespace TadierBot.WebApi.DTOs.Quiz;

/// <summary>
/// Foydalanuvchiga test topshirish paytida ko'rsatiladigan savol (to'g'ri javob yashirilgan)
/// </summary>
public class QuizQuestionDto
{
    public int Id { get; set; }
    public int PassageId { get; set; }
    public string QuestionText { get; set; } = string.Empty;
    public string OptionA { get; set; } = string.Empty;
    public string OptionB { get; set; } = string.Empty;
    public string? OptionC { get; set; }
    public string? OptionD { get; set; }
    public int OrderIndex { get; set; }
}


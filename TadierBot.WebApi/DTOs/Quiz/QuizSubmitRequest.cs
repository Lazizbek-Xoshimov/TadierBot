namespace TadierBot.WebApi.DTOs.Quiz;

/// <summary>
/// Testni yakunlab tekshirishga yuborish so'rovi
/// </summary>
public class QuizSubmitRequest
{
    public List<QuizUserAnswerDto> Answers { get; set; } = new();
}


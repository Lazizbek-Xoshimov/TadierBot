namespace TadierBot.WebApi.DTOs.Quiz;

/// <summary>
/// Foydalanuvchining bitta savolga bergan javobi
/// </summary>
public class QuizUserAnswerDto
{
    public int QuestionId { get; set; }
    public int SelectedOption { get; set; } // 0=A, 1=B, 2=C, 3=D
}


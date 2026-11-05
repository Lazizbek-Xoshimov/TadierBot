namespace TadierBot.WebApi.DTOs.Quiz;

/// <summary>
/// 20 talik daraja testi to'plami (10 ta Reading va 10 ta Listening)
/// </summary>
public class QuizTestResponse
{
    public List<QuizPassageDto> ReadingPassages { get; set; } = new();
    public List<QuizPassageDto> ListeningPassages { get; set; } = new();
    public int TotalReadingQuestions { get; set; } = 10;
    public int TotalListeningQuestions { get; set; } = 10;
    public int TotalQuestions { get; set; } = 20;
}


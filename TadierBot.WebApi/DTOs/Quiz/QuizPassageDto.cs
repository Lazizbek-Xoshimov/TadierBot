namespace TadierBot.WebApi.DTOs.Quiz;

/// <summary>
/// Matn (Reading) yoki Audio (Listening) materiali va unga tegishli savollar to'plami
/// </summary>
public class QuizPassageDto
{
    public int Id { get; set; }
    public string Type { get; set; } = "Reading"; // 'Reading' yoki 'Listening'
    public string Title { get; set; } = string.Empty;
    public string? Content { get; set; }
    public string? FileUrl { get; set; }
    public string? AudioUrl { get => FileUrl; set => FileUrl = value; }
    public string Level { get; set; } = "A1";
    public List<QuizQuestionDto> Questions { get; set; } = new();
}

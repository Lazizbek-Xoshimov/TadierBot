namespace TadierBot.WebApi.DTOs.Quiz;

/// <summary>
/// Admin panel orqali yangi o'qish matni yoki audio material qo'shish so'rovi
/// </summary>
public class QuizPassageCreateRequest
{
    public string Type { get; set; } = "Reading"; // 'Reading' yoki 'Listening'
    public string Title { get; set; } = string.Empty;
    public string? Content { get; set; }
    public string? FileUrl { get; set; }
    public string? AudioUrl { get => FileUrl; set => FileUrl = value; }
    public string Level { get; set; } = "A1";
}

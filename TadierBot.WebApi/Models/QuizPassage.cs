namespace TadierBot.WebApi.Models;

/// <summary>
/// O'qish matnlari (Reading) va Audio materiallar (Listening) modeli
/// </summary>
public class QuizPassage
{
    public int Id { get; set; }
    public string Type { get; set; } = "Reading"; // 'Reading' yoki 'Listening'
    public string Title { get; set; } = string.Empty;
    public string? Content { get; set; }
    public string? AudioUrl { get; set; }
    public string Level { get; set; } = "A1"; // 'A1', 'A2', 'B1', 'B2'
    public DateTime CreatedAt { get; set; } = DateTime.UtcNow;
}


namespace TadierBot.WebApi.Models;

public class Word
{
    public int Id { get; set; }
    public string? Article { get; set; }
    public string GermanWord { get; set; } = string.Empty;
    public string UzbekTranslation { get; set; } = string.Empty;
    public string? ExampleSentenceDe { get; set; }
    public string? ExampleSentenceUz { get; set; }
    public string Level { get; set; } = "A1";
    public string? Category { get; set; }
    public string? AudioUrl { get; set; }
    public bool IsDailyWord { get; set; } = false;
    public DateTime? DailyWordDate { get; set; }
    public DateTime CreatedAt { get; set; } = DateTime.UtcNow;
    public DateTime? UpdatedAt { get; set; }
}


namespace TadierBot.WebApi.DTOs.Word;

/// <summary>
/// Admin panel orqali yangi so'z qo'shish so'rovi
/// </summary>
public class WordCreateRequest
{
    public string? Article { get; set; }
    public string GermanWord { get; set; } = string.Empty;
    public string UzbekTranslation { get; set; } = string.Empty;
    public string? ExampleSentenceDe { get; set; }
    public string? ExampleSentenceUz { get; set; }
    public string Level { get; set; } = "A1";
    public string? Category { get; set; }
    public string? AudioUrl { get; set; }
    public bool IsDailyWord { get; set; }
}


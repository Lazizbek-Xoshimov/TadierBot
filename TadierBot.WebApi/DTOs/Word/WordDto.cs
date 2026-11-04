namespace TadierBot.WebApi.DTOs.Word;

/// <summary>
/// Mini App va trenajyor uchun so'z (kartochka) modeli
/// </summary>
public class WordDto
{
    public int Id { get; set; }
    public string? Article { get; set; }
    public string GermanWord { get; set; } = string.Empty;
    public string UzbekTranslation { get; set; } = string.Empty;
    public string? ExampleSentenceDe { get; set; }
    public string? ExampleSentenceUz { get; set; }
    public string Level { get; set; } = "A1";
    public int? Unit { get; set; }
    public string? Category { get; set; }
    public string? AudioUrl { get; set; }
    public bool IsDailyWord { get; set; }
}


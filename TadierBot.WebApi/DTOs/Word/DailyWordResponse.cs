namespace TadierBot.WebApi.DTOs.Word;

/// <summary>
/// Bosh sahifadagi "Kun so'zi" kartasi uchun javob modeli
/// </summary>
public class DailyWordResponse
{
    public int Id { get; set; }
    public string? Article { get; set; }
    public string GermanWord { get; set; } = string.Empty;
    public string UzbekTranslation { get; set; } = string.Empty;
    public string? ExampleSentenceDe { get; set; }
    public string? ExampleSentenceUz { get; set; }
    public string Level { get; set; } = "A1";
    public string? AudioUrl { get; set; }
}


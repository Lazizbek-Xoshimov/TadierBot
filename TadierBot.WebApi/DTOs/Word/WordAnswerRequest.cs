namespace TadierBot.WebApi.DTOs.Word;

/// <summary>
/// Foydalanuvchi kartochkaga javob berganda yuboriladigan so'rov
/// </summary>
public class WordAnswerRequest
{
    public string InitData { get; set; } = string.Empty;
    public int WordId { get; set; }
    public bool IsRemembered { get; set; } // true = Bildim (Yodladim), false = Qaytarish kerak
}


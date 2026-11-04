namespace TadierBot.WebApi.DTOs.Word;

/// <summary>
/// Kartochka javobidan so'ng qaytariladigan natija (Ball va Streak)
/// </summary>
public class WordAnswerResponse
{
    public int WordId { get; set; }
    public string Status { get; set; } = "Learning"; // "Learning" yoki "Learned"
    public int EarnedScore { get; set; }             // Ushbu javob uchun berilgan ball (+10)
    public int TotalScore { get; set; }              // Foydalanuvchining yangi umumiy bali
    public int StreakDays { get; set; }              // Yangilangan streak
}


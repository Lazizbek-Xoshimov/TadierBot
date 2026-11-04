namespace TadierBot.WebApi.Models;

public class UserWordProgress
{
    public long Id { get; set; }
    public long TelegramId { get; set; }
    public int WordId { get; set; }
    public string Status { get; set; } = "Learning"; // 'Learning', 'Learned'
    public int CorrectCount { get; set; } = 0;
    public int IncorrectCount { get; set; } = 0;
    public DateTime LastReviewedAt { get; set; } = DateTime.UtcNow;
    public DateTime? NextReviewAt { get; set; }
    public DateTime CreatedAt { get; set; } = DateTime.UtcNow;

    // Dapper orqali bog'langan so'z ma'lumotlarini olish uchun qo'shimcha maydon
    public Word? Word { get; set; }
}

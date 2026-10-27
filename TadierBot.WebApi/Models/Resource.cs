namespace TadierBot.WebApi.Models;

public class Resource
{
    public int Id { get; set; }
    public string Title { get; set; } = string.Empty;
    public string? Description { get; set; }
    public string Url { get; set; } = string.Empty;
    public string Type { get; set; } = string.Empty; // 'Book', 'Video', 'Article'
    public string Language { get; set; } = "uz";
    public int CategoryId { get; set; }
    public int? AddedByAdminId { get; set; }
    public string? TelegramChannelId { get; set; }
    public int? MessageId { get; set; }
    public int ViewsCount { get; set; } = 0;
    public DateTime CreatedAt { get; set; } = DateTime.UtcNow;
    public DateTime? UpdatedAt { get; set; }

    // Dapper Join orqali olish uchun qulay qo'shimcha maydon
    public string? CategoryName { get; set; }
}


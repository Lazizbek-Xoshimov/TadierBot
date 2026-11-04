namespace TadierBot.WebApi.Models;

public class EventRegistration
{
    public long Id { get; set; }
    public int EventId { get; set; }
    public long TelegramId { get; set; }
    public DateTime RegisteredAt { get; set; } = DateTime.UtcNow;
}


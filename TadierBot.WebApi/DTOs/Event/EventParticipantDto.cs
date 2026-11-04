namespace TadierBot.WebApi.DTOs.Event;

/// <summary>
/// Darsga yozilgan qatnashuvchi o'quvchi ma'lumoti
/// </summary>
public class EventParticipantDto
{
    public int EventId { get; set; }
    public string EventTitle { get; set; } = string.Empty;
    public long TelegramId { get; set; }
    public string? FullName { get; set; }
    public string? Username { get; set; }
    public DateTime RegisteredAt { get; set; }
}


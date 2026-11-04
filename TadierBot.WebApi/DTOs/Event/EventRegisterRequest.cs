namespace TadierBot.WebApi.DTOs.Event;

/// <summary>
/// O'quvchi tomonidan darsga yozilish so'rovi
/// </summary>
public class EventRegisterRequest
{
    public string? InitData { get; set; }
    public int EventId { get; set; }
}


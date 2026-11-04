namespace TadierBot.WebApi.DTOs.Event;

/// <summary>
/// Mini App va boshqaruv paneli uchun tadbir (dars) DTO modeli
/// </summary>
public class EventDto
{
    public int Id { get; set; }
    public string Title { get; set; } = string.Empty;
    public string? Description { get; set; }
    public string EventType { get; set; } = "Zoom"; // 'Zoom', 'Webinar', 'Live'
    public string EventDate { get; set; } = string.Empty; // "yyyy-MM-dd"
    public string EventTime { get; set; } = string.Empty; // "HH:mm"
    public string Link { get; set; } = string.Empty;
    public bool IsActive { get; set; } = true;
    public bool IsRegistered { get; set; }
    public int RegisteredCount { get; set; }
    public bool IsLiveNow { get; set; }
}


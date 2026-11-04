namespace TadierBot.WebApi.DTOs.Event;

/// <summary>
/// Admin panel orqali tadbirni tahrirlash so'rovi
/// </summary>
public class EventUpdateRequest
{
    public string? InitData { get; set; }
    public string Title { get; set; } = string.Empty;
    public string? Description { get; set; }
    public string EventType { get; set; } = "Zoom"; // 'Zoom', 'Webinar', 'Live'
    public string EventDate { get; set; } = string.Empty; // "yyyy-MM-dd"
    public string EventTime { get; set; } = string.Empty; // "HH:mm"
    public string Link { get; set; } = string.Empty;
    public bool IsActive { get; set; } = true;
}


namespace TadierBot.WebApi.DTOs.Event;

/// <summary>
/// Admin panel orqali yangi tadbir / jonli dars e'lon qilish so'rovi
/// </summary>
public class EventCreateRequest
{
    public string? InitData { get; set; }
    public string Title { get; set; } = string.Empty;
    public string? Description { get; set; }
    public string EventType { get; set; } = "Zoom"; // 'Zoom', 'Webinar', 'Live'
    public string EventDate { get; set; } = string.Empty; // "yyyy-MM-dd"
    public string EventTime { get; set; } = string.Empty; // "HH:mm"
    public string Link { get; set; } = string.Empty;
}


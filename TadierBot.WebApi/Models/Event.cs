namespace TadierBot.WebApi.Models;

public class Event
{
    public int Id { get; set; }
    public string Title { get; set; } = string.Empty;
    public string? Description { get; set; }
    public string EventType { get; set; } = "Zoom"; // 'Zoom', 'Webinar', 'Live'
    public DateTime EventDate { get; set; }
    public TimeSpan EventTime { get; set; }
    public string Link { get; set; } = string.Empty;
    public bool IsActive { get; set; } = true;
    public DateTime CreatedAt { get; set; } = DateTime.UtcNow;
    public DateTime? UpdatedAt { get; set; }
}


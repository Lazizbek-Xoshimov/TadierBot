namespace TadierBot.WebApi.DTOs.Event;

/// <summary>
/// Qatnashuvchilar umumiy soni va ro'yxati
/// </summary>
public class EventParticipantsResponse
{
    public int TotalCount { get; set; }
    public List<EventParticipantDto> Participants { get; set; } = new();
}


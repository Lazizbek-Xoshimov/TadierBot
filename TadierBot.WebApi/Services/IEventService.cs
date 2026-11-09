using TadierBot.WebApi.DTOs.Event;

namespace TadierBot.WebApi.Services;

public interface IEventService
{
    // 1. O'quvchilar ko'rinishi
    Task<IReadOnlyList<EventDto>> GetUpcomingEventsAsync(long? telegramId = null);
    Task<(bool Success, string Message)> RegisterForEventAsync(int eventId, long telegramId);
    Task<(bool Success, string Message)> UnregisterFromEventAsync(int eventId, long telegramId);

    // 2. Admin boshqaruvi
    Task<IReadOnlyList<EventDto>> GetAllForAdminAsync(string? search = null);
    Task<EventDto?> GetByIdAsync(int id);
    Task<EventDto> CreateAsync(EventCreateRequest request);
    Task<bool> UpdateAsync(int id, EventUpdateRequest request);
    Task<bool> DeleteAsync(int id);

    // 3. Qatnashuvchilar monitoringi
    Task<EventParticipantsResponse> GetParticipantsOverviewAsync(int? eventId = null);
}


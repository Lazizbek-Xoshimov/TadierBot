using TadierBot.WebApi.DTOs.Event;
using TadierBot.WebApi.Models;

namespace TadierBot.WebApi.Repositories;

public interface IEventRepository
{
    // 1. Admin CRUD (Boshqaruv paneli)
    Task<int> AddAsync(Event ev);
    Task<bool> UpdateAsync(Event ev);
    Task<bool> DeleteAsync(int id);
    Task<Event?> GetByIdAsync(int id);
    Task<IEnumerable<EventWithMeta>> GetAllForAdminAsync(string? search = null);

    // 2. Foydalanuvchilar ko'rinishi (Kelgusi tadbirlar)
    Task<IEnumerable<EventWithMeta>> GetUpcomingEventsAsync(long? telegramId = null);

    // 3. Darsga yozilish
    Task<bool> RegisterUserAsync(int eventId, long telegramId);
    Task<bool> UnregisterUserAsync(int eventId, long telegramId);
    Task<bool> IsUserRegisteredAsync(int eventId, long telegramId);

    // 4. Qatnashuvchilar monitoringi
    Task<int> GetTotalParticipantsCountAsync();
    Task<IEnumerable<EventParticipantDto>> GetParticipantsAsync(int? eventId = null);
}


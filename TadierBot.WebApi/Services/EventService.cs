using TadierBot.WebApi.DTOs.Event;
using TadierBot.WebApi.Models;
using TadierBot.WebApi.Repositories;

namespace TadierBot.WebApi.Services;

public class EventService : IEventService
{
    private readonly IEventRepository _eventRepository;
    private readonly ILogger<EventService> _logger;

    public EventService(
        IEventRepository eventRepository,
        ILogger<EventService> logger)
    {
        _eventRepository = eventRepository;
        _logger = logger;
    }

    // ==========================================
    // 1. O'quvchilar ko'rinishi
    // ==========================================

    public async Task<IReadOnlyList<EventDto>> GetUpcomingEventsAsync(long? telegramId = null)
    {
        var events = await _eventRepository.GetUpcomingEventsAsync(telegramId);
        return events.Select(MapToDto).ToList();
    }

    public async Task<(bool Success, string Message)> RegisterForEventAsync(int eventId, long telegramId)
    {
        var existingEvent = await _eventRepository.GetByIdAsync(eventId);
        if (existingEvent == null || !existingEvent.IsActive)
        {
            return (false, "Ushbu tadbir topilmadi yoki bekor qilingan.");
        }

        bool isAlreadyRegistered = await _eventRepository.IsUserRegisteredAsync(eventId, telegramId);
        if (isAlreadyRegistered)
        {
            return (true, "Siz allaqachon ushbu tadbirga yozilgansiz!");
        }

        bool registered = await _eventRepository.RegisterUserAsync(eventId, telegramId);
        if (registered)
        {
            _logger.LogInformation("Foydalanuvchi {TelegramId} tadbir {EventId} ga yozildi.", telegramId, eventId);
            return (true, "Siz tadbir uchun muvaffaqiyatli yozib qo'yildingiz!");
        }

        return (true, "Siz allaqachon ushbu tadbirga yozilgansiz!");
    }

    public async Task<(bool Success, string Message)> UnregisterFromEventAsync(int eventId, long telegramId)
    {
        bool isRegistered = await _eventRepository.IsUserRegisteredAsync(eventId, telegramId);
        if (!isRegistered)
        {
            return (false, "Siz ushbu tadbirga yozilmagansiz.");
        }

        bool deleted = await _eventRepository.UnregisterUserAsync(eventId, telegramId);
        if (deleted)
        {
            _logger.LogInformation("Foydalanuvchi {TelegramId} tadbir {EventId} dan ro'yxatdan o'tishni bekor qildi.", telegramId, eventId);
            return (true, "Tadbirga qatnashish muvaffaqiyatli bekor qilindi.");
        }

        return (false, "Bekor qilishda xatolik yuz berdi.");
    }

    // ==========================================
    // 2. Admin boshqaruvi
    // ==========================================

    public async Task<IReadOnlyList<EventDto>> GetAllForAdminAsync(string? search = null)
    {
        var events = await _eventRepository.GetAllForAdminAsync(search);
        return events.Select(MapToDto).ToList();
    }

    public async Task<EventDto?> GetByIdAsync(int id)
    {
        var ev = await _eventRepository.GetByIdAsync(id);
        if (ev == null)
            return null;

        var withMeta = new EventWithMeta
        {
            Id = ev.Id,
            Title = ev.Title,
            Description = ev.Description,
            EventType = ev.EventType,
            EventDate = ev.EventDate,
            EventTime = ev.EventTime,
            Link = ev.Link,
            IsActive = ev.IsActive,
            CreatedAt = ev.CreatedAt,
            UpdatedAt = ev.UpdatedAt,
            RegisteredCount = 0,
            IsRegistered = false
        };

        return MapToDto(withMeta);
    }

    public async Task<EventDto> CreateAsync(EventCreateRequest request)
    {
        ValidateEventData(request.Title, request.EventType, request.EventDate, request.EventTime, request.Link);

        var eventDate = DateTime.Parse(request.EventDate);
        var eventTime = TimeSpan.Parse(request.EventTime);

        var newEvent = new Event
        {
            Title = request.Title.Trim(),
            Description = string.IsNullOrWhiteSpace(request.Description) ? null : request.Description.Trim(),
            EventType = NormalizeEventType(request.EventType),
            EventDate = eventDate.Date,
            EventTime = eventTime,
            Link = request.Link.Trim(),
            IsActive = true,
            CreatedAt = DateTime.UtcNow
        };

        int id = await _eventRepository.AddAsync(newEvent);
        newEvent.Id = id;

        _logger.LogInformation("Yangi tadbir e'lon qilindi: {Title} (ID: {Id})", newEvent.Title, id);

        var withMeta = new EventWithMeta
        {
            Id = newEvent.Id,
            Title = newEvent.Title,
            Description = newEvent.Description,
            EventType = newEvent.EventType,
            EventDate = newEvent.EventDate,
            EventTime = newEvent.EventTime,
            Link = newEvent.Link,
            IsActive = newEvent.IsActive,
            CreatedAt = newEvent.CreatedAt,
            RegisteredCount = 0,
            IsRegistered = false
        };

        return MapToDto(withMeta);
    }

    public async Task<bool> UpdateAsync(int id, EventUpdateRequest request)
    {
        var existing = await _eventRepository.GetByIdAsync(id);
        if (existing == null)
        {
            throw new ArgumentException("Bunday tadbir topilmadi.");
        }

        ValidateEventData(request.Title, request.EventType, request.EventDate, request.EventTime, request.Link);

        var eventDate = DateTime.Parse(request.EventDate);
        var eventTime = TimeSpan.Parse(request.EventTime);

        existing.Title = request.Title.Trim();
        existing.Description = string.IsNullOrWhiteSpace(request.Description) ? null : request.Description.Trim();
        existing.EventType = NormalizeEventType(request.EventType);
        existing.EventDate = eventDate.Date;
        existing.EventTime = eventTime;
        existing.Link = request.Link.Trim();
        existing.IsActive = request.IsActive;

        return await _eventRepository.UpdateAsync(existing);
    }

    public async Task<bool> DeleteAsync(int id)
    {
        return await _eventRepository.DeleteAsync(id);
    }

    // ==========================================
    // 3. Qatnashuvchilar monitoringi
    // ==========================================

    public async Task<EventParticipantsResponse> GetParticipantsOverviewAsync(int? eventId = null)
    {
        int totalCount = await _eventRepository.GetTotalParticipantsCountAsync();
        var participants = await _eventRepository.GetParticipantsAsync(eventId);

        return new EventParticipantsResponse
        {
            TotalCount = totalCount,
            Participants = participants.ToList()
        };
    }

    // ==========================================
    // Yordamchi metodlar (Mapping, Validatsiya, Live)
    // ==========================================

    private static EventDto MapToDto(EventWithMeta ev)
    {
        return new EventDto
        {
            Id = ev.Id,
            Title = ev.Title,
            Description = ev.Description,
            EventType = ev.EventType,
            EventDate = ev.EventDate.ToString("yyyy-MM-dd"),
            EventTime = $"{(int)ev.EventTime.TotalHours:D2}:{ev.EventTime.Minutes:D2}",
            Link = ev.Link,
            IsActive = ev.IsActive,
            IsRegistered = ev.IsRegistered,
            RegisteredCount = ev.RegisteredCount,
            IsLiveNow = CheckIfLiveNow(ev.EventDate, ev.EventTime)
        };
    }

    private static bool CheckIfLiveNow(DateTime eventDate, TimeSpan eventTime)
    {
        // O'zbekiston (Toshkent, UTC+5) vaqti
        var nowTashkent = DateTime.UtcNow.AddHours(5);
        var eventStart = eventDate.Date.Add(eventTime);

        // Dars boshlanishiga 15 daqiqa qolganidan boshlab, boshlanganidan keyin 2 soatgacha efirda hisoblanadi
        var windowStart = eventStart.AddMinutes(-15);
        var windowEnd = eventStart.AddHours(2);

        return nowTashkent >= windowStart && nowTashkent <= windowEnd;
    }

    private static string NormalizeEventType(string type)
    {
        if (string.Equals(type, "Webinar", StringComparison.OrdinalIgnoreCase)) return "Webinar";
        if (string.Equals(type, "Live", StringComparison.OrdinalIgnoreCase)) return "Live";
        return "Zoom";
    }

    private static void ValidateEventData(string title, string eventType, string eventDate, string eventTime, string link)
    {
        if (string.IsNullOrWhiteSpace(title) || title.Trim().Length < 3)
        {
            throw new ArgumentException("Dars mavzusi kamida 3 ta belgidan iborat bo'lishi kerak.");
        }

        if (!DateTime.TryParse(eventDate, out _))
        {
            throw new ArgumentException("Sana noto'g'ri kiritilgan. Format: yyyy-MM-dd");
        }

        if (!TimeSpan.TryParse(eventTime, out _))
        {
            throw new ArgumentException("Vaqt noto'g'ri kiritilgan. Format: HH:mm");
        }

        if (string.IsNullOrWhiteSpace(link) || (!link.StartsWith("http://", StringComparison.OrdinalIgnoreCase) && !link.StartsWith("https://", StringComparison.OrdinalIgnoreCase)))
        {
            throw new ArgumentException("Dars havolasi to'g'ri URL bo'lishi kerak (https:// bilan boshlanishi shart).");
        }
    }
}

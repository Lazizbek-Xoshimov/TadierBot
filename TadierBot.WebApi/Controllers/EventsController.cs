using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Options;
using TadierBot.WebApi.Configurations;
using TadierBot.WebApi.DTOs.Event;
using TadierBot.WebApi.Repositories.Concrete;
using TadierBot.WebApi.Services;

namespace TadierBot.WebApi.Controllers;

[Route("api/[controller]")]
public class EventsController : BaseController
{
    private readonly IEventService _eventService;
    private readonly ILogger<EventsController> _logger;

    public EventsController(
        IEventService eventService,
        IAdminRepository adminRepository,
        IOptions<BotConfiguration> botConfig,
        ILogger<EventsController> logger)
        : base(adminRepository, botConfig)
    {
        _eventService = eventService;
        _logger = logger;
    }

    // ==========================================
    // 1. Foydalanuvchilar (O'quvchilar) uchun
    // ==========================================

    /// <summary>
    /// Foydalanuvchilar uchun bo'lajak jonli darslar va tadbirlar ro'yxatini olish
    /// URL: GET /api/events
    /// </summary>
    [HttpGet]
    public async Task<IActionResult> GetUpcomingEvents(
        [FromHeader(Name = "X-Telegram-Init-Data")] string? initDataHeader,
        [FromQuery] string? initData)
    {
        long? telegramId = null;
        string? rawInitData = !string.IsNullOrWhiteSpace(initDataHeader) ? initDataHeader : initData;

        if (!string.IsNullOrWhiteSpace(rawInitData) && ValidateTelegramInitData(rawInitData, out var user) && user != null)
        {
            telegramId = user.Id;
        }

        var events = await _eventService.GetUpcomingEventsAsync(telegramId);
        return Ok(events);
    }

    /// <summary>
    /// O'quvchining tadbirga / darsga yozilishi
    /// URL: POST /api/events/register
    /// </summary>
    [HttpPost("register")]
    public async Task<IActionResult> RegisterForEvent(
        [FromHeader(Name = "X-Telegram-Init-Data")] string? initDataHeader,
        [FromBody] EventRegisterRequest request)
    {
        string? rawInitData = !string.IsNullOrWhiteSpace(request.InitData) ? request.InitData : initDataHeader;

        if (!ValidateTelegramInitData(rawInitData, out var user) || user == null)
        {
            return Unauthorized(new { Message = "Telegram avtorizatsiyasi tasdiqlanmadi." });
        }

        var (success, message) = await _eventService.RegisterForEventAsync(request.EventId, user.Id);
        return Ok(new
        {
            Success = success,
            Message = message
        });
    }

    // ==========================================
    // 2. Admin Boshqaruv Paneli uchun
    // ==========================================

    /// <summary>
    /// Admin uchun barcha tadbirlar ro'yxatini olish va qidirish
    /// URL: GET /api/events/admin?search=a1
    /// </summary>
    [HttpGet("admin")]
    public async Task<IActionResult> GetAllForAdmin(
        [FromHeader(Name = "X-Telegram-Init-Data")] string? initDataHeader,
        [FromQuery] string? initData,
        [FromQuery] string? search = null)
    {
        string? rawInitData = !string.IsNullOrWhiteSpace(initDataHeader) ? initDataHeader : initData;
        if (!await AuthorizeAdminAsync(rawInitData))
        {
            return StatusCode(403, new { Message = "Admin huquqi talab qilinadi." });
        }

        var events = await _eventService.GetAllForAdminAsync(search);
        return Ok(events);
    }

    /// <summary>
    /// Admin uchun qatnashuvchilar monitoringi (umumiy soni va ro'yxati)
    /// URL: GET /api/events/participants?eventId=1
    /// </summary>
    [HttpGet("participants")]
    public async Task<IActionResult> GetParticipants(
        [FromHeader(Name = "X-Telegram-Init-Data")] string? initDataHeader,
        [FromQuery] string? initData,
        [FromQuery] int? eventId = null)
    {
        string? rawInitData = !string.IsNullOrWhiteSpace(initDataHeader) ? initDataHeader : initData;
        if (!await AuthorizeAdminAsync(rawInitData))
        {
            return StatusCode(403, new { Message = "Admin huquqi talab qilinadi." });
        }

        var response = await _eventService.GetParticipantsOverviewAsync(eventId);
        return Ok(response);
    }

    /// <summary>
    /// Bitta tadbir ma'lumotlarini ID bo'yicha olish (tahrirlash uchun)
    /// URL: GET /api/events/{id}
    /// </summary>
    [HttpGet("{id:int}")]
    public async Task<IActionResult> GetEventById(int id)
    {
        var ev = await _eventService.GetByIdAsync(id);
        if (ev == null)
        {
            return NotFound(new { Message = "Tadbir topilmadi." });
        }

        return Ok(ev);
    }

    /// <summary>
    /// Yangi tadbir / jonli dars e'lon qilish (Faqat admin uchun)
    /// URL: POST /api/events
    /// </summary>
    [HttpPost]
    public async Task<IActionResult> CreateEvent(
        [FromHeader(Name = "X-Telegram-Init-Data")] string? initDataHeader,
        [FromBody] EventCreateRequest request)
    {
        string? rawInitData = !string.IsNullOrWhiteSpace(request.InitData) ? request.InitData : initDataHeader;
        if (!await AuthorizeAdminAsync(rawInitData))
        {
            return StatusCode(403, new { Message = "Admin huquqi talab qilinadi." });
        }

        try
        {
            var created = await _eventService.CreateAsync(request);
            return CreatedAtAction(nameof(GetEventById), new { id = created.Id }, created);
        }
        catch (ArgumentException ex)
        {
            return BadRequest(new { Message = ex.Message });
        }
    }

    /// <summary>
    /// Mavjud tadbirni tahrirlash (Faqat admin uchun)
    /// URL: PUT /api/events/{id}
    /// </summary>
    [HttpPut("{id:int}")]
    public async Task<IActionResult> UpdateEvent(
        int id,
        [FromHeader(Name = "X-Telegram-Init-Data")] string? initDataHeader,
        [FromBody] EventUpdateRequest request)
    {
        string? rawInitData = !string.IsNullOrWhiteSpace(request.InitData) ? request.InitData : initDataHeader;
        if (!await AuthorizeAdminAsync(rawInitData))
        {
            return StatusCode(403, new { Message = "Admin huquqi talab qilinadi." });
        }

        try
        {
            bool updated = await _eventService.UpdateAsync(id, request);
            if (!updated)
            {
                return NotFound(new { Message = "Tadbir topilmadi." });
            }

            return Ok(new { Message = "Tadbir muvaffaqiyatli yangilandi." });
        }
        catch (ArgumentException ex)
        {
            return BadRequest(new { Message = ex.Message });
        }
    }

    /// <summary>
    /// Tadbirni o'chirish (Faqat admin uchun)
    /// URL: DELETE /api/events/{id}
    /// </summary>
    [HttpDelete("{id:int}")]
    public async Task<IActionResult> DeleteEvent(
        int id,
        [FromHeader(Name = "X-Telegram-Init-Data")] string? initDataHeader,
        [FromQuery] string? initData)
    {
        string? rawInitData = !string.IsNullOrWhiteSpace(initDataHeader) ? initDataHeader : initData;
        if (!await AuthorizeAdminAsync(rawInitData))
        {
            return StatusCode(403, new { Message = "Admin huquqi talab qilinadi." });
        }

        bool deleted = await _eventService.DeleteAsync(id);
        if (!deleted)
        {
            return NotFound(new { Message = "Tadbir topilmadi." });
        }

        return Ok(new { Message = "Tadbir muvaffaqiyatli o'chirildi." });
    }
}

using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Options;
using TadierBot.WebApi.Configurations;
using TadierBot.WebApi.DTOs.User;
using TadierBot.WebApi.DTOs.Word;
using TadierBot.WebApi.Repositories.Concrete;
using TadierBot.WebApi.Services;

namespace TadierBot.WebApi.Controllers;

[Route("api/[controller]")]
public class WordsController : BaseController
{
    private readonly IWordService _wordService;
    private readonly ILogger<WordsController> _logger;

    public WordsController(
        IWordService wordService,
        IAdminRepository adminRepository,
        IOptions<BotConfiguration> botConfig,
        ILogger<WordsController> logger)
        : base(adminRepository, botConfig)
    {
        _wordService = wordService;
        _logger = logger;
    }

    // ==========================================
    // 1. Dashboard & Trenajyor 
    // ==========================================

    /// <summary>
    /// Bosh sahifadagi "Kun so'zi" (Wort des Tages) kartasi uchun
    /// URL: GET /api/words/daily
    /// </summary>
    [HttpGet("daily")]
    public async Task<IActionResult> GetDailyWord()
    {
        var dailyWord = await _wordService.GetDailyWordAsync();
        if (dailyWord == null)
        {
            return NotFound(new { Message = "Kun so'zi topilmadi." });
        }

        return Ok(dailyWord);
    }

    /// <summary>
    /// Tanlangan daraja bo'yicha trenajyor flesh-kartochkalar to'plamini olish
    /// URL: GET /api/words/trainer?level=A1&count=10
    /// </summary>
    /// <summary>
    /// Tanlangan daraja va unit bo'yicha trenajyor flesh-kartochkalar to'plamini olish
    /// URL: GET /api/words/trainer?level=A1&unit=1&count=10
    /// </summary>
    [HttpGet("trainer")]
    public async Task<IActionResult> GetTrainerSession(
        [FromQuery] string level = "A1",
        [FromQuery] int? unit = null,
        [FromQuery] int count = 10)
    {
        var session = await _wordService.GetTrainerSessionAsync(level, unit, count);
        return Ok(session);
    }

    /// <summary>
    /// Tanlangan darajadagi mavjud unitlar ro'yxatini olish
    /// URL: GET /api/words/units?level=A1
    /// </summary>
    [HttpGet("units")]
    public async Task<IActionResult> GetUnits([FromQuery] string level = "A1")
    {
        var response = await _wordService.GetUnitsByLevelAsync(level);
        return Ok(response);
    }

    /// <summary>
    /// Foydalanuvchi kartochkaga javob berganda ("Bilaman" / "Yana takrorlash")
    /// URL: POST /api/words/answer
    /// </summary>
    [HttpPost("answer")]
    public async Task<IActionResult> AnswerWord([FromBody] WordAnswerRequest request)
    {
        if (string.IsNullOrWhiteSpace(request.InitData))
        {
            return BadRequest(new { Message = "initData talab qilinadi." });
        }

        if (!ValidateTelegramInitData(request.InitData, out var telegramUser) || telegramUser == null)
        {
            return Unauthorized(new { Message = "Telegram avtorizatsiyasi tasdiqlanmadi." });
        }

        try
        {
            var result = await _wordService.ProcessAnswerAsync(telegramUser.Id, request);
            return Ok(result);
        }
        catch (ArgumentException ex)
        {
            return NotFound(new { Message = ex.Message });
        }
    }

    /// <summary>
    /// Shaxsiy kabinetdagi lug'at statistikasi (Nechta so'z yodlandi / o'rganilmoqda)
    /// URL: POST /api/words/stats
    /// </summary>
    [HttpPost("stats")]
    public async Task<IActionResult> GetWordStats([FromBody] TelegramAuthRequest request)
    {
        if (string.IsNullOrWhiteSpace(request.InitData))
        {
            return BadRequest(new { Message = "initData talab qilinadi." });
        }

        if (!ValidateTelegramInitData(request.InitData, out var telegramUser) || telegramUser == null)
        {
            return Unauthorized(new { Message = "Telegram avtorizatsiyasi tasdiqlanmadi." });
        }

        var stats = await _wordService.GetWordStatsAsync(telegramUser.Id);
        return Ok(stats);
    }

    // ==========================================
    // 2. Admin Boshqaruv Paneli 
    // ==========================================

    /// <summary>
    /// Yangi so'z qo'shish (Faqat admin uchun)
    /// URL: POST /api/words
    /// </summary>
    [HttpPost]
    public async Task<IActionResult> CreateWord(
        [FromHeader(Name = "X-Telegram-Init-Data")] string? initData,
        [FromBody] WordCreateRequest request)
    {
        if (!await AuthorizeAdminAsync(initData))
        {
            return StatusCode(403, new { Message = "Ushbu amalni bajarish uchun Admin huquqi talab qilinadi." });
        }

        if (string.IsNullOrWhiteSpace(request.GermanWord) || string.IsNullOrWhiteSpace(request.UzbekTranslation))
        {
            return BadRequest(new { Message = "Nemischa so'z va uning tarjimasi kiritilishi shart." });
        }

        var createdWord = await _wordService.CreateWordAsync(request);
        return CreatedAtAction(nameof(GetWordById), new { id = createdWord.Id }, createdWord);
    }

    /// <summary>
    /// So'zni tahrirlash (Faqat admin uchun)
    /// URL: PUT /api/words/{id}
    /// </summary>
    [HttpPut("{id:int}")]
    public async Task<IActionResult> UpdateWord(
        int id,
        [FromHeader(Name = "X-Telegram-Init-Data")] string? initData,
        [FromBody] WordUpdateRequest request)
    {
        if (!await AuthorizeAdminAsync(initData))
        {
            return StatusCode(403, new { Message = "Admin huquqi talab qilinadi." });
        }

        if (id != request.Id)
        {
            return BadRequest(new { Message = "ID mos kelmadi." });
        }

        bool updated = await _wordService.UpdateWordAsync(request);
        if (!updated)
        {
            return NotFound(new { Message = "So'z topilmadi." });
        }

        return Ok(new { Message = "So'z muvaffaqiyatli yangilandi." });
    }

    /// <summary>
    /// So'zni o'chirish (Faqat admin uchun)
    /// URL: DELETE /api/words/{id}
    /// </summary>
    [HttpDelete("{id:int}")]
    public async Task<IActionResult> DeleteWord(
        int id,
        [FromHeader(Name = "X-Telegram-Init-Data")] string? initData)
    {
        if (!await AuthorizeAdminAsync(initData))
        {
            return StatusCode(403, new { Message = "Admin huquqi talab qilinadi." });
        }

        bool deleted = await _wordService.DeleteWordAsync(id);
        if (!deleted)
        {
            return NotFound(new { Message = "So'z topilmadi." });
        }

        return Ok(new { Message = "So'z o'chirildi." });
    }

    /// <summary>
    /// Bitta so'zni ID bo'yicha olish
    /// URL: GET /api/words/{id}
    /// </summary>
    [HttpGet("{id:int}")]
    public async Task<IActionResult> GetWordById(int id)
    {
        var word = await _wordService.GetWordByIdAsync(id);
        if (word == null)
        {
            return NotFound(new { Message = "So'z topilmadi." });
        }

        return Ok(word);
    }

    /// <summary>
    /// Admin panel uchun barcha so'zlar ro'yxatini sahifalab olish
    /// URL: GET /api/words?pageNumber=1&pageSize=10&search=buch
    /// </summary>
    [HttpGet]
    public async Task<IActionResult> GetPagedWords(
        [FromQuery] int pageNumber = 1,
        [FromQuery] int pageSize = 10,
        [FromQuery] string? search = null)
    {
        var words = await _wordService.GetPagedWordsAsync(pageNumber, pageSize, search);
        int total = await _wordService.GetTotalWordsCountAsync(search);

        return Ok(new
        {
            TotalCount = total,
            PageNumber = pageNumber,
            PageSize = pageSize,
            Items = words
        });
    }
}

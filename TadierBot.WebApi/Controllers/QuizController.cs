using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Options;
using TadierBot.WebApi.Configurations;
using TadierBot.WebApi.DTOs.Quiz;
using TadierBot.WebApi.Repositories.Concrete;
using TadierBot.WebApi.Services;

namespace TadierBot.WebApi.Controllers;

[Route("api/[controller]")]
public class QuizController : BaseController
{
    private readonly IQuizService _quizService;
    private readonly ILogger<QuizController> _logger;

    public QuizController(
        IQuizService quizService,
        IAdminRepository adminRepository,
        IOptions<BotConfiguration> botConfig,
        ILogger<QuizController> logger)
        : base(adminRepository, botConfig)
    {
        _quizService = quizService;
        _logger = logger;
    }

    // ==========================================
    // 1. Foydalanuvchi: 20 talik Daraja Testi
    // ==========================================

    /// <summary>
    /// 20 talik Daraja testini olish (10 ta Reading va 10 ta Listening)
    /// URL: GET /api/quiz/placement
    /// </summary>
    [HttpGet("placement")]
    public async Task<IActionResult> GetPlacementTest()
    {
        try
        {
            var testResponse = await _quizService.GetPlacementTestAsync();
            return Ok(testResponse);
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Daraja testini yuklashda xatolik yuz berdi.");
            return StatusCode(500, new { Message = "Test savollarini yuklashda xatolik yuz berdi." });
        }
    }

    /// <summary>
    /// Test javoblarini topshirish, daraja va ballni hisoblash
    /// URL: POST /api/quiz/submit
    /// </summary>
    [HttpPost("submit")]
    public async Task<IActionResult> SubmitPlacementTest(
        [FromHeader(Name = "X-Telegram-Init-Data")] string? initData,
        [FromBody] QuizSubmitRequest request)
    {
        long telegramId;

        // 1. Telegram orqali kirgan foydalanuvchini tekshirish
        if (ValidateTelegramInitData(initData, out var telegramUser) && telegramUser != null)
        {
            telegramId = telegramUser.Id;
        }
        else
        {
            // Brauzerda test qilish uchun fallback (agar initData bo'lmasa)
            _logger.LogWarning("Test topshirishda initData topilmadi, vaqtinchalik sinov rejimi qo'llanilmoqda.");
            return Unauthorized(new { Message = "Telegram avtorizatsiyasi tasdiqlanmadi." });
        }

        try
        {
            var result = await _quizService.SubmitPlacementTestAsync(telegramId, request);
            return Ok(result);
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Test javoblarini tekshirishda xatolik yuz berdi.");
            return StatusCode(500, new { Message = "Natijalarni hisoblashda xatolik yuz berdi." });
        }
    }

    // ==========================================
    // 2. Admin: Matn va Audio materiallar (QuizPassages)
    // ==========================================

    /// <summary>
    /// Yangi matn yoki audio material yaratish (Faqat admin uchun)
    /// URL: POST /api/quiz/passages
    /// </summary>
    [HttpPost("passages")]
    public async Task<IActionResult> CreatePassage(
        [FromHeader(Name = "X-Telegram-Init-Data")] string? initData,
        [FromBody] QuizPassageCreateRequest request)
    {
        if (!await AuthorizeAdminAsync(initData))
        {
            return StatusCode(403, new { Message = "Admin huquqi talab qilinadi." });
        }

        if (string.IsNullOrWhiteSpace(request.Title))
        {
            return BadRequest(new { Message = "Material sarlavhasi kiritilishi shart." });
        }

        var passage = await _quizService.CreatePassageAsync(request);
        return Ok(passage);
    }

    /// <summary>
    /// Barcha matn va audio materiallar ro'yxatini olish (Admin uchun)
    /// URL: GET /api/quiz/passages?type=Reading
    /// </summary>
    [HttpGet("passages")]
    public async Task<IActionResult> GetAllPassages([FromQuery] string? type = null)
    {
        var passages = await _quizService.GetAllPassagesAsync(type);
        return Ok(passages);
    }

    /// <summary>
    /// Materialni o'chirish (Faqat admin uchun)
    /// URL: DELETE /api/quiz/passages/{id}
    /// </summary>
    [HttpDelete("passages/{id:int}")]
    public async Task<IActionResult> DeletePassage(
        int id,
        [FromHeader(Name = "X-Telegram-Init-Data")] string? initData)
    {
        if (!await AuthorizeAdminAsync(initData))
        {
            return StatusCode(403, new { Message = "Admin huquqi talab qilinadi." });
        }

        bool deleted = await _quizService.DeletePassageAsync(id);
        if (!deleted)
        {
            return NotFound(new { Message = "Material topilmadi." });
        }

        return Ok(new { Message = "Material va unga tegishli savollar muvaffaqiyatli o'chirildi." });
    }

    /// <summary>
    /// Material faylini (yoki matnini) foydalanuvchining shaxsiy Telegram bot chatiga yuborish
    /// URL: POST /api/quiz/passages/{id}/send-to-bot
    /// </summary>
    [HttpPost("passages/{id:int}/send-to-bot")]
    public async Task<IActionResult> SendPassageToBot(
        int id,
        [FromHeader(Name = "X-Telegram-Init-Data")] string? initDataHeader,
        [FromQuery] string? initData)
    {
        string? rawInitData = !string.IsNullOrWhiteSpace(initDataHeader) ? initDataHeader : initData;
        if (string.IsNullOrWhiteSpace(rawInitData) || !ValidateTelegramInitData(rawInitData, out var user) || user == null)
        {
            return Unauthorized(new { Message = "Telegram avtorizatsiyasi tasdiqlanmadi." });
        }

        try
        {
            bool sent = await _quizService.SendPassageFileToBotAsync(user.Id, id);
            if (!sent)
            {
                return BadRequest(new { Message = "Faylni yuborib bo‘lmadi. Fayl serverda topilmadi." });
            }

            return Ok(new { Success = true, Message = "Fayl Telegram botingizga muvaffaqiyatli yuborildi!" });
        }
        catch (KeyNotFoundException)
        {
            return NotFound(new { Message = "Bunday material topilmadi." });
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Faylni botga yuborishda xatolik: passageId={PassageId}, userId={UserId}", id, user.Id);
            return StatusCode(500, new { Message = "Faylni botga yuborishda server xatoligi yuz berdi." });
        }
    }

    // ==========================================
    // 3. Admin: Savollar (QuizQuestions)
    // ==========================================

    /// <summary>
    /// Yangi test savoli qo'shish (Faqat admin uchun)
    /// URL: POST /api/quiz/questions
    /// </summary>
    [HttpPost("questions")]
    public async Task<IActionResult> CreateQuestion(
        [FromHeader(Name = "X-Telegram-Init-Data")] string? initData,
        [FromBody] QuizQuestionCreateRequest request)
    {
        if (!await AuthorizeAdminAsync(initData))
        {
            return StatusCode(403, new { Message = "Admin huquqi talab qilinadi." });
        }

        if (string.IsNullOrWhiteSpace(request.QuestionText))
        {
            return BadRequest(new { Message = "Savol matni kiritilishi shart." });
        }

        if (string.IsNullOrWhiteSpace(request.OptionA) || string.IsNullOrWhiteSpace(request.OptionB))
        {
            return BadRequest(new { Message = "Kamida ikkita variant (A va B) kiritilishi shart." });
        }

        var question = await _quizService.CreateQuestionAsync(request);
        return Ok(question);
    }

    /// <summary>
    /// Admin panel uchun barcha savollar ro'yxatini olish (Qidiruv bilan)
    /// URL: GET /api/quiz/admin/questions?search=berlin&level=A1&type=Reading
    /// </summary>
    [HttpGet("admin/questions")]
    public async Task<IActionResult> GetAllAdminQuestions(
        [FromQuery] string? search = null,
        [FromQuery] string? level = null,
        [FromQuery] string? type = null)
    {
        var questions = await _quizService.GetAllAdminQuestionsAsync(search, level, type);
        return Ok(questions);
    }

    /// <summary>
    /// Test savolini tahrirlash/yangilash (Faqat admin uchun)
    /// URL: PUT /api/quiz/questions/{id}
    /// </summary>
    [HttpPut("questions/{id:int}")]
    public async Task<IActionResult> UpdateQuestion(
        int id,
        [FromHeader(Name = "X-Telegram-Init-Data")] string? initData,
        [FromBody] QuizQuestionCreateRequest request)
    {
        if (!await AuthorizeAdminAsync(initData))
        {
            return StatusCode(403, new { Message = "Admin huquqi talab qilinadi." });
        }

        if (string.IsNullOrWhiteSpace(request.QuestionText))
        {
            return BadRequest(new { Message = "Savol matni kiritilishi shart." });
        }

        if (string.IsNullOrWhiteSpace(request.OptionA) || string.IsNullOrWhiteSpace(request.OptionB))
        {
            return BadRequest(new { Message = "Kamida ikkita variant (A va B) kiritilishi shart." });
        }

        bool updated = await _quizService.UpdateQuestionAsync(id, request);
        if (!updated)
        {
            return NotFound(new { Message = "Savol topilmadi." });
        }

        return Ok(new { Message = "Savol muvaffaqiyatli yangilandi." });
    }

    /// <summary>
    /// Savolni o'chirish (Faqat admin uchun)
    /// URL: DELETE /api/quiz/questions/{id}
    /// </summary>
    [HttpDelete("questions/{id:int}")]
    public async Task<IActionResult> DeleteQuestion(
        int id,
        [FromHeader(Name = "X-Telegram-Init-Data")] string? initData)
    {
        if (!await AuthorizeAdminAsync(initData))
        {
            return StatusCode(403, new { Message = "Admin huquqi talab qilinadi." });
        }

        bool deleted = await _quizService.DeleteQuestionAsync(id);
        if (!deleted)
        {
            return NotFound(new { Message = "Savol topilmadi." });
        }

        return Ok(new { Message = "Savol muvaffaqiyatli o'chirildi." });
    }

    // ==========================================
    // 4. Audio yuklash (Fayl upload)
    // ==========================================

    /// <summary>
    /// Listening uchun audio (.mp3) fayl yuklash (Faqat admin uchun)
    /// URL: POST /api/quiz/upload-audio
    /// </summary>
    [HttpPost("upload-audio")]
    public async Task<IActionResult> UploadAudio(
        [FromHeader(Name = "X-Telegram-Init-Data")] string? initData,
        IFormFile file)
    {
        if (!await AuthorizeAdminAsync(initData))
        {
            return StatusCode(403, new { Message = "Admin huquqi talab qilinadi." });
        }

        try
        {
            string audioUrl = await _quizService.SaveAudioFileAsync(file);
            return Ok(new { AudioUrl = audioUrl, Message = "Audio muvaffaqiyatli yuklandi." });
        }
        catch (ArgumentException ex)
        {
            return BadRequest(new { Message = ex.Message });
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Audio faylni saqlashda xatolik yuz berdi.");
            return StatusCode(500, new { Message = "Faylni saqlashda server xatoligi yuz berdi." });
        }
    }

    /// <summary>
    /// Lesen uchun matn (.txt) fayl yuklash (Faqat admin uchun)
    /// URL: POST /api/quiz/upload-text
    /// </summary>
    [HttpPost("upload-text")]
    public async Task<IActionResult> UploadText(
        [FromHeader(Name = "X-Telegram-Init-Data")] string? initData,
        IFormFile file)
    {
        if (!await AuthorizeAdminAsync(initData))
        {
            return StatusCode(403, new { Message = "Admin huquqi talab qilinadi." });
        }

        try
        {
            var result = await _quizService.SaveTextFileAsync(file);
            return Ok(new 
            { 
                FileUrl = result.FileUrl, 
                FileName = result.FileName, 
                Content = result.Content, 
                Message = "Matn fayli muvaffaqiyatli yuklandi." 
            });
        }
        catch (ArgumentException ex)
        {
            return BadRequest(new { Message = ex.Message });
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Matn faylini saqlashda xatolik yuz berdi.");
            return StatusCode(500, new { Message = "Faylni saqlashda server xatoligi yuz berdi." });
        }
    }
}


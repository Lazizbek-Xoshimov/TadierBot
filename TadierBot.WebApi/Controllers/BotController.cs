using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Options;
using Telegram.Bot;
using Telegram.Bot.Types;
using TadierBot.WebApi.Configurations;
using TadierBot.WebApi.Services;

namespace TadierBot.WebApi.Controllers;

[ApiController]
[Route("api/[controller]")]
public class BotController : ControllerBase
{
    private readonly ITelegramBotClient _botClient;
    private readonly IUpdateHandlerService _updateHandlerService;
    private readonly BotConfiguration _botConfig;
    private readonly ILogger<BotController> _logger;

    public BotController(
        ITelegramBotClient botClient,
        IUpdateHandlerService updateHandlerService,
        IOptions<BotConfiguration> botConfig,
        ILogger<BotController> logger)
    {
        _botClient = botClient;
        _updateHandlerService = updateHandlerService;
        _botConfig = botConfig.Value;
        _logger = logger;
    }

    [HttpPost("webhook")]
    public async Task<IActionResult> Post(
        [FromBody] Update update,
        [FromHeader(Name = "X-Telegram-Bot-Api-Secret-Token")] string? secretToken,
        CancellationToken cancellationToken)
    {
        // Xavfsizlik: faqat Telegram serveridan kelgan so'rovlarni qabul qilish
        if (!string.IsNullOrEmpty(_botConfig.SecretToken) && secretToken != _botConfig.SecretToken)
        {
            _logger.LogWarning("Noto'g'ri SecretToken bilan webhook so'rovi keldi.");
            return Forbid();
        }

        await _updateHandlerService.HandleUpdateAsync(update, cancellationToken);
        return Ok();
    }

    // Webhook'ni Telegram'ga avtomatik o'rnatish uchun yordamchi GET endpoint
    [HttpGet("set-webhook")]
    public async Task<IActionResult> SetWebhook(CancellationToken cancellationToken)
    {
        if (string.IsNullOrWhiteSpace(_botConfig.WebhookUrl))
        {
            return BadRequest("appsettings.json da WebhookUrl ko'rsatilmagan.");
        }

        string webhookEndpoint = $"{_botConfig.WebhookUrl.TrimEnd('/')}/api/bot/webhook";

        await _botClient.SetWebhook(
            url: webhookEndpoint,
            secretToken: string.IsNullOrWhiteSpace(_botConfig.SecretToken) ? null : _botConfig.SecretToken,
            cancellationToken: cancellationToken);

        return Ok(new
        {
            Message = "Webhook muvaffaqiyatli o'rnatildi!",
            WebhookUrl = webhookEndpoint
        });
    }

    // Webhook holatini tekshirish
    [HttpGet("webhook-info")]
    public async Task<IActionResult> GetWebhookInfo(CancellationToken cancellationToken)
    {
        var info = await _botClient.GetWebhookInfo(cancellationToken);
        return Ok(info);
    }
}


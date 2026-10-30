using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using Telegram.Bot;
using Telegram.Bot.Polling;
using Telegram.Bot.Types;
using Telegram.Bot.Types.Enums;
using TadierBot.WebApi.Services.Concrete;

namespace TadierBot.WebApi.BackgroundServices;

public static class PollingDiagnostics
{
    public static int UpdatesReceivedCount { get; set; } = 0;
    public static string? LastUpdateInfo { get; set; }
    public static string? LastError { get; set; }
    public static DateTime? LastUpdateTime { get; set; }
    public static bool IsRunning { get; set; } = false;
}

public class TelegramPollingService : BackgroundService
{
    private readonly ITelegramBotClient _botClient;
    private readonly IServiceProvider _serviceProvider;
    private readonly ILogger<TelegramPollingService> _logger;

    public TelegramPollingService(
        ITelegramBotClient botClient,
        IServiceProvider serviceProvider,
        ILogger<TelegramPollingService> logger)
    {
        _botClient = botClient;
        _serviceProvider = serviceProvider;
        _logger = logger;
    }

    protected override async Task ExecuteAsync(CancellationToken stoppingToken)
    {
        PollingDiagnostics.IsRunning = true;
        _logger.LogInformation("Telegram Polling xizmati ishga tushmoqda...");

        // 1. Eski webhookni tozalash
        try
        {
            await _botClient.DeleteWebhook(cancellationToken: stoppingToken);
            _logger.LogInformation("Webhook muvaffaqiyatli tozalandi. Polling faol.");
        }
        catch (Exception ex)
        {
            PollingDiagnostics.LastError = "Webhook o'chirish xatosi: " + ex.Message;
            _logger.LogWarning(ex, "Webhookni tozalashda xatolik.");
        }

        // 2. Qabul qilinadigan yangilanish turlari
        var receiverOptions = new ReceiverOptions
        {
            AllowedUpdates = [UpdateType.Message, UpdateType.CallbackQuery],
            DropPendingUpdates = false
        };

        // 3. Uzluksiz xabarlarni qabul qilish sikli
        while (!stoppingToken.IsCancellationRequested)
        {
            try
            {
                await _botClient.ReceiveAsync(
                    updateHandler: HandleUpdateAsync,
                    errorHandler: HandlePollingErrorAsync,
                    receiverOptions: receiverOptions,
                    cancellationToken: stoppingToken);
            }
            catch (Exception ex) when (!stoppingToken.IsCancellationRequested)
            {
                PollingDiagnostics.LastError = "ReceiveAsync loop xatosi: " + ex.Message;
                _logger.LogError(ex, "Pollingda uzilish yuz berdi. 3 soniyadan so'ng qayta ulanadi...");
                await Task.Delay(3000, stoppingToken);
            }
        }

        PollingDiagnostics.IsRunning = false;
    }

    private async Task HandleUpdateAsync(ITelegramBotClient botClient, Update update, CancellationToken cancellationToken)
    {
        PollingDiagnostics.UpdatesReceivedCount++;
        PollingDiagnostics.LastUpdateTime = DateTime.UtcNow;
        PollingDiagnostics.LastUpdateInfo = $"Id: {update.Id}, Turi: {update.Type}, Matn: {update.Message?.Text}";

        try
        {
            using var scope = _serviceProvider.CreateScope();
            var updateHandler = scope.ServiceProvider.GetRequiredService<IUpdateHandlerService>();
            await updateHandler.HandleUpdateAsync(update, cancellationToken);
        }
        catch (Exception ex)
        {
            PollingDiagnostics.LastError = $"Update {update.Id} xatosi: " + ex.ToString();
            _logger.LogError(ex, "Xabarni qayta ishlashda xatolik: UpdateId: {UpdateId}", update.Id);
        }
    }

    private Task HandlePollingErrorAsync(ITelegramBotClient botClient, Exception exception, CancellationToken cancellationToken)
    {
        PollingDiagnostics.LastError = "Telegram API xatosi: " + exception.ToString();
        _logger.LogError(exception, "Telegram Polling API xatosi: {Message}", exception.Message);
        return Task.CompletedTask;
    }
}

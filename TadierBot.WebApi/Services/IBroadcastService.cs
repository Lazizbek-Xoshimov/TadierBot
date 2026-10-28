using Telegram.Bot.Types;

namespace TadierBot.WebApi.Services;

public interface IBroadcastService
{
    bool IsAdminBroadcasting(long telegramId);
    Task StartBroadcastAsync(long chatId, long telegramId, CancellationToken cancellationToken);
    Task HandleIncomingMessageAsync(Message message, CancellationToken cancellationToken);
    Task HandleCallbackAsync(CallbackQuery callbackQuery, CancellationToken cancellationToken);
    Task CancelBroadcastAsync(long chatId, long telegramId, CancellationToken cancellationToken);
}


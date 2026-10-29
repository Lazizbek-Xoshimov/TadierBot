using Telegram.Bot.Types;

namespace TadierBot.WebApi.Services;

public interface ISearchService
{
    bool IsUserSearching(long telegramId);
    Task StartSearchPromptAsync(long chatId, long telegramId, CancellationToken cancellationToken);
    Task HandleSearchInputAsync(long chatId, long telegramId, string query, CancellationToken cancellationToken);
    Task HandleCallbackAsync(CallbackQuery callbackQuery, CancellationToken cancellationToken);
    Task CancelSearchAsync(long chatId, long telegramId, CancellationToken cancellationToken);
}


using Telegram.Bot.Types;

namespace TadierBot.WebApi.Services;

public interface IResourceService
{
    bool IsAdminAddingResource(long telegramId);
    Task StartAddResourceAsync(long chatId, long telegramId, CancellationToken cancellationToken);
    Task HandleTextInputAsync(long chatId, long telegramId, string text, CancellationToken cancellationToken);
    Task HandleCallbackAsync(CallbackQuery callbackQuery, CancellationToken cancellationToken);
    Task CancelAddResourceAsync(long chatId, long telegramId, CancellationToken cancellationToken);

    // Pagination metodlari
    Task ShowPagedResourcesAsync(long chatId, int? messageId, int pageNumber, CancellationToken cancellationToken);
    Task ShowResourceDetailsAsync(long chatId, int messageId, int resourceId, int returnPage, CancellationToken cancellationToken);
}

using Telegram.Bot.Types;

namespace TadierBot.WebApi.Services;

public interface ICategoryService
{
    Task ShowCategoriesAsync(long chatId, int? messageId, CancellationToken cancellationToken);
    Task ShowCategoryResourcesAsync(long chatId, int messageId, int categoryId, int pageNumber, CancellationToken cancellationToken);
    Task ShowResourceDetailsAsync(long chatId, int messageId, int categoryId, int resourceId, int returnPage, CancellationToken cancellationToken);
    Task HandleCallbackAsync(CallbackQuery callbackQuery, CancellationToken cancellationToken);
}


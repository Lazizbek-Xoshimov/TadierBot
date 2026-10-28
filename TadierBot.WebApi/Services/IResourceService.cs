using Telegram.Bot.Types;

namespace TadierBot.WebApi.Services;

public interface IResourceService
{
    // Manba qo'shish (FSM)
    bool IsAdminAddingResource(long telegramId);
    Task StartAddResourceAsync(long chatId, long telegramId, CancellationToken cancellationToken);
    Task HandleTextInputAsync(long chatId, long telegramId, string text, CancellationToken cancellationToken);
    Task HandleCallbackAsync(CallbackQuery callbackQuery, CancellationToken cancellationToken);
    Task CancelAddResourceAsync(long chatId, long telegramId, CancellationToken cancellationToken);

    // Foydalanuvchi uchun Pagination
    Task ShowPagedResourcesAsync(long chatId, int? messageId, int pageNumber, CancellationToken cancellationToken);
    Task ShowResourceDetailsAsync(long chatId, int messageId, int resourceId, int returnPage, CancellationToken cancellationToken);

    // Admin uchun Boshqaruv (Management)
    bool IsAdminEditingResource(long telegramId);
    Task ShowAdminPagedResourcesAsync(long chatId, int? messageId, int pageNumber, CancellationToken cancellationToken);
    Task ShowAdminResourceDetailsAsync(long chatId, int messageId, int resourceId, int returnPage, CancellationToken cancellationToken);
    Task PromptDeleteResourceAsync(long chatId, int messageId, int resourceId, int returnPage, CancellationToken cancellationToken);
    Task ConfirmDeleteResourceAsync(long chatId, int messageId, int resourceId, int returnPage, CancellationToken cancellationToken);
    Task ShowEditFieldsMenuAsync(long chatId, int messageId, int resourceId, int returnPage, CancellationToken cancellationToken);
    Task PromptFieldEditInputAsync(long chatId, int messageId, int resourceId, int returnPage, string field, CancellationToken cancellationToken);
    Task HandleAdminEditTextInputAsync(long chatId, long telegramId, string text, CancellationToken cancellationToken);
    Task HandleCategoryEditAsync(long chatId, int messageId, int resourceId, int returnPage, int categoryId, CancellationToken cancellationToken);
    Task CancelEditAsync(long chatId, long telegramId, CancellationToken cancellationToken);
}

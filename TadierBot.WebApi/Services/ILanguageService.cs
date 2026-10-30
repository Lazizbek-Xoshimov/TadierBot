using Telegram.Bot.Types;

namespace TadierBot.WebApi.Services;

public interface ILanguageService
{
    Task ShowLanguagesAsync(long chatId, int? messageId, CancellationToken cancellationToken);
    Task ShowLanguageResourcesAsync(long chatId, int messageId, string language, int pageNumber, CancellationToken cancellationToken);
    Task ShowResourceDetailsAsync(long chatId, int messageId, string language, int resourceId, int returnPage, CancellationToken cancellationToken);
    Task HandleCallbackAsync(CallbackQuery callbackQuery, CancellationToken cancellationToken);
}


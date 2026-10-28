using Telegram.Bot.Types;

namespace TadierBot.WebApi.Services.Concrete;

public interface IUserService
{
    Task ShowPagedUsersAsync(long chatId, int? messageId, int pageNumber, CancellationToken cancellationToken);
    Task ShowUserDetailsAsync(long chatId, int messageId, int userId, int returnPage, CancellationToken cancellationToken);
    Task HandleCallbackAsync(CallbackQuery callbackQuery, CancellationToken cancellationToken);
}


using Telegram.Bot.Types;

namespace TadierBot.WebApi.Services.Concrete;

public interface IAdminService
{
    Task ShowAdminPanelAsync(long chatId, CancellationToken cancellationToken);
    Task HandleCallbackAsync(CallbackQuery callbackQuery, CancellationToken cancellationToken);
}


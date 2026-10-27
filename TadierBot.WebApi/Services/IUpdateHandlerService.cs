using Telegram.Bot.Types;

namespace TadierBot.WebApi.Services;

public interface IUpdateHandlerService
{
    Task HandleUpdateAsync(Update update, CancellationToken cancellationToken);
}


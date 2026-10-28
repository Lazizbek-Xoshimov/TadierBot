using Telegram.Bot.Types;

namespace TadierBot.WebApi.Services.Concrete;

public interface IUpdateHandlerService
{
    Task HandleUpdateAsync(Update update, CancellationToken cancellationToken);
}


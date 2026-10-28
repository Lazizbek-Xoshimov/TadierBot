namespace TadierBot.WebApi.Services;

public interface IStatisticsService
{
    Task ShowStatisticsAsync(long chatId, int messageId, CancellationToken cancellationToken);
}


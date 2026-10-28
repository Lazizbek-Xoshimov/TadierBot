using TadierBot.WebApi.DTOs;

namespace TadierBot.WebApi.Repositories;

public interface IStatisticsRepository
{
    Task<BotStatisticsDto> GetStatisticsAsync();
}


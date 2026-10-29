namespace TadierBot.WebApi.Repositories;

public interface ISearchHistoryRepository
{
    Task LogSearchAsync(long telegramId, string query);
}


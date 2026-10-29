using Dapper;
using TadierBot.WebApi.Data;

namespace TadierBot.WebApi.Repositories;

public class SearchHistoryRepository : ISearchHistoryRepository
{
    private readonly IDbConnectionFactory _connectionFactory;

    public SearchHistoryRepository(IDbConnectionFactory connectionFactory)
    {
        _connectionFactory = connectionFactory;
    }

    public async Task LogSearchAsync(long telegramId, string query)
    {
        if (string.IsNullOrWhiteSpace(query))
            return;

        using var connection = _connectionFactory.CreateConnection();
        const string sql = """
            INSERT INTO SearchHistories (UserId, Query, CreatedAt)
            SELECT Id, @Query, SYSUTCDATETIME()
            FROM Users
            WHERE TelegramId = @TelegramId;
            """;
        await connection.ExecuteAsync(sql, new { TelegramId = telegramId, Query = query.Trim() });
    }
}


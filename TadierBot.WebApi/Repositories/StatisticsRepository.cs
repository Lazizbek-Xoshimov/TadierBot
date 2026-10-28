using Dapper;
using TadierBot.WebApi.Data;
using TadierBot.WebApi.DTOs;

namespace TadierBot.WebApi.Repositories;

public class StatisticsRepository : IStatisticsRepository
{
    private readonly IDbConnectionFactory _connectionFactory;

    public StatisticsRepository(IDbConnectionFactory connectionFactory)
    {
        _connectionFactory = connectionFactory;
    }

    public async Task<BotStatisticsDto> GetStatisticsAsync()
    {
        using var connection = _connectionFactory.CreateConnection();

        const string sql = """
            -- 1. Foydalanuvchilar
            SELECT COUNT(1) FROM Users;
            SELECT COUNT(1) FROM Users WHERE DATEADD(hour, 5, LastActiveAt) >= CAST(DATEADD(hour, 5, SYSUTCDATETIME()) AS DATE);
            SELECT COUNT(1) FROM Users WHERE IsBanned = 1;

            -- 2. Manbalar
            SELECT COUNT(1) FROM Resources;
            SELECT COUNT(1) FROM Resources WHERE Type = 'Kitob';
            SELECT COUNT(1) FROM Resources WHERE Type = 'Video';
            SELECT COUNT(1) FROM Resources WHERE Type = 'Maqola';

            -- 3. Top 5 ko'rilgan manbalar
            SELECT TOP 5 Title, ViewsCount 
            FROM Resources 
            ORDER BY ViewsCount DESC;

            -- 4. Top 3 kategoriyalar
            SELECT TOP 3 c.Name AS CategoryName, COUNT(r.Id) AS ResourceCount, ISNULL(SUM(r.ViewsCount), 0) AS TotalViews
            FROM Categories c
            LEFT JOIN Resources r ON c.Id = r.CategoryId
            GROUP BY c.Name
            ORDER BY TotalViews DESC, ResourceCount DESC;

            -- 5. Top 3 qidiruvlar
            SELECT TOP 3 Query, COUNT(1) AS SearchCount
            FROM SearchHistories
            GROUP BY Query
            ORDER BY SearchCount DESC;
            """;

        using var multi = await connection.QueryMultipleAsync(sql);

        var stats = new BotStatisticsDto
        {
            TotalUsers = await multi.ReadSingleAsync<int>(),
            TodayActiveUsers = await multi.ReadSingleAsync<int>(),
            BannedUsers = await multi.ReadSingleAsync<int>(),

            TotalResources = await multi.ReadSingleAsync<int>(),
            BooksCount = await multi.ReadSingleAsync<int>(),
            VideosCount = await multi.ReadSingleAsync<int>(),
            ArticlesCount = await multi.ReadSingleAsync<int>(),

            TopResources = (await multi.ReadAsync<TopResourceDto>()).ToList(),
            TopCategories = (await multi.ReadAsync<TopCategoryDto>()).ToList(),
            TopSearches = (await multi.ReadAsync<TopSearchDto>()).ToList()
        };

        return stats;
    }
}


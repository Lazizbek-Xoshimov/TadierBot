using Dapper;
using TadierBot.WebApi.Common;
using TadierBot.WebApi.Data;
using TadierBot.WebApi.Models;

namespace TadierBot.WebApi.Repositories.Concrete;

public class UserRepository : IUserRepository
{
    private readonly IDbConnectionFactory _connectionFactory;

    public UserRepository(IDbConnectionFactory connectionFactory)
    {
        _connectionFactory = connectionFactory;
    }

    public async Task<User?> GetByIdAsync(int id)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = "SELECT * FROM Users WHERE Id = @Id";
        return await connection.QuerySingleOrDefaultAsync<User>(sql, new { Id = id });
    }

    public async Task<User?> GetByTelegramIdAsync(long telegramId)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = "SELECT * FROM Users WHERE TelegramId = @TelegramId";
        return await connection.QuerySingleOrDefaultAsync<User>(sql, new { TelegramId = telegramId });
    }

    public async Task<int> AddOrUpdateAsync(User user)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = """
            IF EXISTS (SELECT 1 FROM Users WHERE TelegramId = @TelegramId)
            BEGIN
                UPDATE Users 
                SET FullName = @FullName, 
                    Username = @Username, 
                    LastActiveAt = SYSUTCDATETIME()
                WHERE TelegramId = @TelegramId;

                SELECT Id FROM Users WHERE TelegramId = @TelegramId;
            END
            ELSE
            BEGIN
                INSERT INTO Users (TelegramId, FullName, Username, LanguageCode, IsBanned, CreatedAt, LastActiveAt)
                OUTPUT INSERTED.Id
                VALUES (@TelegramId, @FullName, @Username, @LanguageCode, 0, SYSUTCDATETIME(), SYSUTCDATETIME());
            END
            """;

        return await connection.ExecuteScalarAsync<int>(sql, user);
    }

    public async Task<bool> IsBannedAsync(long telegramId)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = "SELECT IsBanned FROM Users WHERE TelegramId = @TelegramId";
        return await connection.ExecuteScalarAsync<bool>(sql, new { TelegramId = telegramId });
    }

    public async Task UpdateLastActiveAsync(long telegramId)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = "UPDATE Users SET LastActiveAt = SYSUTCDATETIME() WHERE TelegramId = @TelegramId";
        await connection.ExecuteAsync(sql, new { TelegramId = telegramId });
    }

    public async Task<(int TotalUsers, int TodayActiveUsers, int BannedUsers)> GetUserCountsAsync()
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = """
            SELECT 
                COUNT(1) AS TotalUsers,
                COUNT(CASE WHEN DATEADD(hour, 5, LastActiveAt) >= CAST(DATEADD(hour, 5, SYSUTCDATETIME()) AS DATE) THEN 1 END) AS TodayActiveUsers,
                COUNT(CASE WHEN IsBanned = 1 THEN 1 END) AS BannedUsers
            FROM Users;
            """;
        return await connection.QuerySingleAsync<(int TotalUsers, int TodayActiveUsers, int BannedUsers)>(sql);
    }

    public async Task<PagedResult<User>> GetPagedUsersAsync(int pageNumber, int pageSize = 5)
    {
        using var connection = _connectionFactory.CreateConnection();
        pageNumber = Math.Max(pageNumber, 1);
        int offset = (pageNumber - 1) * pageSize;

        const string countSql = "SELECT COUNT(1) FROM Users;";
        int totalCount = await connection.ExecuteScalarAsync<int>(countSql);

        const string itemsSql = """
            SELECT * FROM Users
            ORDER BY CreatedAt DESC
            OFFSET @Offset ROWS
            FETCH NEXT @PageSize ROWS ONLY;
            """;
        var items = await connection.QueryAsync<User>(itemsSql, new { Offset = offset, PageSize = pageSize });

        return new PagedResult<User>
        {
            Items = items,
            TotalCount = totalCount,
            PageNumber = pageNumber,
            PageSize = pageSize
        };
    }

    public async Task<bool> ToggleBanAsync(int userId)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = """
            UPDATE Users
            SET IsBanned = CASE WHEN IsBanned = 1 THEN 0 ELSE 1 END
            OUTPUT INSERTED.IsBanned
            WHERE Id = @UserId;
            """;
        return await connection.ExecuteScalarAsync<bool>(sql, new { UserId = userId });
    }

    public async Task<IReadOnlyList<long>> GetActiveUserTelegramIdsAsync(long excludeTelegramId)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = """
            SELECT TelegramId 
            FROM Users 
            WHERE TelegramId != @ExcludeTelegramId 
              AND IsBanned = 0;
            """;
        var result = await connection.QueryAsync<long>(sql, new { ExcludeTelegramId = excludeTelegramId });
        return result.ToList();
    }

    public async Task<bool> UpdateStatsAsync(long telegramId, int score, int streakDays, string level, DateTime lastStreakDate)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = """
            UPDATE Users 
            SET Score = @Score, 
                StreakDays = @StreakDays, 
                Level = @Level, 
                LastStreakDate = @LastStreakDate,
                LastActiveAt = SYSUTCDATETIME()
            WHERE TelegramId = @TelegramId;
            """;
        int affected = await connection.ExecuteAsync(sql, new 
        { 
            TelegramId = telegramId, 
            Score = score, 
            StreakDays = streakDays, 
            Level = level, 
            LastStreakDate = lastStreakDate 
        });
        return affected > 0;
    }

    public async Task<(int TestsCount, int Rank)> GetUserTestStatsAndRankAsync(long telegramId, int userScore)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = """
            SELECT 
                (SELECT COUNT(*) FROM UserQuizAttempts WHERE TelegramId = @TelegramId) AS TestsCount,
                (SELECT COUNT(*) + 1 FROM Users WHERE Score > @UserScore AND IsBanned = 0) AS Rank;
        """;
        var result = await connection.QuerySingleOrDefaultAsync<(int TestsCount, int Rank)>(sql, new 
        { 
            TelegramId = telegramId, 
            UserScore = userScore 
        });
        return (result.TestsCount, result.Rank > 0 ? result.Rank : 1);
    }

    public async Task<IEnumerable<DTOs.User.LeaderboardUserDto>> GetTopLeaderboardUsersAsync(int count = 20)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = """
            SELECT TOP (@Count)
                u.TelegramId,
                u.FullName,
                u.Username,
                u.Score,
                u.Level,
                COUNT(a.Id) AS TestsCount
            FROM Users u
            LEFT JOIN UserQuizAttempts a ON u.TelegramId = a.TelegramId
            WHERE u.IsBanned = 0 AND u.Score > 0
            GROUP BY u.TelegramId, u.FullName, u.Username, u.Score, u.Level
            ORDER BY u.Score DESC, TestsCount DESC;
        """;
        var users = (await connection.QueryAsync<DTOs.User.LeaderboardUserDto>(sql, new { Count = count })).ToList();
        int rank = 1;
        foreach (var u in users)
        {
            u.Rank = rank++;
            if (string.IsNullOrWhiteSpace(u.FullName))
            {
                u.FullName = !string.IsNullOrWhiteSpace(u.Username) ? $"@{u.Username}" : $"Foydalanuvchi #{u.TelegramId}";
            }
        }
        return users;
    }
}


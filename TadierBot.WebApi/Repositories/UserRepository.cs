using Dapper;
using TadierBot.WebApi.Data;
using TadierBot.WebApi.Models;

namespace TadierBot.WebApi.Repositories;

public class UserRepository : IUserRepository
{
    private readonly IDbConnectionFactory _connectionFactory;

    public UserRepository(IDbConnectionFactory connectionFactory)
    {
        _connectionFactory = connectionFactory;
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
}


using Dapper;
using TadierBot.WebApi.Data;
using TadierBot.WebApi.Models;

namespace TadierBot.WebApi.Repositories;

public class AdminRepository : IAdminRepository
{
    private readonly IDbConnectionFactory _connectionFactory;

    public AdminRepository(IDbConnectionFactory connectionFactory)
    {
        _connectionFactory = connectionFactory;
    }

    public async Task<bool> IsAdminAsync(long telegramId)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = "SELECT COUNT(1) FROM Admins WHERE TelegramId = @TelegramId";
        int count = await connection.ExecuteScalarAsync<int>(sql, new { TelegramId = telegramId });
        return count > 0;
    }

    public async Task<Admin?> GetByTelegramIdAsync(long telegramId)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = "SELECT * FROM Admins WHERE TelegramId = @TelegramId";
        return await connection.QuerySingleOrDefaultAsync<Admin>(sql, new { TelegramId = telegramId });
    }
}


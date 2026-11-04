using Dapper;
using TadierBot.WebApi.Data;
using TadierBot.WebApi.DTOs.Event;
using TadierBot.WebApi.Models;

namespace TadierBot.WebApi.Repositories;

public class EventRepository : IEventRepository
{
    private readonly IDbConnectionFactory _connectionFactory;

    public EventRepository(IDbConnectionFactory connectionFactory)
    {
        _connectionFactory = connectionFactory;
    }

    // ==========================================
    // 1. Admin CRUD (Boshqaruv paneli)
    // ==========================================

    public async Task<int> AddAsync(Event ev)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = """
            INSERT INTO Events (
                Title, Description, EventType, EventDate, EventTime, Link, IsActive, CreatedAt
            )
            OUTPUT INSERTED.Id
            VALUES (
                @Title, @Description, @EventType, @EventDate, @EventTime, @Link, @IsActive, SYSUTCDATETIME()
            );
        """;
        return await connection.ExecuteScalarAsync<int>(sql, ev);
    }

    public async Task<bool> UpdateAsync(Event ev)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = """
            UPDATE Events
            SET Title = @Title,
                Description = @Description,
                EventType = @EventType,
                EventDate = @EventDate,
                EventTime = @EventTime,
                Link = @Link,
                IsActive = @IsActive,
                UpdatedAt = SYSUTCDATETIME()
            WHERE Id = @Id;
        """;
        int affected = await connection.ExecuteAsync(sql, ev);
        return affected > 0;
    }

    public async Task<bool> DeleteAsync(int id)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = "DELETE FROM Events WHERE Id = @Id;";
        int affected = await connection.ExecuteAsync(sql, new { Id = id });
        return affected > 0;
    }

    public async Task<Event?> GetByIdAsync(int id)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = "SELECT * FROM Events WHERE Id = @Id;";
        return await connection.QueryFirstOrDefaultAsync<Event>(sql, new { Id = id });
    }

    public async Task<IEnumerable<EventWithMeta>> GetAllForAdminAsync(string? search = null)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = """
            SELECT 
                e.Id, e.Title, e.Description, e.EventType, e.EventDate, e.EventTime, e.Link, e.IsActive, e.CreatedAt, e.UpdatedAt,
                (SELECT COUNT(1) FROM EventRegistrations er WHERE er.EventId = e.Id) AS RegisteredCount,
                CAST(0 AS BIT) AS IsRegistered
            FROM Events e
            WHERE (@Search IS NULL OR @Search = '' OR e.Title LIKE '%' + @Search + '%' OR e.Description LIKE '%' + @Search + '%')
            ORDER BY e.EventDate DESC, e.EventTime DESC;
        """;
        return await connection.QueryAsync<EventWithMeta>(sql, new { Search = search });
    }

    // ==========================================
    // 2. Foydalanuvchilar ko'rinishi (Kelgusi tadbirlar)
    // ==========================================

    public async Task<IEnumerable<EventWithMeta>> GetUpcomingEventsAsync(long? telegramId = null)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = """
            SELECT 
                e.Id, e.Title, e.Description, e.EventType, e.EventDate, e.EventTime, e.Link, e.IsActive, e.CreatedAt, e.UpdatedAt,
                (SELECT COUNT(1) FROM EventRegistrations er WHERE er.EventId = e.Id) AS RegisteredCount,
                CASE 
                    WHEN @TelegramId IS NOT NULL AND EXISTS(
                        SELECT 1 FROM EventRegistrations er WHERE er.EventId = e.Id AND er.TelegramId = @TelegramId
                    ) THEN CAST(1 AS BIT)
                    ELSE CAST(0 AS BIT)
                END AS IsRegistered
            FROM Events e
            WHERE e.IsActive = 1 
              AND (e.EventDate > CAST(GETDATE() AS DATE) 
                   OR (e.EventDate = CAST(GETDATE() AS DATE) AND e.EventTime >= DATEADD(HOUR, -2, CAST(GETDATE() AS TIME))))
            ORDER BY e.EventDate ASC, e.EventTime ASC;
        """;
        return await connection.QueryAsync<EventWithMeta>(sql, new { TelegramId = telegramId });
    }

    // ==========================================
    // 3. Darsga yozilish (Registrations)
    // ==========================================

    public async Task<bool> RegisterUserAsync(int eventId, long telegramId)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = """
            IF NOT EXISTS (SELECT 1 FROM EventRegistrations WHERE EventId = @EventId AND TelegramId = @TelegramId)
            BEGIN
                INSERT INTO EventRegistrations (EventId, TelegramId, RegisteredAt)
                VALUES (@EventId, @TelegramId, SYSUTCDATETIME());
                SELECT CAST(1 AS BIT);
            END
            ELSE
            BEGIN
                SELECT CAST(0 AS BIT);
            END
        """;
        return await connection.ExecuteScalarAsync<bool>(sql, new { EventId = eventId, TelegramId = telegramId });
    }

    public async Task<bool> IsUserRegisteredAsync(int eventId, long telegramId)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = """
            SELECT CASE 
                WHEN EXISTS (SELECT 1 FROM EventRegistrations WHERE EventId = @EventId AND TelegramId = @TelegramId) 
                THEN CAST(1 AS BIT) 
                ELSE CAST(0 AS BIT) 
            END;
        """;
        return await connection.ExecuteScalarAsync<bool>(sql, new { EventId = eventId, TelegramId = telegramId });
    }

    // ==========================================
    // 4. Qatnashuvchilar monitoringi
    // ==========================================

    public async Task<int> GetTotalParticipantsCountAsync()
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = "SELECT COUNT(1) FROM EventRegistrations;";
        return await connection.ExecuteScalarAsync<int>(sql);
    }

    public async Task<IEnumerable<EventParticipantDto>> GetParticipantsAsync(int? eventId = null)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = """
            SELECT 
                er.EventId,
                e.Title AS EventTitle,
                er.TelegramId,
                u.FullName,
                u.Username,
                er.RegisteredAt
            FROM EventRegistrations er
            INNER JOIN Events e ON er.EventId = e.Id
            LEFT JOIN Users u ON er.TelegramId = u.TelegramId
            WHERE (@EventId IS NULL OR er.EventId = @EventId)
            ORDER BY er.RegisteredAt DESC;
        """;
        return await connection.QueryAsync<EventParticipantDto>(sql, new { EventId = eventId });
    }
}


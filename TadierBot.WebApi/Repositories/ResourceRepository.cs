using Dapper;
using TadierBot.WebApi.Common;
using TadierBot.WebApi.Data;
using TadierBot.WebApi.Models;

namespace TadierBot.WebApi.Repositories;

public class ResourceRepository : IResourceRepository
{
    private readonly IDbConnectionFactory _connectionFactory;

    public ResourceRepository(IDbConnectionFactory connectionFactory)
    {
        _connectionFactory = connectionFactory;
    }

    public async Task<int> AddAsync(Resource resource)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = """
            INSERT INTO Resources 
                (Title, Description, Url, Type, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
            OUTPUT INSERTED.Id
            VALUES 
                (@Title, @Description, @Url, @Type, @Language, @CategoryId, @AddedByAdminId, @TelegramChannelId, @MessageId, 0, SYSUTCDATETIME());
            """;

        return await connection.ExecuteScalarAsync<int>(sql, resource);
    }

    public async Task<PagedResult<Resource>> GetPagedAsync(int pageNumber, int pageSize = 5)
    {
        using var connection = _connectionFactory.CreateConnection();
        pageNumber = Math.Max(pageNumber, 1);
        int offset = (pageNumber - 1) * pageSize;

        const string countSql = "SELECT COUNT(1) FROM Resources";
        int totalCount = await connection.ExecuteScalarAsync<int>(countSql);

        const string itemsSql = """
            SELECT 
                r.Id, r.Title, r.Description, r.Url, r.Type, r.Language, 
                r.CategoryId, r.AddedByAdminId, r.TelegramChannelId, 
                r.MessageId, r.ViewsCount, r.CreatedAt, r.UpdatedAt,
                c.Name AS CategoryName
            FROM Resources r
            INNER JOIN Categories c ON r.CategoryId = c.Id
            ORDER BY r.CreatedAt DESC
            OFFSET @Offset ROWS FETCH NEXT @PageSize ROWS ONLY;
            """;

        var items = await connection.QueryAsync<Resource>(itemsSql, new { Offset = offset, PageSize = pageSize });

        return new PagedResult<Resource>
        {
            Items = items,
            TotalCount = totalCount,
            PageNumber = pageNumber,
            PageSize = pageSize
        };
    }

    public async Task<IEnumerable<Resource>> GetLatestAsync(int count = 5)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = """
            SELECT TOP (@Count) 
                r.Id, r.Title, r.Description, r.Url, r.Type, r.Language, 
                r.CategoryId, r.AddedByAdminId, r.TelegramChannelId, 
                r.MessageId, r.ViewsCount, r.CreatedAt, r.UpdatedAt,
                c.Name AS CategoryName
            FROM Resources r
            INNER JOIN Categories c ON r.CategoryId = c.Id
            ORDER BY r.CreatedAt DESC;
            """;

        return await connection.QueryAsync<Resource>(sql, new { Count = count });
    }

    public async Task<IEnumerable<Resource>> GetByCategoryIdAsync(int categoryId)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = """
            SELECT 
                r.Id, r.Title, r.Description, r.Url, r.Type, r.Language, 
                r.CategoryId, r.AddedByAdminId, r.TelegramChannelId, 
                r.MessageId, r.ViewsCount, r.CreatedAt, r.UpdatedAt,
                c.Name AS CategoryName
            FROM Resources r
            INNER JOIN Categories c ON r.CategoryId = c.Id
            WHERE r.CategoryId = @CategoryId
            ORDER BY r.CreatedAt DESC;
            """;

        return await connection.QueryAsync<Resource>(sql, new { CategoryId = categoryId });
    }

    public async Task<Resource?> GetByIdAsync(int id)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = """
            SELECT 
                r.Id, r.Title, r.Description, r.Url, r.Type, r.Language, 
                r.CategoryId, r.AddedByAdminId, r.TelegramChannelId, 
                r.MessageId, r.ViewsCount, r.CreatedAt, r.UpdatedAt,
                c.Name AS CategoryName
            FROM Resources r
            INNER JOIN Categories c ON r.CategoryId = c.Id
            WHERE r.Id = @Id;
            """;

        return await connection.QuerySingleOrDefaultAsync<Resource>(sql, new { Id = id });
    }

    public async Task IncrementViewsCountAsync(int resourceId)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = "UPDATE Resources SET ViewsCount = ViewsCount + 1 WHERE Id = @Id";
        await connection.ExecuteAsync(sql, new { Id = resourceId });
    }
}

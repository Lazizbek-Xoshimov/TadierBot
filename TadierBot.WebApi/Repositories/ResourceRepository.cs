using Dapper;
using TadierBot.WebApi.Common;
using TadierBot.WebApi.Data;
using TadierBot.WebApi.Models;

namespace TadierBot.WebApi.Repositories;

public class ResourceRepository : IResourceRepository
{
    private readonly IDbConnectionFactory _connectionFactory;

    // DRY: Barcha metodlar uchun yagona asosiy SELECT so'rovi
    private const string BaseSelectSql = """
        SELECT 
            r.Id, r.Title, r.Description, r.Url, r.Language, 
            r.CategoryId, r.AddedByAdminId, r.TelegramChannelId, 
            r.MessageId, r.ViewsCount, r.CreatedAt, r.UpdatedAt,
            c.Name AS CategoryName
        FROM Resources r
        INNER JOIN Categories c ON r.CategoryId = c.Id
        """;

    public ResourceRepository(IDbConnectionFactory connectionFactory)
    {
        _connectionFactory = connectionFactory;
    }

    public async Task<int> AddAsync(Resource resource)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = """
            INSERT INTO Resources 
                (Title, Description, Url, Language, CategoryId, AddedByAdminId, TelegramChannelId, MessageId, ViewsCount, CreatedAt)
            OUTPUT INSERTED.Id
            VALUES 
                (@Title, @Description, @Url, @Language, @CategoryId, @AddedByAdminId, @TelegramChannelId, @MessageId, 0, SYSUTCDATETIME());
            """;

        return await connection.ExecuteScalarAsync<int>(sql, resource);
    }

    public async Task<bool> UpdateAsync(Resource resource)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = """
            UPDATE Resources
            SET Title = @Title,
                Description = @Description,
                Url = @Url,
                Language = @Language,
                CategoryId = @CategoryId,
                TelegramChannelId = @TelegramChannelId,
                MessageId = @MessageId,
                UpdatedAt = SYSUTCDATETIME()
            WHERE Id = @Id;
            """;

        int affected = await connection.ExecuteAsync(sql, resource);
        return affected > 0;
    }

    public async Task<bool> DeleteAsync(int id)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = "DELETE FROM Resources WHERE Id = @Id;";
        int affected = await connection.ExecuteAsync(sql, new { Id = id });
        return affected > 0;
    }

    public async Task<PagedResult<Resource>> GetPagedAsync(int pageNumber, int pageSize = 5)
    {
        using var connection = _connectionFactory.CreateConnection();
        pageNumber = Math.Max(pageNumber, 1);
        int offset = (pageNumber - 1) * pageSize;

        const string countSql = "SELECT COUNT(1) FROM Resources";
        int totalCount = await connection.ExecuteScalarAsync<int>(countSql);

        string itemsSql = $"{BaseSelectSql} ORDER BY r.CreatedAt DESC OFFSET @Offset ROWS FETCH NEXT @PageSize ROWS ONLY;";
        var items = await connection.QueryAsync<Resource>(itemsSql, new { Offset = offset, PageSize = pageSize });

        return new PagedResult<Resource>
        {
            Items = items,
            TotalCount = totalCount,
            PageNumber = pageNumber,
            PageSize = pageSize
        };
    }

    public async Task<PagedResult<Resource>> SearchPagedAsync(string query, int pageNumber = 1, int pageSize = 5)
    {
        using var connection = _connectionFactory.CreateConnection();
        pageNumber = Math.Max(pageNumber, 1);
        int offset = (pageNumber - 1) * pageSize;

        string searchPattern = $"%{query.Trim()}%";

        // Hozircha Title bo'yicha qidiruv.
        // Kelajakda Description va CategoryName'ni ham qo'shish uchun:
        // const string whereClause = "WHERE (r.Title LIKE @Pattern OR r.Description LIKE @Pattern OR c.Name LIKE @Pattern)";
        const string whereClause = "WHERE r.Title LIKE @Pattern";

        string countSql = $"""
            SELECT COUNT(1) 
            FROM Resources r 
            INNER JOIN Categories c ON r.CategoryId = c.Id 
            {whereClause};
            """;
        int totalCount = await connection.ExecuteScalarAsync<int>(countSql, new { Pattern = searchPattern });

        string itemsSql = $"""
            {BaseSelectSql} 
            {whereClause} 
            ORDER BY r.CreatedAt DESC 
            OFFSET @Offset ROWS 
            FETCH NEXT @PageSize ROWS ONLY;
            """;
        var items = await connection.QueryAsync<Resource>(itemsSql, new { Pattern = searchPattern, Offset = offset, PageSize = pageSize });

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
        string sql = $"SELECT TOP (@Count) r.*, c.Name AS CategoryName FROM Resources r INNER JOIN Categories c ON r.CategoryId = c.Id ORDER BY r.CreatedAt DESC;";
        return await connection.QueryAsync<Resource>(sql, new { Count = count });
    }

    public async Task<IEnumerable<Resource>> GetByCategoryIdAsync(int categoryId)
    {
        using var connection = _connectionFactory.CreateConnection();
        string sql = $"{BaseSelectSql} WHERE r.CategoryId = @CategoryId ORDER BY r.CreatedAt DESC;";
        return await connection.QueryAsync<Resource>(sql, new { CategoryId = categoryId });
    }

    public async Task<PagedResult<Resource>> GetPagedByCategoryIdAsync(int categoryId, int pageNumber, int pageSize = 5)
    {
        using var connection = _connectionFactory.CreateConnection();
        pageNumber = Math.Max(pageNumber, 1);
        int offset = (pageNumber - 1) * pageSize;

        const string countSql = "SELECT COUNT(1) FROM Resources WHERE CategoryId = @CategoryId;";
        int totalCount = await connection.ExecuteScalarAsync<int>(countSql, new { CategoryId = categoryId });

        string itemsSql = $"""
            {BaseSelectSql} 
            WHERE r.CategoryId = @CategoryId 
            ORDER BY r.CreatedAt DESC 
            OFFSET @Offset ROWS 
            FETCH NEXT @PageSize ROWS ONLY;
            """;
        var items = await connection.QueryAsync<Resource>(itemsSql, new { CategoryId = categoryId, Offset = offset, PageSize = pageSize });

        return new PagedResult<Resource>
        {
            Items = items,
            TotalCount = totalCount,
            PageNumber = pageNumber,
            PageSize = pageSize
        };
    }

    public async Task<PagedResult<Resource>> GetPagedByLanguageAsync(string language, int pageNumber, int pageSize = 5)
    {
        using var connection = _connectionFactory.CreateConnection();
        pageNumber = Math.Max(pageNumber, 1);
        int offset = (pageNumber - 1) * pageSize;

        const string countSql = "SELECT COUNT(1) FROM Resources WHERE Language = @Language;";
        int totalCount = await connection.ExecuteScalarAsync<int>(countSql, new { Language = language });

        string itemsSql = $"""
            {BaseSelectSql} 
            WHERE r.Language = @Language 
            ORDER BY r.CreatedAt DESC 
            OFFSET @Offset ROWS 
            FETCH NEXT @PageSize ROWS ONLY;
            """;
        var items = await connection.QueryAsync<Resource>(itemsSql, new { Language = language, Offset = offset, PageSize = pageSize });

        return new PagedResult<Resource>
        {
            Items = items,
            TotalCount = totalCount,
            PageNumber = pageNumber,
            PageSize = pageSize
        };
    }

    public async Task<Resource?> GetByIdAsync(int id)
    {
        using var connection = _connectionFactory.CreateConnection();
        string sql = $"{BaseSelectSql} WHERE r.Id = @Id;";
        return await connection.QuerySingleOrDefaultAsync<Resource>(sql, new { Id = id });
    }

    public async Task IncrementViewsCountAsync(int resourceId)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = "UPDATE Resources SET ViewsCount = ViewsCount + 1 WHERE Id = @Id";
        await connection.ExecuteAsync(sql, new { Id = resourceId });
    }
}

using Dapper;
using TadierBot.WebApi.Data;
using TadierBot.WebApi.Models;

namespace TadierBot.WebApi.Repositories;

public class WordRepository : IWordRepository
{
    private readonly IDbConnectionFactory _connectionFactory;

    public WordRepository(IDbConnectionFactory connectionFactory)
    {
        _connectionFactory = connectionFactory;
    }

    // ==========================================
    // 1. Admin CRUD (Boshqaruv paneli)
    // ==========================================

    public async Task<int> AddAsync(Word word)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = """
            INSERT INTO Words (
                Article, GermanWord, UzbekTranslation, ExampleSentenceDe, 
                ExampleSentenceUz, Level, Category, AudioUrl, IsDailyWord, DailyWordDate, CreatedAt
            )
            OUTPUT INSERTED.Id
            VALUES (
                @Article, @GermanWord, @UzbekTranslation, @ExampleSentenceDe, 
                @ExampleSentenceUz, @Level, @Category, @AudioUrl, @IsDailyWord, @DailyWordDate, SYSUTCDATETIME()
            );
        """;
        return await connection.ExecuteScalarAsync<int>(sql, word);
    }

    public async Task<bool> UpdateAsync(Word word)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = """
            UPDATE Words
            SET Article = @Article,
                GermanWord = @GermanWord,
                UzbekTranslation = @UzbekTranslation,
                ExampleSentenceDe = @ExampleSentenceDe,
                ExampleSentenceUz = @ExampleSentenceUz,
                Level = @Level,
                Category = @Category,
                AudioUrl = @AudioUrl,
                IsDailyWord = @IsDailyWord,
                DailyWordDate = @DailyWordDate,
                UpdatedAt = SYSUTCDATETIME()
            WHERE Id = @Id;
        """;
        int affected = await connection.ExecuteAsync(sql, word);
        return affected > 0;
    }

    public async Task<bool> DeleteAsync(int id)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = "DELETE FROM Words WHERE Id = @Id;";
        int affected = await connection.ExecuteAsync(sql, new { Id = id });
        return affected > 0;
    }

    public async Task<Word?> GetByIdAsync(int id)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = "SELECT * FROM Words WHERE Id = @Id;";
        return await connection.QuerySingleOrDefaultAsync<Word>(sql, new { Id = id });
    }

    public async Task<IEnumerable<Word>> GetAllPagedAsync(int pageNumber, int pageSize, string? search = null)
    {
        using var connection = _connectionFactory.CreateConnection();
        int offset = (pageNumber - 1) * pageSize;
        const string sql = """
            SELECT * FROM Words
            WHERE (@Search IS NULL OR GermanWord LIKE '%' + @Search + '%' OR UzbekTranslation LIKE '%' + @Search + '%')
            ORDER BY Id DESC
            OFFSET @Offset ROWS FETCH NEXT @PageSize ROWS ONLY;
        """;
        return await connection.QueryAsync<Word>(sql, new { Search = search, Offset = offset, PageSize = pageSize });
    }

    public async Task<int> GetTotalCountAsync(string? search = null)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = """
            SELECT COUNT(1) FROM Words
            WHERE (@Search IS NULL OR GermanWord LIKE '%' + @Search + '%' OR UzbekTranslation LIKE '%' + @Search + '%');
        """;
        return await connection.ExecuteScalarAsync<int>(sql, new { Search = search });
    }

    // ==========================================
    // 2. So'z trenajyori 
    // ==========================================

    public async Task<IEnumerable<Word>> GetWordsByLevelAsync(string level, int count)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = """
            SELECT TOP (@Count) * 
            FROM Words 
            WHERE Level = @Level 
            ORDER BY NEWID();
        """;
        return await connection.QueryAsync<Word>(sql, new { Level = level, Count = count });
    }

    public async Task<Word?> GetDailyWordAsync()
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = """
            SELECT TOP 1 * 
            FROM Words 
            WHERE IsDailyWord = 1 
            ORDER BY DailyWordDate DESC, Id DESC;
        """;
        return await connection.QuerySingleOrDefaultAsync<Word>(sql);
    }

    // ==========================================
    // 3. Foydalanuvchi progressi
    // ==========================================

    public async Task<UserWordProgress?> GetUserWordProgressAsync(long telegramId, int wordId)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = """
            SELECT * FROM UserWordProgress 
            WHERE TelegramId = @TelegramId AND WordId = @WordId;
        """;
        return await connection.QuerySingleOrDefaultAsync<UserWordProgress>(sql, new { TelegramId = telegramId, WordId = wordId });
    }

    public async Task<bool> UpsertUserWordProgressAsync(UserWordProgress progress)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = """
            MERGE INTO UserWordProgress AS target
            USING (SELECT @TelegramId AS TelegramId, @WordId AS WordId) AS source
            ON (target.TelegramId = source.TelegramId AND target.WordId = source.WordId)
            WHEN MATCHED THEN
                UPDATE SET 
                    Status = @Status,
                    CorrectCount = @CorrectCount,
                    IncorrectCount = @IncorrectCount,
                    LastReviewedAt = SYSUTCDATETIME(),
                    NextReviewAt = @NextReviewAt
            WHEN NOT MATCHED THEN
                INSERT (TelegramId, WordId, Status, CorrectCount, IncorrectCount, LastReviewedAt, NextReviewAt, CreatedAt)
                VALUES (@TelegramId, @WordId, @Status, @CorrectCount, @IncorrectCount, SYSUTCDATETIME(), @NextReviewAt, SYSUTCDATETIME());
        """;
        int affected = await connection.ExecuteAsync(sql, progress);
        return affected > 0;
    }

    public async Task<(int LearnedCount, int LearningCount)> GetUserProgressStatsAsync(long telegramId)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = """
            SELECT 
                ISNULL(SUM(CASE WHEN Status = 'Learned' THEN 1 ELSE 0 END), 0) AS LearnedCount,
                ISNULL(SUM(CASE WHEN Status = 'Learning' THEN 1 ELSE 0 END), 0) AS LearningCount
            FROM UserWordProgress
            WHERE TelegramId = @TelegramId;
        """;
        return await connection.QuerySingleAsync<(int LearnedCount, int LearningCount)>(sql, new { TelegramId = telegramId });
    }
}

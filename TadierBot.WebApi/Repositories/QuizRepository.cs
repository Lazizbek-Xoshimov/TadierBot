using Dapper;
using TadierBot.WebApi.Data;
using TadierBot.WebApi.DTOs.Quiz;
using TadierBot.WebApi.Models;

namespace TadierBot.WebApi.Repositories;

public class QuizRepository : IQuizRepository
{
    private readonly IDbConnectionFactory _connectionFactory;

    public QuizRepository(IDbConnectionFactory connectionFactory)
    {
        _connectionFactory = connectionFactory;
    }

    // ==========================================
    // 1. Materiallar (QuizPassages)
    // ==========================================

    public async Task<int> AddPassageAsync(QuizPassage passage)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = """
            INSERT INTO QuizPassages (Type, Title, Content, AudioUrl, Level, CreatedAt)
            OUTPUT INSERTED.Id
            VALUES (@Type, @Title, @Content, @AudioUrl, @Level, SYSUTCDATETIME());
        """;
        return await connection.ExecuteScalarAsync<int>(sql, passage);
    }

    public async Task<QuizPassage?> GetPassageByIdAsync(int id)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = """
            SELECT Id, Type, Title, Content, AudioUrl, Level, CreatedAt
            FROM QuizPassages
            WHERE Id = @Id;
        """;
        return await connection.QuerySingleOrDefaultAsync<QuizPassage>(sql, new { Id = id });
    }

    public async Task<IEnumerable<QuizPassage>> GetAllPassagesAsync(string? type = null)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = """
            SELECT Id, Type, Title, Content, AudioUrl, Level, CreatedAt
            FROM QuizPassages
            WHERE (@Type IS NULL OR Type = @Type)
            ORDER BY Id DESC;
        """;
        return await connection.QueryAsync<QuizPassage>(sql, new { Type = type });
    }

    public async Task<bool> DeletePassageAsync(int id)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = "DELETE FROM QuizPassages WHERE Id = @Id;";
        int rows = await connection.ExecuteAsync(sql, new { Id = id });
        return rows > 0;
    }

    // ==========================================
    // 2. Savollar (QuizQuestions)
    // ==========================================

    public async Task<int> AddQuestionAsync(QuizQuestion question)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = """
            INSERT INTO QuizQuestions (
                PassageId, QuestionText, OptionA, OptionB, OptionC, OptionD, CorrectOption, OrderIndex, CreatedAt
            )
            OUTPUT INSERTED.Id
            VALUES (
                @PassageId, @QuestionText, @OptionA, @OptionB, @OptionC, @OptionD, @CorrectOption, @OrderIndex, SYSUTCDATETIME()
            );
        """;
        return await connection.ExecuteScalarAsync<int>(sql, question);
    }

    public async Task<QuizQuestion?> GetQuestionByIdAsync(int id)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = """
            SELECT Id, PassageId, QuestionText, OptionA, OptionB, OptionC, OptionD, CorrectOption, OrderIndex, CreatedAt
            FROM QuizQuestions
            WHERE Id = @Id;
        """;
        return await connection.QuerySingleOrDefaultAsync<QuizQuestion>(sql, new { Id = id });
    }

    public async Task<IEnumerable<QuizQuestion>> GetQuestionsByPassageIdAsync(int passageId)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = """
            SELECT Id, PassageId, QuestionText, OptionA, OptionB, OptionC, OptionD, CorrectOption, OrderIndex, CreatedAt
            FROM QuizQuestions
            WHERE PassageId = @PassageId
            ORDER BY OrderIndex ASC, Id ASC;
        """;
        return await connection.QueryAsync<QuizQuestion>(sql, new { PassageId = passageId });
    }

    public async Task<IEnumerable<QuizQuestion>> GetQuestionsByPassageIdsAsync(IEnumerable<int> passageIds)
    {
        var idsList = passageIds.ToList();
        if (idsList.Count == 0) return Enumerable.Empty<QuizQuestion>();

        using var connection = _connectionFactory.CreateConnection();
        const string sql = """
            SELECT Id, PassageId, QuestionText, OptionA, OptionB, OptionC, OptionD, CorrectOption, OrderIndex, CreatedAt
            FROM QuizQuestions
            WHERE PassageId IN @PassageIds
            ORDER BY OrderIndex ASC, Id ASC;
        """;
        return await connection.QueryAsync<QuizQuestion>(sql, new { PassageIds = idsList });
    }

    public async Task<IEnumerable<QuizAdminQuestionDto>> GetAllAdminQuestionsAsync(string? search = null, string? level = null, string? type = null)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = """
            SELECT 
                q.Id,
                q.PassageId,
                p.Title AS PassageTitle,
                p.Type AS PassageType,
                p.Level,
                q.QuestionText,
                q.OptionA,
                q.OptionB,
                q.OptionC,
                q.OptionD,
                q.CorrectOption,
                q.OrderIndex,
                q.CreatedAt
            FROM QuizQuestions q
            INNER JOIN QuizPassages p ON q.PassageId = p.Id
            WHERE (@Level IS NULL OR p.Level = @Level)
              AND (@Type IS NULL OR p.Type = @Type)
              AND (
                  @Search IS NULL OR 
                  q.QuestionText LIKE '%' + @Search + '%' OR 
                  p.Title LIKE '%' + @Search + '%' OR 
              )
            ORDER BY q.Id DESC;
        """;
        return await connection.QueryAsync<QuizAdminQuestionDto>(sql, new { Search = search, Level = level, Type = type });
    }

    public async Task<bool> UpdateQuestionAsync(QuizQuestion question)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = """
            UPDATE QuizQuestions
            SET PassageId = @PassageId,
                QuestionText = @QuestionText,
                OptionA = @OptionA,
                OptionB = @OptionB,
                OptionC = @OptionC,
                OptionD = @OptionD,
                CorrectOption = @CorrectOption,
                OrderIndex = @OrderIndex
            WHERE Id = @Id;
        """;
        int rows = await connection.ExecuteAsync(sql, question);
        return rows > 0;
    }

    public async Task<bool> DeleteQuestionAsync(int id)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = "DELETE FROM QuizQuestions WHERE Id = @Id;";
        int rows = await connection.ExecuteAsync(sql, new { Id = id });
        return rows > 0;
    }

    // ==========================================
    // 3. Testni tekshirish
    // ==========================================

    public async Task<Dictionary<int, int>> GetCorrectAnswersByIdsAsync(IEnumerable<int> questionIds)
    {
        var idsList = questionIds.ToList();
        if (idsList.Count == 0) return new Dictionary<int, int>();

        using var connection = _connectionFactory.CreateConnection();
        const string sql = """
            SELECT Id, CorrectOption
            FROM QuizQuestions
            WHERE Id IN @QuestionIds;
        """;
        var rows = await connection.QueryAsync<(int Id, int CorrectOption)>(sql, new { QuestionIds = idsList });
        return rows.ToDictionary(r => r.Id, r => r.CorrectOption);
    }

    // ==========================================
    // 4. Test topshirish tarixi
    // ==========================================

    public async Task<long> AddAttemptAsync(UserQuizAttempt attempt)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = """
            INSERT INTO UserQuizAttempts (
                TelegramId, CorrectAnswersCount, TotalQuestionsCount, ScoreEarned, AssignedLevel, CompletedAt
            )
            OUTPUT INSERTED.Id
            VALUES (
                @TelegramId, @CorrectAnswersCount, @TotalQuestionsCount, @ScoreEarned, @AssignedLevel, SYSUTCDATETIME()
            );
        """;
        return await connection.ExecuteScalarAsync<long>(sql, attempt);
    }

    public async Task<IEnumerable<UserQuizAttempt>> GetAttemptsByTelegramIdAsync(long telegramId, int count = 10)
    {
        using var connection = _connectionFactory.CreateConnection();
        const string sql = """
            SELECT TOP (@Count) Id, TelegramId, CorrectAnswersCount, TotalQuestionsCount, ScoreEarned, AssignedLevel, CompletedAt
            FROM UserQuizAttempts
            WHERE TelegramId = @TelegramId
            ORDER BY CompletedAt DESC;
        """;
        return await connection.QueryAsync<UserQuizAttempt>(sql, new { TelegramId = telegramId, Count = count });
    }
}

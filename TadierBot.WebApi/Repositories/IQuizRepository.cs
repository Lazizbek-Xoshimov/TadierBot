using TadierBot.WebApi.DTOs.Quiz;
using TadierBot.WebApi.Models;

namespace TadierBot.WebApi.Repositories;

public interface IQuizRepository
{
    // 1. Materiallar (QuizPassages - Reading matnlari va Listening audiolar)
    Task<int> AddPassageAsync(QuizPassage passage);
    Task<QuizPassage?> GetPassageByIdAsync(int id);
    Task<IEnumerable<QuizPassage>> GetAllPassagesAsync(string? type = null);
    Task<bool> DeletePassageAsync(int id);

    // 2. Savollar (QuizQuestions)
    Task<int> AddQuestionAsync(QuizQuestion question);
    Task<QuizQuestion?> GetQuestionByIdAsync(int id);
    Task<IEnumerable<QuizQuestion>> GetQuestionsByPassageIdAsync(int passageId);
    Task<IEnumerable<QuizQuestion>> GetQuestionsByPassageIdsAsync(IEnumerable<int> passageIds);
    Task<IEnumerable<QuizAdminQuestionDto>> GetAllAdminQuestionsAsync(string? search = null, string? level = null, string? type = null);
    Task<bool> UpdateQuestionAsync(QuizQuestion question);
    Task<bool> DeleteQuestionAsync(int id);

    // 3. Testni tekshirish (Faqat to'g'ri javoblarni olish)
    Task<Dictionary<int, int>> GetCorrectAnswersByIdsAsync(IEnumerable<int> questionIds);

    // 4. Test topshirish tarixi (UserQuizAttempts)
    Task<long> AddAttemptAsync(UserQuizAttempt attempt);
    Task<IEnumerable<UserQuizAttempt>> GetAttemptsByTelegramIdAsync(long telegramId, int count = 10);
}


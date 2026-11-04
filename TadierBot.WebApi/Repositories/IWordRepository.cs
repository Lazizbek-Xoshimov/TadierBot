using TadierBot.WebApi.Models;

namespace TadierBot.WebApi.Repositories;

public interface IWordRepository
{
    // 1. Admin CRUD (4-rasm: Boshqaruv paneli)
    Task<int> AddAsync(Word word);
    Task<bool> UpdateAsync(Word word);
    Task<bool> DeleteAsync(int id);
    Task<Word?> GetByIdAsync(int id);
    Task<IEnumerable<Word>> GetAllPagedAsync(int pageNumber, int pageSize, string? search = null);
    Task<int> GetTotalCountAsync(string? search = null);

    // 2. So'z trenajyori (2 va 3-rasmlar: Daraja bo'yicha mashq qilish)
    Task<IEnumerable<Word>> GetWordsByLevelAsync(string level, int count);
    Task<Word?> GetDailyWordAsync();

    // 3. Foydalanuvchi so'z progressi (Flesh-kartochkalar natijasi)
    Task<UserWordProgress?> GetUserWordProgressAsync(long telegramId, int wordId);
    Task<bool> UpsertUserWordProgressAsync(UserWordProgress progress);
    Task<(int LearnedCount, int LearningCount)> GetUserProgressStatsAsync(long telegramId);
}


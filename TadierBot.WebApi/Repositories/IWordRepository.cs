using TadierBot.WebApi.DTOs.Word;
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

    // 2. So'z trenajyori (Daraja va Unit bo'yicha mashq qilish)
    Task<IEnumerable<Word>> GetWordsByLevelAsync(string level, int? unit, int count);
    Task<LevelUnitsResponse> GetUnitsByLevelAsync(string level);
    Task<Word?> GetDailyWordAsync(int offset = 0);

    // 3. Foydalanuvchi so'z progressi (Flesh-kartochkalar natijasi)
    Task<UserWordProgress?> GetUserWordProgressAsync(long telegramId, int wordId);
    Task<bool> UpsertUserWordProgressAsync(UserWordProgress progress);
    Task<(int LearnedCount, int LearningCount)> GetUserProgressStatsAsync(long telegramId);
}


using TadierBot.WebApi.DTOs.Word;

namespace TadierBot.WebApi.Services;

public interface IWordService
{
    // 1. So'z trenajyori (2 va 3-rasmlar)
    Task<TrainerSessionResponse> GetTrainerSessionAsync(string level, int? unit = null, int count = 10);
    Task<LevelUnitsResponse> GetUnitsByLevelAsync(string level);
    Task<WordAnswerResponse> ProcessAnswerAsync(long telegramId, WordAnswerRequest request);
    Task<DailyWordResponse?> GetDailyWordAsync();
    Task<WordStatsResponse> GetWordStatsAsync(long telegramId);

    // 2. Admin CRUD (4-rasm: Boshqaruv paneli)
    Task<WordDto> CreateWordAsync(WordCreateRequest request);
    Task<bool> UpdateWordAsync(WordUpdateRequest request);
    Task<bool> DeleteWordAsync(int id);
    Task<WordDto?> GetWordByIdAsync(int id);
    Task<IEnumerable<WordDto>> GetPagedWordsAsync(int pageNumber, int pageSize, string? search = null);
    Task<int> GetTotalWordsCountAsync(string? search = null);
}


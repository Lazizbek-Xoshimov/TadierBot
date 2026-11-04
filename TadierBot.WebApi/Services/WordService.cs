using TadierBot.WebApi.DTOs.Word;
using TadierBot.WebApi.Models;
using TadierBot.WebApi.Repositories;
using TadierBot.WebApi.Services.Concrete;

namespace TadierBot.WebApi.Services;

public class WordService : IWordService
{
    private readonly IWordRepository _wordRepository;
    private readonly IUserService _userService;
    private readonly ILogger<WordService> _logger;

    public WordService(
        IWordRepository wordRepository,
        IUserService userService,
        ILogger<WordService> logger)
    {
        _wordRepository = wordRepository;
        _userService = userService;
        _logger = logger;
    }

    // ==========================================
    // 1. So'z trenajyori
    // ==========================================

    public async Task<TrainerSessionResponse> GetTrainerSessionAsync(string level, int count = 10)
    {
        var words = await _wordRepository.GetWordsByLevelAsync(level, count);
        var wordDtos = words.Select(MapToDto).ToList();

        return new TrainerSessionResponse
        {
            Level = level,
            TotalCount = wordDtos.Count,
            Words = wordDtos
        };
    }

    public async Task<WordAnswerResponse> ProcessAnswerAsync(long telegramId, WordAnswerRequest request)
    {
        var word = await _wordRepository.GetByIdAsync(request.WordId);
        if (word == null)
        {
            throw new ArgumentException("Bunday so'z topilmadi.");
        }

        // 1. Foydalanuvchining so'z bo'yicha progressini olish yoki yangilash
        var progress = await _wordRepository.GetUserWordProgressAsync(telegramId, request.WordId)
                       ?? new UserWordProgress
                       {
                           TelegramId = telegramId,
                           WordId = request.WordId,
                           Status = "Learning",
                           CorrectCount = 0,
                           IncorrectCount = 0
                       };

        int earnedScore = 0;
        if (request.IsRemembered)
        {
            progress.CorrectCount++;
            earnedScore = 10; // Bildim (Yodladim) uchun +10 ball

            // Agar kamida 3 marta to'g'ri topsa, to'liq yodlandi deb hisoblanadi
            if (progress.CorrectCount >= 3)
            {
                progress.Status = "Learned";
            }
        }
        else
        {
            progress.IncorrectCount++;
            earnedScore = 2; // Qayta takrorlash uchun rag'batlantiruvchi +2 ball
            progress.Status = "Learning";
        }

        progress.LastReviewedAt = DateTime.UtcNow;
        await _wordRepository.UpsertUserWordProgressAsync(progress);

        // 2. Foydalanuvchining Ball va Streak holatini UserService orqali yangilash
        var userStats = await _userService.AddScoreAndStreakAsync(telegramId, earnedScore);

        return new WordAnswerResponse
        {
            WordId = request.WordId,
            Status = progress.Status,
            EarnedScore = earnedScore,
            TotalScore = userStats.Score,
            StreakDays = userStats.StreakDays
        };
    }

    public async Task<DailyWordResponse?> GetDailyWordAsync()
    {
        int totalCount = await _wordRepository.GetTotalCountAsync();
        if (totalCount == 0) return null;

        var todayTashkent = DateTime.UtcNow.AddHours(5).Date;
        var epoch = new DateTime(2026, 1, 1);
        int dayIndex = (int)(todayTashkent - epoch).TotalDays;
        int offset = ((dayIndex % totalCount) + totalCount) % totalCount;

        var word = await _wordRepository.GetDailyWordAsync(offset);
        if (word == null) return null;

        return new DailyWordResponse
        {
            Id = word.Id,
            Article = word.Article,
            GermanWord = word.GermanWord,
            UzbekTranslation = word.UzbekTranslation,
            ExampleSentenceDe = word.ExampleSentenceDe,
            ExampleSentenceUz = word.ExampleSentenceUz,
            Level = word.Level,
            AudioUrl = word.AudioUrl
        };
    }

    public async Task<WordStatsResponse> GetWordStatsAsync(long telegramId)
    {
        var (learned, learning) = await _wordRepository.GetUserProgressStatsAsync(telegramId);
        int total = await _wordRepository.GetTotalCountAsync();

        return new WordStatsResponse
        {
            TotalLearned = learned,
            TotalLearning = learning,
            TotalWords = total
        };
    }

    // ==========================================
    // 2. Admin CRUD (Boshqaruv paneli)
    // ==========================================

    public async Task<WordDto> CreateWordAsync(WordCreateRequest request)
    {
        var word = new Word
        {
            Article = string.IsNullOrWhiteSpace(request.Article) ? null : request.Article.Trim(),
            GermanWord = request.GermanWord.Trim(),
            UzbekTranslation = request.UzbekTranslation.Trim(),
            ExampleSentenceDe = request.ExampleSentenceDe?.Trim(),
            ExampleSentenceUz = request.ExampleSentenceUz?.Trim(),
            Level = string.IsNullOrWhiteSpace(request.Level) ? "A1" : request.Level.Trim().ToUpperInvariant(),
            Category = request.Category?.Trim(),
            AudioUrl = request.AudioUrl?.Trim(),
            IsDailyWord = request.IsDailyWord,
            DailyWordDate = request.IsDailyWord ? DateTime.UtcNow.Date : null
        };

        int id = await _wordRepository.AddAsync(word);
        word.Id = id;
        return MapToDto(word);
    }

    public async Task<bool> UpdateWordAsync(WordUpdateRequest request)
    {
        var existing = await _wordRepository.GetByIdAsync(request.Id);
        if (existing == null) return false;

        existing.Article = string.IsNullOrWhiteSpace(request.Article) ? null : request.Article.Trim();
        existing.GermanWord = request.GermanWord.Trim();
        existing.UzbekTranslation = request.UzbekTranslation.Trim();
        existing.ExampleSentenceDe = request.ExampleSentenceDe?.Trim();
        existing.ExampleSentenceUz = request.ExampleSentenceUz?.Trim();
        existing.Level = string.IsNullOrWhiteSpace(request.Level) ? "A1" : request.Level.Trim().ToUpperInvariant();
        existing.Category = request.Category?.Trim();
        existing.AudioUrl = request.AudioUrl?.Trim();
        existing.IsDailyWord = request.IsDailyWord;

        return await _wordRepository.UpdateAsync(existing);
    }

    public async Task<bool> DeleteWordAsync(int id)
    {
        return await _wordRepository.DeleteAsync(id);
    }

    public async Task<WordDto?> GetWordByIdAsync(int id)
    {
        var word = await _wordRepository.GetByIdAsync(id);
        return word != null ? MapToDto(word) : null;
    }

    public async Task<IEnumerable<WordDto>> GetPagedWordsAsync(int pageNumber, int pageSize, string? search = null)
    {
        var words = await _wordRepository.GetAllPagedAsync(pageNumber, pageSize, search);
        return words.Select(MapToDto);
    }

    public async Task<int> GetTotalWordsCountAsync(string? search = null)
    {
        return await _wordRepository.GetTotalCountAsync(search);
    }

    // ==========================================
    // Yordamchi metodlar (Mapping)
    // ==========================================

    private static WordDto MapToDto(Word word)
    {
        return new WordDto
        {
            Id = word.Id,
            Article = word.Article,
            GermanWord = word.GermanWord,
            UzbekTranslation = word.UzbekTranslation,
            ExampleSentenceDe = word.ExampleSentenceDe,
            ExampleSentenceUz = word.ExampleSentenceUz,
            Level = word.Level,
            AudioUrl = word.AudioUrl,
            IsDailyWord = word.IsDailyWord
        };
    }
}


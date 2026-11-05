using TadierBot.WebApi.DTOs.Quiz;
using TadierBot.WebApi.Models;
using TadierBot.WebApi.Repositories;
using TadierBot.WebApi.Services.Concrete;

namespace TadierBot.WebApi.Services;

public class QuizService : IQuizService
{
    private readonly IQuizRepository _quizRepository;
    private readonly IUserService _userService;
    private readonly IWebHostEnvironment _webHostEnvironment;
    private readonly ILogger<QuizService> _logger;

    public QuizService(
        IQuizRepository quizRepository,
        IUserService userService,
        IWebHostEnvironment webHostEnvironment,
        ILogger<QuizService> logger)
    {
        _quizRepository = quizRepository;
        _userService = userService;
        _webHostEnvironment = webHostEnvironment;
        _logger = logger;
    }

    // ==========================================
    // 1. Foydalanuvchi: 20 talik Daraja testi
    // ==========================================

    public async Task<QuizTestResponse> GetPlacementTestAsync()
    {
        var response = new QuizTestResponse();

        // A. 10 ta Reading savollarini yig'ish
        var readingPassages = await AssemblePassagesForTestAsync("Reading", targetCount: 10);
        response.ReadingPassages = readingPassages;
        response.TotalReadingQuestions = readingPassages.Sum(p => p.Questions.Count);

        // B. 10 ta Listening savollarini yig'ish
        var listeningPassages = await AssemblePassagesForTestAsync("Listening", targetCount: 10);
        response.ListeningPassages = listeningPassages;
        response.TotalListeningQuestions = listeningPassages.Sum(p => p.Questions.Count);

        response.TotalQuestions = response.TotalReadingQuestions + response.TotalListeningQuestions;
        return response;
    }

    private async Task<List<QuizPassageDto>> AssemblePassagesForTestAsync(string type, int targetCount)
    {
        var passages = (await _quizRepository.GetAllPassagesAsync(type)).ToList();
        if (passages.Count == 0) return new List<QuizPassageDto>();

        var passageIds = passages.Select(p => p.Id);
        var allQuestions = (await _quizRepository.GetQuestionsByPassageIdsAsync(passageIds)).ToList();

        // Savollarni tegishli passage'lar bo'yicha guruhlash
        var questionsByPassage = allQuestions
            .GroupBy(q => q.PassageId)
            .ToDictionary(g => g.Key, g => g.OrderBy(q => q.OrderIndex).ToList());

        // Faqat ichida savoli bor passage'larni olish va randomlashtirish
        var validPassages = passages
            .Where(p => questionsByPassage.ContainsKey(p.Id) && questionsByPassage[p.Id].Count > 0)
            .OrderBy(_ => Guid.NewGuid())
            .ToList();

        var selectedDtos = new List<QuizPassageDto>();
        int collectedQuestions = 0;

        foreach (var passage in validPassages)
        {
            if (collectedQuestions >= targetCount) break;

            var passageQuestions = questionsByPassage[passage.Id];
            int needed = targetCount - collectedQuestions;
            var takeQuestions = passageQuestions.Take(needed).ToList();

            if (takeQuestions.Count > 0)
            {
                var passageDto = new QuizPassageDto
                {
                    Id = passage.Id,
                    Type = passage.Type,
                    Title = passage.Title,
                    Content = passage.Content,
                    AudioUrl = passage.AudioUrl,
                    Level = passage.Level,
                    Questions = takeQuestions.Select(q => new QuizQuestionDto
                    {
                        Id = q.Id,
                        PassageId = q.PassageId,
                        QuestionText = q.QuestionText,
                        OptionA = q.OptionA,
                        OptionB = q.OptionB,
                        OptionC = q.OptionC,
                        OptionD = q.OptionD,
                        OrderIndex = q.OrderIndex
                    }).ToList()
                };

                selectedDtos.Add(passageDto);
                collectedQuestions += takeQuestions.Count;
            }
        }

        return selectedDtos;
    }

    public async Task<QuizResultResponse> SubmitPlacementTestAsync(long telegramId, QuizSubmitRequest request)
    {
        var questionIds = request.Answers.Select(a => a.QuestionId).Distinct().ToList();
        var correctAnswersMap = await _quizRepository.GetCorrectAnswersByIdsAsync(questionIds);

        int correctCount = 0;
        foreach (var answer in request.Answers)
        {
            if (correctAnswersMap.TryGetValue(answer.QuestionId, out int correctOpt) &&
                answer.SelectedOption == correctOpt)
            {
                correctCount++;
            }
        }

        int totalQuestions = request.Answers.Count > 0 ? request.Answers.Count : 20;
        double percentage = Math.Round((double)correctCount / totalQuestions * 100, 1);

        // Darajani va beriladigan ballni hisoblash (Goethe/CEFR mezonlari)
        string assignedLevel;
        int earnedScore;

        if (correctCount >= 17)
        {
            assignedLevel = "B2";
            earnedScore = (correctCount * 5) + 20; // Bonus bilan
        }
        else if (correctCount >= 12)
        {
            assignedLevel = "B1";
            earnedScore = (correctCount * 5) + 10; // Bonus bilan
        }
        else if (correctCount >= 7)
        {
            assignedLevel = "A2";
            earnedScore = correctCount * 5;
        }
        else
        {
            assignedLevel = "A1";
            earnedScore = correctCount * 5;
        }

        // Foydalanuvchi profiliga yangi daraja va ballni saqlash
        var userStats = await _userService.SetPlacementTestResultAsync(telegramId, assignedLevel, earnedScore);

        // Natijani tarix jadvaliga yozish
        var attempt = new UserQuizAttempt
        {
            TelegramId = telegramId,
            CorrectAnswersCount = correctCount,
            TotalQuestionsCount = totalQuestions,
            ScoreEarned = earnedScore,
            AssignedLevel = assignedLevel,
            CompletedAt = DateTime.UtcNow
        };
        await _quizRepository.AddAttemptAsync(attempt);

        return new QuizResultResponse
        {
            TotalQuestions = totalQuestions,
            CorrectAnswersCount = correctCount,
            Percentage = percentage,
            AssignedLevel = assignedLevel,
            ScoreEarned = earnedScore,
            UserStats = userStats
        };
    }

    // ==========================================
    // 2. Admin: Matn va Audio materiallar
    // ==========================================

    public async Task<QuizPassage> CreatePassageAsync(QuizPassageCreateRequest request)
    {
        var passage = new QuizPassage
        {
            Type = request.Type,
            Title = request.Title.Trim(),
            Content = request.Content?.Trim(),
            AudioUrl = request.AudioUrl?.Trim(),
            Level = request.Level.Trim().ToUpper(),
            CreatedAt = DateTime.UtcNow
        };

        passage.Id = await _quizRepository.AddPassageAsync(passage);
        return passage;
    }

    public async Task<IEnumerable<QuizPassage>> GetAllPassagesAsync(string? type = null)
    {
        return await _quizRepository.GetAllPassagesAsync(type);
    }

    public async Task<bool> DeletePassageAsync(int id)
    {
        return await _quizRepository.DeletePassageAsync(id);
    }

    // ==========================================
    // 3. Admin: Savollar (QuizQuestions)
    // ==========================================

    public async Task<QuizQuestion> CreateQuestionAsync(QuizQuestionCreateRequest request)
    {
        var question = new QuizQuestion
        {
            PassageId = request.PassageId,
            QuestionText = request.QuestionText.Trim(),
            OptionA = request.OptionA.Trim(),
            OptionB = request.OptionB.Trim(),
            OptionC = string.IsNullOrWhiteSpace(request.OptionC) ? null : request.OptionC.Trim(),
            OptionD = string.IsNullOrWhiteSpace(request.OptionD) ? null : request.OptionD.Trim(),
            CorrectOption = request.CorrectOption,
            OrderIndex = request.OrderIndex,
            CreatedAt = DateTime.UtcNow
        };

        question.Id = await _quizRepository.AddQuestionAsync(question);
        return question;
    }

    public async Task<IEnumerable<QuizAdminQuestionDto>> GetAllAdminQuestionsAsync(string? level = null, string? type = null)
    {
        return await _quizRepository.GetAllAdminQuestionsAsync(level, type);
    }

    public async Task<bool> DeleteQuestionAsync(int id)
    {
        return await _quizRepository.DeleteQuestionAsync(id);
    }

    // ==========================================
    // 4. Audio fayllarni serverga saqlash
    // ==========================================

    public async Task<string> SaveAudioFileAsync(IFormFile file)
    {
        if (file == null || file.Length == 0)
            throw new ArgumentException("Audio fayl tanlanmagan.");

        var allowedExtensions = new[] { ".mp3", ".wav", ".ogg", ".m4a", ".aac" };
        var extension = Path.GetExtension(file.FileName).ToLowerInvariant();
        if (!allowedExtensions.Contains(extension))
            throw new ArgumentException("Faqat audio fayllar (.mp3, .wav, .ogg, .m4a) ruxsat etiladi.");

        var webRoot = _webHostEnvironment.WebRootPath ?? Path.Combine(Directory.GetCurrentDirectory(), "wwwroot");
        var uploadsFolder = Path.Combine(webRoot, "audio");

        if (!Directory.Exists(uploadsFolder))
        {
            Directory.CreateDirectory(uploadsFolder);
        }

        var uniqueFileName = $"{Guid.NewGuid():N}{extension}";
        var filePath = Path.Combine(uploadsFolder, uniqueFileName);

        using (var stream = new FileStream(filePath, FileMode.Create))
        {
            await file.CopyToAsync(stream);
        }

        return $"/audio/{uniqueFileName}";
    }
}


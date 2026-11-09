using TadierBot.WebApi.DTOs.Quiz;
using TadierBot.WebApi.Models;

namespace TadierBot.WebApi.Services;

public interface IQuizService
{
    // 1. Foydalanuvchi: 20 talik Daraja testi (10 ta Reading va 10 ta Listening)
    Task<QuizTestResponse> GetPlacementTestAsync();
    Task<QuizResultResponse> SubmitPlacementTestAsync(long telegramId, QuizSubmitRequest request);

    // 2. Admin: Matn va Audio materiallar (QuizPassages)
    Task<QuizPassage> CreatePassageAsync(QuizPassageCreateRequest request);
    Task<IEnumerable<QuizPassage>> GetAllPassagesAsync(string? type = null);
    Task<bool> DeletePassageAsync(int id);

    // 3. Admin: Savollar (QuizQuestions)
    Task<QuizQuestion> CreateQuestionAsync(QuizQuestionCreateRequest request);
    Task<IEnumerable<QuizAdminQuestionDto>> GetAllAdminQuestionsAsync(string? search = null, string? level = null, string? type = null);
    Task<bool> UpdateQuestionAsync(int id, QuizQuestionCreateRequest request);
    Task<bool> DeleteQuestionAsync(int id);

    // 4. Audio va Matn fayllarni serverga saqlash
    Task<string> SaveAudioFileAsync(IFormFile file);
    Task<QuizFileUploadResponse> SaveTextFileAsync(IFormFile file);
}


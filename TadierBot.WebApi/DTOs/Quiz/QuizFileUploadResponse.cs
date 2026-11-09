namespace TadierBot.WebApi.DTOs.Quiz;

/// <summary>
/// Lesen yoki umumiy material uchun fayl yuklanganda qaytariladigan natija DTO
/// </summary>
public class QuizFileUploadResponse
{
    public string FileUrl { get; set; } = string.Empty;
    public string FileName { get; set; } = string.Empty;
    public string Content { get; set; } = string.Empty;
}

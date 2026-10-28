namespace TadierBot.WebApi.DTOs;

public enum ResourceAddStep
{
    None = 0,
    Title = 1,
    Description = 2,
    Type = 3,
    Category = 4,
    Language = 5,
    Url = 6,
    Confirmation = 7
}

public class ResourceAddState
{
    public ResourceAddStep CurrentStep { get; set; } = ResourceAddStep.None;
    public string Title { get; set; } = string.Empty;
    public string? Description { get; set; }
    public string Type { get; set; } = string.Empty; // Kitob, Video, Maqola
    public int CategoryId { get; set; }
    public string CategoryName { get; set; } = string.Empty;
    public string Language { get; set; } = "uz";
    public string Url { get; set; } = string.Empty;
    public string? TelegramChannelId { get; set; }
    public int? MessageId { get; set; }
    public int? AddedByAdminId { get; set; }
}


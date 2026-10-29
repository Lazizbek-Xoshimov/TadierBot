namespace TadierBot.WebApi.DTOs;

public enum ResourceAddStep
{
    None = 0,
    Title = 1,
    Description = 2,
    Category = 3,
    Language = 4,
    Url = 5,
    Confirmation = 6
}

public class ResourceAddState
{
    public ResourceAddStep CurrentStep { get; set; } = ResourceAddStep.None;
    public string Title { get; set; } = string.Empty;
    public string? Description { get; set; }
    public int CategoryId { get; set; }
    public string CategoryName { get; set; } = string.Empty;
    public string Language { get; set; } = "uz";
    public string Url { get; set; } = string.Empty;
    public string? TelegramChannelId { get; set; }
    public int? MessageId { get; set; }
    public int? AddedByAdminId { get; set; }
}


namespace TadierBot.WebApi.DTOs;

public class ResourceEditState
{
    public int ResourceId { get; set; }
    public int ReturnPage { get; set; }
    public string Field { get; set; } = string.Empty; // "title", "description", "url"
}


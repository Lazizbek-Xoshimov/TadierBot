namespace TadierBot.WebApi.Models;

public class SearchHistory
{
    public int Id { get; set; }
    public int UserId { get; set; }
    public string Query { get; set; } = string.Empty;
    public DateTime CreatedAt { get; set; } = DateTime.UtcNow;
}


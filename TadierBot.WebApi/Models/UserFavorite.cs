namespace TadierBot.WebApi.Models;

public class UserFavorite
{
    public int Id { get; set; }
    public int UserId { get; set; }
    public int ResourceId { get; set; }
    public DateTime CreatedAt { get; set; } = DateTime.UtcNow;
}


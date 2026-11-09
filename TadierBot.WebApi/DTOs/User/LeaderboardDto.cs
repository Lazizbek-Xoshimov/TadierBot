namespace TadierBot.WebApi.DTOs.User;

public class LeaderboardUserDto
{
    public int Rank { get; set; }
    public long TelegramId { get; set; }
    public string FullName { get; set; } = string.Empty;
    public string? Username { get; set; }
    public int Score { get; set; }
    public int TestsCount { get; set; }
    public string Level { get; set; } = "A1";
    public bool IsCurrentUser { get; set; }
}

public class LeaderboardResponse
{
    public List<LeaderboardUserDto> TopUsers { get; set; } = new();
    public LeaderboardUserDto? CurrentUser { get; set; }
}

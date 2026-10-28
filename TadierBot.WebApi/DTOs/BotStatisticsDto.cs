namespace TadierBot.WebApi.DTOs;

public class BotStatisticsDto
{
    public int TotalUsers { get; set; }
    public int TodayActiveUsers { get; set; }
    public int BannedUsers { get; set; }

    public int TotalResources { get; set; }
    public int BooksCount { get; set; }
    public int VideosCount { get; set; }
    public int ArticlesCount { get; set; }

    public List<TopResourceDto> TopResources { get; set; } = new();
    public List<TopCategoryDto> TopCategories { get; set; } = new();
    public List<TopSearchDto> TopSearches { get; set; } = new();
}

public class TopResourceDto
{
    public string Title { get; set; } = string.Empty;
    public int ViewsCount { get; set; }
}

public class TopCategoryDto
{
    public string CategoryName { get; set; } = string.Empty;
    public int ResourceCount { get; set; }
    public int TotalViews { get; set; }
}

public class TopSearchDto
{
    public string Query { get; set; } = string.Empty;
    public int SearchCount { get; set; }
}


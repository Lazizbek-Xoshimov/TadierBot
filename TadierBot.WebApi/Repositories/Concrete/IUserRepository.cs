using TadierBot.WebApi.Common;
using TadierBot.WebApi.Models;

namespace TadierBot.WebApi.Repositories.Concrete;

public interface IUserRepository
{
    Task<User?> GetByIdAsync(int id);
    Task<User?> GetByTelegramIdAsync(long telegramId);
    Task<int> AddOrUpdateAsync(User user);
    Task<bool> IsBannedAsync(long telegramId);
    Task UpdateLastActiveAsync(long telegramId);
    Task<(int TotalUsers, int TodayActiveUsers, int BannedUsers)> GetUserCountsAsync();
    Task<PagedResult<User>> GetPagedUsersAsync(int pageNumber, int pageSize = 5);
    Task<bool> ToggleBanAsync(int userId);
    Task<IReadOnlyList<long>> GetActiveUserTelegramIdsAsync(long excludeTelegramId);
}


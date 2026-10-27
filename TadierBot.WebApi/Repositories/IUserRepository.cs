using TadierBot.WebApi.Models;

namespace TadierBot.WebApi.Repositories;

public interface IUserRepository
{
    Task<User?> GetByTelegramIdAsync(long telegramId);
    Task<int> AddOrUpdateAsync(User user);
    Task<bool> IsBannedAsync(long telegramId);
    Task UpdateLastActiveAsync(long telegramId);
}


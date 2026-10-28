using TadierBot.WebApi.Models;

namespace TadierBot.WebApi.Repositories.Concrete;

public interface IAdminRepository
{
    Task<bool> IsAdminAsync(long telegramId);
    Task<Admin?> GetByTelegramIdAsync(long telegramId);
}


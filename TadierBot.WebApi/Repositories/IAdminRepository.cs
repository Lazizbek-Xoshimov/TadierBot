using TadierBot.WebApi.Models;

namespace TadierBot.WebApi.Repositories;

public interface IAdminRepository
{
    Task<bool> IsAdminAsync(long telegramId);
    Task<Admin?> GetByTelegramIdAsync(long telegramId);
}


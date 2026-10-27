using TadierBot.WebApi.Models;

namespace TadierBot.WebApi.Repositories;

public interface IResourceRepository
{
    Task<IEnumerable<Resource>> GetLatestAsync(int count = 5);
    Task<IEnumerable<Resource>> GetByCategoryIdAsync(int categoryId);
    Task<Resource?> GetByIdAsync(int id);
    Task IncrementViewsCountAsync(int resourceId);
}


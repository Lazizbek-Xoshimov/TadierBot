using TadierBot.WebApi.Common;
using TadierBot.WebApi.Models;

namespace TadierBot.WebApi.Repositories;

public interface IResourceRepository
{
    Task<int> AddAsync(Resource resource);
    Task<bool> UpdateAsync(Resource resource);
    Task<bool> DeleteAsync(int id);
    Task<PagedResult<Resource>> GetPagedAsync(int pageNumber, int pageSize = 5);
    Task<PagedResult<Resource>> SearchPagedAsync(string query, int pageNumber = 1, int pageSize = 5);
    Task<IEnumerable<Resource>> GetLatestAsync(int count = 5);
    Task<IEnumerable<Resource>> GetByCategoryIdAsync(int categoryId);
    Task<PagedResult<Resource>> GetPagedByCategoryIdAsync(int categoryId, int pageNumber, int pageSize = 5);
    Task<PagedResult<Resource>> GetPagedByLanguageAsync(string language, int pageNumber, int pageSize = 5);
    Task<Resource?> GetByIdAsync(int id);
    Task IncrementViewsCountAsync(int resourceId);
}

using TadierBot.WebApi.Data;
using TadierBot.WebApi.Repositories;
using TadierBot.WebApi.Repositories.Concrete;
using TadierBot.WebApi.Services;
using TadierBot.WebApi.Services.Concrete;

namespace TadierBot.WebApi.Extensions;

public static class ServiceExtensions
{
    public static IServiceCollection AddApplicationServices(this IServiceCollection services)
    {
        // 1. Database Connection Factory
        services.AddSingleton<IDbConnectionFactory, DbConnectionFactory>();

        // 2. Repositories
        services.AddScoped<IUserRepository, UserRepository>();
        services.AddScoped<IAdminRepository, AdminRepository>();
        services.AddScoped<ICategoryRepository, CategoryRepository>();
        services.AddScoped<IResourceRepository, ResourceRepository>();
        services.AddScoped<IStatisticsRepository, StatisticsRepository>();

        // 3. Services
        services.AddScoped<IResourceService, ResourceService>();
        services.AddScoped<IStatisticsService, StatisticsService>();
        services.AddScoped<IUserService, UserService>();
        services.AddScoped<IAdminService, AdminService>();
        services.AddScoped<IUpdateHandlerService, UpdateHandlerService>();

        return services;
    }
}

using TadierBot.WebApi.BackgroundServices;
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
        services.AddScoped<ISearchHistoryRepository, SearchHistoryRepository>();

        // 3. Services
        services.AddScoped<IResourceService, ResourceService>();
        services.AddScoped<IStatisticsService, StatisticsService>();
        services.AddScoped<IBroadcastService, BroadcastService>();
        services.AddScoped<ISearchService, SearchService>();
        services.AddScoped<ICategoryService, CategoryService>();
        services.AddScoped<IUserService, UserService>();
        services.AddScoped<IAdminService, AdminService>();
        services.AddScoped<IUpdateHandlerService, UpdateHandlerService>();

        // 4. Background Services (24/7 Telegram Polling)
        services.AddHostedService<TelegramPollingService>();

        return services;
    }
}

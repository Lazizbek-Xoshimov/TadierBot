using Microsoft.Extensions.Options;
using Telegram.Bot;
using TadierBot.WebApi.Configurations;
using TadierBot.WebApi.Data;
using TadierBot.WebApi.Repositories;
using TadierBot.WebApi.Services;

var builder = WebApplication.CreateBuilder(args);

// 1. Controllerlar va OpenAPI
builder.Services.AddControllers();
builder.Services.AddOpenApi();

// 2. Bot konfiguratsiyasi
builder.Services.Configure<BotConfiguration>(
    builder.Configuration.GetSection(BotConfiguration.Configuration));

// 3. Telegram Bot Client
builder.Services.AddHttpClient("telegram_bot_client")
    .AddTypedClient<ITelegramBotClient>((httpClient, sp) =>
    {
        var botConfig = sp.GetRequiredService<IOptions<BotConfiguration>>().Value;
        return new TelegramBotClient(botConfig.BotToken, httpClient);
    });

// 4. MemoryCache (Keyingi FSM va kesh uchun)
builder.Services.AddMemoryCache();

// 5. Database Connection Factory (appsettings.json dagi DefaultConnection orqali)
builder.Services.AddSingleton<IDbConnectionFactory, DbConnectionFactory>();

// 6. Repositories
builder.Services.AddScoped<IUserRepository, UserRepository>();
builder.Services.AddScoped<ICategoryRepository, CategoryRepository>();
builder.Services.AddScoped<IResourceRepository, ResourceRepository>();

// 7. Telegram Services
builder.Services.AddScoped<IUpdateHandlerService, UpdateHandlerService>();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.MapOpenApi();
}

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();

using Microsoft.Extensions.Options;
using Telegram.Bot;
using TadierBot.WebApi.Configurations;
using TadierBot.WebApi.Extensions;

var builder = WebApplication.CreateBuilder(args);

// 1. Controllerlar va OpenAPI
builder.Services.AddControllers();
builder.Services.AddOpenApi();

// 2. CORS - Konfiguratsiyadan ruxsat etilgan domenlarni dinamik yuklash
const string telegramMiniAppPolicy = "TelegramMiniAppPolicy";
var allowedOrigins = builder.Configuration
    .GetSection("CorsSettings:AllowedOrigins")
    .Get<string[]>() ?? [];

builder.Services.AddCors(options =>
{
    options.AddPolicy(telegramMiniAppPolicy, policy =>
    {
        if (allowedOrigins.Length > 0)
        {
            policy.WithOrigins(allowedOrigins)
                  .AllowAnyMethod()
                  .AllowAnyHeader();
        }
    });
});

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

// 4. MemoryCache
builder.Services.AddMemoryCache();

// 5. Application Services (Database, Repositories va Services)
builder.Services.AddApplicationServices();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.MapOpenApi();
}

app.UseHttpsRedirection();

app.UseCors(telegramMiniAppPolicy);

app.UseStaticFiles();

app.UseAuthorization();

app.MapControllers();

// Health check endpoint (Uptime monitoring uchun, xavfsiz va minimal)
app.MapGet("/", () => Results.Ok(new
{
    Status = "Healthy",
    Timestamp = DateTime.UtcNow
}));

app.Run();
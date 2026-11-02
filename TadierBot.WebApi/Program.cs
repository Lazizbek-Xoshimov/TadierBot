using Microsoft.Extensions.Options;
using Telegram.Bot;
using TadierBot.WebApi.Configurations;
using TadierBot.WebApi.Extensions;

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

app.UseAuthorization();

app.MapControllers();

// Health check endpoint (Uptime monitoring uchun, xavfsiz va minimal)
app.MapGet("/", () => Results.Ok(new
{
    Status = "Healthy",
    Timestamp = DateTime.UtcNow
}));

app.Run();
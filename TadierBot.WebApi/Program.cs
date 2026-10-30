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

// Health / Status endpoint
app.MapGet("/", () => Results.Ok(new
{
    Status = "Online",
    Message = "TadierBot 24/7 ishlab turibdi!",
    Timestamp = DateTime.UtcNow
}));

// Diagnostika: Baza bilan aloqani tekshirish
app.MapGet("/api/bot/test-db", async (TadierBot.WebApi.Data.IDbConnectionFactory factory, IConfiguration config) =>
{
    try
    {
        using var conn = factory.CreateConnection();
        conn.Open();

        // 1. Users ustunlarini tekshirish
        using var cmdCols = conn.CreateCommand();
        cmdCols.CommandText = "SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users'";
        var cols = new List<string>();
        using (var reader = cmdCols.ExecuteReader())
        {
            while (reader.Read()) cols.Add(reader.GetString(0));
        }

        // 2. Users sonini tekshirish
        using var cmd = conn.CreateCommand();
        cmd.CommandText = "SELECT COUNT(1) FROM Users";
        var count = cmd.ExecuteScalar();

        // 3. Test user yozishga urinib ko'rish
        string testInsertResult = "OK";
        try
        {
            using var cmdInsert = conn.CreateCommand();
            cmdInsert.CommandText = """
                IF EXISTS (SELECT 1 FROM Users WHERE TelegramId = 111222333)
                    SELECT 1;
                ELSE
                    INSERT INTO Users (TelegramId, FullName, Username, LanguageCode, IsBanned, CreatedAt, LastActiveAt)
                    VALUES (111222333, 'Test Diagnostics', 'test', 'uz', 0, SYSUTCDATETIME(), SYSUTCDATETIME());
                """;
            cmdInsert.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            testInsertResult = "INSERT XATOSI: " + ex.Message;
        }

        return Results.Ok(new
        {
            Status = "Baza bilan aloqa 100% muvaffaqiyatli!",
            UsersJadvaliUstunlari = cols,
            FoydalanuvchilarSoni = count,
            TestUserYozishNatijasi = testInsertResult,
            ServerTime = DateTime.UtcNow
        });
    }
    catch (Exception ex)
    {
        return Results.Problem(detail: ex.ToString(), title: "Baza bilan ulanishda xatolik!");
    }
});

// Polling holatini tekshirish
app.MapGet("/api/bot/polling-status", () => Results.Ok(new
{
    IsRunning = TadierBot.WebApi.BackgroundServices.PollingDiagnostics.IsRunning,
    UpdatesReceived = TadierBot.WebApi.BackgroundServices.PollingDiagnostics.UpdatesReceivedCount,
    LastUpdate = TadierBot.WebApi.BackgroundServices.PollingDiagnostics.LastUpdateInfo,
    LastUpdateTime = TadierBot.WebApi.BackgroundServices.PollingDiagnostics.LastUpdateTime,
    LastError = TadierBot.WebApi.BackgroundServices.PollingDiagnostics.LastError,
    ServerTime = DateTime.UtcNow
}));

app.Run();

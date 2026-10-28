using System.Text;
using Telegram.Bot;
using Telegram.Bot.Types.Enums;
using Telegram.Bot.Types.ReplyMarkups;
using TadierBot.WebApi.Common;
using TadierBot.WebApi.Extensions;
using TadierBot.WebApi.Helpers;
using TadierBot.WebApi.Repositories;

namespace TadierBot.WebApi.Services;

public class StatisticsService : IStatisticsService
{
    private readonly ITelegramBotClient _botClient;
    private readonly IStatisticsRepository _statisticsRepository;
    private readonly ILogger<StatisticsService> _logger;

    public StatisticsService(
        ITelegramBotClient botClient,
        IStatisticsRepository statisticsRepository,
        ILogger<StatisticsService> logger)
    {
        _botClient = botClient;
        _statisticsRepository = statisticsRepository;
        _logger = logger;
    }

    public async Task ShowStatisticsAsync(long chatId, int messageId, CancellationToken cancellationToken)
    {
        var stats = await _statisticsRepository.GetStatisticsAsync();

        var sb = new StringBuilder();
        sb.AppendLine($"📊 <b>Bot Statistikasi</b> <i>({DateTime.UtcNow.ToTashkentString()} holatiga)</i>:\n");

        sb.AppendLine("👥 <b>Foydalanuvchilar:</b>");
        sb.AppendLine($"• Jami: <b>{stats.TotalUsers}</b> ta");
        sb.AppendLine($"• Bugungi faol: <b>{stats.TodayActiveUsers}</b> ta");
        sb.AppendLine($"• Bloklanganlar: <b>{stats.BannedUsers}</b> ta\n");

        sb.AppendLine("📚 <b>Manbalar holati:</b>");
        sb.AppendLine($"• Jami manbalar: <b>{stats.TotalResources}</b> ta");
        sb.AppendLine($"  ├ 📘 Kitoblar: {stats.BooksCount} ta");
        sb.AppendLine($"  ├ 🎬 Videolar: {stats.VideosCount} ta");
        sb.AppendLine($"  └ 📄 Maqolalar: {stats.ArticlesCount} ta\n");

        if (stats.TopResources.Any())
        {
            sb.AppendLine("🔥 <b>Eng ko'p ko'rilgan manbalar (Top 5):</b>");
            for (int i = 0; i < stats.TopResources.Count; i++)
            {
                sb.AppendLine($"{i + 1}. {stats.TopResources[i].Title} — 👁 <b>{stats.TopResources[i].ViewsCount}</b> ta");
            }
            sb.AppendLine();
        }

        if (stats.TopCategories.Any(c => c.ResourceCount > 0))
        {
            sb.AppendLine("🗂 <b>Eng ommabop kategoriyalar:</b>");
            var activeCats = stats.TopCategories.Where(c => c.ResourceCount > 0).ToList();
            for (int i = 0; i < activeCats.Count; i++)
            {
                sb.AppendLine($"{i + 1}. {activeCats[i].CategoryName} ({activeCats[i].ResourceCount} ta manba, 👁 {activeCats[i].TotalViews} ta ko'rish)");
            }
            sb.AppendLine();
        }

        if (stats.TopSearches.Any())
        {
            sb.AppendLine("🔍 <b>Eng ko'p qidirilgan so'rovlar:</b>");
            for (int i = 0; i < stats.TopSearches.Count; i++)
            {
                sb.AppendLine($"{i + 1}. \"{stats.TopSearches[i].Query}\" ({stats.TopSearches[i].SearchCount} marta)");
            }
            sb.AppendLine();
        }

        var backKeyboard = new InlineKeyboardMarkup(new[]
        {
            new[] { InlineKeyboardButton.WithCallbackData("⬅️ Admin Panelga qaytish", "adm_back_to_menu") }
        });

        await _botClient.SendOrEditMessageAsync(chatId, messageId, sb.ToString(), ParseMode.Html, backKeyboard, cancellationToken);
    }
}


using System.Text;
using Microsoft.Extensions.Caching.Memory;
using Telegram.Bot;
using Telegram.Bot.Types;
using Telegram.Bot.Types.Enums;
using TadierBot.WebApi.Common.Constants;
using TadierBot.WebApi.Extensions;
using TadierBot.WebApi.Helpers;
using TadierBot.WebApi.Keyboards;
using TadierBot.WebApi.Models;
using TadierBot.WebApi.Repositories;

namespace TadierBot.WebApi.Services;

public class SearchService : ISearchService
{
    private readonly ITelegramBotClient _botClient;
    private readonly IResourceRepository _resourceRepository;
    private readonly ICategoryRepository _categoryRepository;
    private readonly ISearchHistoryRepository _searchHistoryRepository;
    private readonly IMemoryCache _cache;
    private readonly ILogger<SearchService> _logger;

    public SearchService(
        ITelegramBotClient botClient,
        IResourceRepository resourceRepository,
        ICategoryRepository categoryRepository,
        ISearchHistoryRepository searchHistoryRepository,
        IMemoryCache cache,
        ILogger<SearchService> logger)
    {
        _botClient = botClient;
        _resourceRepository = resourceRepository;
        _categoryRepository = categoryRepository;
        _searchHistoryRepository = searchHistoryRepository;
        _cache = cache;
        _logger = logger;
    }

    private static string GetActiveCacheKey(long telegramId) => $"search_active_{telegramId}";
    private static string GetLastQueryCacheKey(long telegramId) => $"search_lastquery_{telegramId}";

    public bool IsUserSearching(long telegramId)
    {
        return _cache.TryGetValue(GetActiveCacheKey(telegramId), out bool isActive) && isActive;
    }

    public async Task StartSearchPromptAsync(long chatId, long telegramId, CancellationToken cancellationToken)
    {
        _cache.Set(GetActiveCacheKey(telegramId), true, TimeSpan.FromMinutes(10));

        string text = """
            🔍 <b>Qidiruv bo'limi</b>

            Qidirmoqchi bo'lgan kalit so'zingizni yozing (masalan: <i>kitob, grammar, video, darslik</i>):
            """;

        await _botClient.SendMessage(
            chatId: chatId,
            text: text,
            parseMode: ParseMode.Html,
            replyMarkup: SearchKeyboard.CreatePrompt(),
            cancellationToken: cancellationToken);
    }

    public async Task HandleSearchInputAsync(long chatId, long telegramId, string query, CancellationToken cancellationToken)
    {
        _cache.Remove(GetActiveCacheKey(telegramId));
        string cleanQuery = query.Trim();
        _cache.Set(GetLastQueryCacheKey(telegramId), cleanQuery, TimeSpan.FromHours(1));

        // Qidiruv tarixini bazaga yozish (Statistika uchun)
        try
        {
            await _searchHistoryRepository.LogSearchAsync(telegramId, cleanQuery);
        }
        catch (Exception ex)
        {
            _logger.LogWarning(ex, "Qidiruv tarixini yozishda xatolik bo'ldi: {Query}", cleanQuery);
        }

        await ShowSearchResultsAsync(chatId, null, cleanQuery, 1, cancellationToken);
    }

    private async Task ShowSearchResultsAsync(long chatId, int? messageId, string query, int pageNumber, CancellationToken cancellationToken)
    {
        const int pageSize = 5;
        var pagedResult = await _resourceRepository.SearchPagedAsync(query, pageNumber, pageSize);
        var items = pagedResult.Items.ToList();

        if (pagedResult.TotalCount == 0)
        {
            string emptyText = $"""
                🔍 "<b>{query}</b>" so'rovi bo'yicha hech qanday manba topilmadi.

                Boshqa kalit so'z bilan qidirib ko'ring yoki kategoriyalar bo'limidan foydalaning.
                """;

            await _botClient.SendOrEditMessageAsync(
                chatId: chatId,
                messageId: messageId,
                text: emptyText,
                parseMode: ParseMode.Html,
                replyMarkup: SearchKeyboard.CreateEmpty(),
                cancellationToken: cancellationToken);
            return;
        }

        var sb = new StringBuilder();
        sb.AppendLine($"🔍 <b>Qidiruv natijalari:</b> \"<i>{query}</i>\" <i>({pagedResult.PageNumber}/{pagedResult.TotalPages}-sahifa)</i>\n");

        for (int i = 0; i < items.Count; i++)
        {
            string numEmoji = i < EmojiConstants.NumberEmojis.Length ? EmojiConstants.NumberEmojis[i] : $"{i + 1}.";
            string lang = !string.IsNullOrWhiteSpace(items[i].Language) ? items[i].Language.ToUpper() : "UZ";
            sb.AppendLine($"{numEmoji} <b>{items[i].Title}</b> - {lang}");
        }

        sb.AppendLine("\n<i>Batafsil ma'lumot va manba linki uchun quyidagi raqamlardan birini tanlang 👇</i>");

        var keyboard = SearchKeyboard.CreateResults(pagedResult.PageNumber, pagedResult.TotalPages, items);

        await _botClient.SendOrEditMessageAsync(
            chatId: chatId,
            messageId: messageId,
            text: sb.ToString(),
            parseMode: ParseMode.Html,
            replyMarkup: keyboard,
            cancellationToken: cancellationToken);
    }

    public async Task HandleCallbackAsync(CallbackQuery callbackQuery, CancellationToken cancellationToken)
    {
        if (callbackQuery.Message is null)
            return;

        long telegramId = callbackQuery.From.Id;
        long chatId = callbackQuery.Message.Chat.Id;
        int messageId = callbackQuery.Message.MessageId;
        string data = callbackQuery.Data ?? string.Empty;

        if (data == "search_noop")
        {
            await _botClient.AnswerCallbackQuery(callbackQuery.Id, cancellationToken: cancellationToken);
            return;
        }

        if (data == "search_cancel")
        {
            await _botClient.AnswerCallbackQuery(callbackQuery.Id, cancellationToken: cancellationToken);
            await CancelSearchAsync(chatId, telegramId, cancellationToken);
            return;
        }

        if (data == "search_again")
        {
            await _botClient.AnswerCallbackQuery(callbackQuery.Id, cancellationToken: cancellationToken);
            await StartSearchPromptAsync(chatId, telegramId, cancellationToken);
            return;
        }

        if (data == "search_goto_categories")
        {
            await _botClient.AnswerCallbackQuery(callbackQuery.Id, cancellationToken: cancellationToken);
            await ShowCategoriesListAsync(chatId, cancellationToken);
            return;
        }

        // search_page_{pageNumber}
        if (data.StartsWith("search_page_"))
        {
            if (int.TryParse(data.Replace("search_page_", ""), out int pageNumber))
            {
                if (_cache.TryGetValue(GetLastQueryCacheKey(telegramId), out string? lastQuery) && !string.IsNullOrWhiteSpace(lastQuery))
                {
                    await _botClient.AnswerCallbackQuery(callbackQuery.Id, cancellationToken: cancellationToken);
                    await ShowSearchResultsAsync(chatId, messageId, lastQuery, pageNumber, cancellationToken);
                    return;
                }
            }

            await _botClient.AnswerCallbackQuery(callbackQuery.Id, text: "Qidiruv muddati eskirgan. Qaytadan qidiring.", showAlert: true, cancellationToken: cancellationToken);
            return;
        }

        // search_view_{resourceId}_{returnPage}
        if (data.StartsWith("search_view_"))
        {
            var parts = data.Split('_');
            if (parts.Length >= 4 && int.TryParse(parts[2], out int resourceId) && int.TryParse(parts[3], out int returnPage))
            {
                await _botClient.AnswerCallbackQuery(callbackQuery.Id, cancellationToken: cancellationToken);
                await ShowResourceDetailsAsync(chatId, messageId, resourceId, returnPage, cancellationToken);
                return;
            }
        }

        await _botClient.AnswerCallbackQuery(callbackQuery.Id, cancellationToken: cancellationToken);
    }

    private async Task ShowResourceDetailsAsync(long chatId, int messageId, int resourceId, int returnPage, CancellationToken cancellationToken)
    {
        var resource = await _resourceRepository.GetByIdAsync(resourceId);
        if (resource is null)
        {
            await _botClient.EditMessageText(
                chatId: chatId,
                messageId: messageId,
                text: "Kechirasiz, ushbu manba topilmadi.",
                replyMarkup: SearchKeyboard.CreateDetails(returnPage),
                cancellationToken: cancellationToken);
            return;
        }

        // Ko'rishlar sonini oshiramiz
        await _resourceRepository.IncrementViewsCountAsync(resourceId);

        var keyboard = SearchKeyboard.CreateDetails(returnPage);

        await _botClient.EditMessageText(
            chatId: chatId,
            messageId: messageId,
            text: resource.ToDetailsHtml(),
            parseMode: ParseMode.Html,
            replyMarkup: keyboard,
            cancellationToken: cancellationToken);
    }

    private async Task ShowCategoriesListAsync(long chatId, CancellationToken cancellationToken)
    {
        var categories = (await _categoryRepository.GetAllAsync()).ToList();

        if (!categories.Any())
        {
            await _botClient.SendMessage(
                chatId: chatId,
                text: "Hozircha kategoriyalar mavjud emas.",
                cancellationToken: cancellationToken);
            return;
        }

        var sb = new StringBuilder();
        sb.AppendLine("🗂 <b>Mavjud kategoriyalar:</b>\n");

        for (int i = 0; i < categories.Count; i++)
        {
            sb.AppendLine($"{i + 1}. {categories[i].Name}");
            if (!string.IsNullOrWhiteSpace(categories[i].Description))
            {
                sb.AppendLine($"   <i>{categories[i].Description}</i>");
            }
        }

        await _botClient.SendMessage(
            chatId: chatId,
            text: sb.ToString(),
            parseMode: ParseMode.Html,
            cancellationToken: cancellationToken);
    }

    public async Task CancelSearchAsync(long chatId, long telegramId, CancellationToken cancellationToken)
    {
        _cache.Remove(GetActiveCacheKey(telegramId));
        await _botClient.SendMessage(
            chatId: chatId,
            text: "❌ Qidiruv bekor qilindi.",
            cancellationToken: cancellationToken);
    }
}


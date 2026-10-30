using System.Text;
using Telegram.Bot;
using Telegram.Bot.Types;
using Telegram.Bot.Types.Enums;
using TadierBot.WebApi.Common.Constants;
using TadierBot.WebApi.Extensions;
using TadierBot.WebApi.Helpers;
using TadierBot.WebApi.Keyboards;
using TadierBot.WebApi.Repositories;

namespace TadierBot.WebApi.Services;

public class LanguageService : ILanguageService
{
    private readonly ITelegramBotClient _botClient;
    private readonly IResourceRepository _resourceRepository;
    private readonly ILogger<LanguageService> _logger;

    public LanguageService(
        ITelegramBotClient botClient,
        IResourceRepository resourceRepository,
        ILogger<LanguageService> logger)
    {
        _botClient = botClient;
        _resourceRepository = resourceRepository;
        _logger = logger;
    }

    public async Task ShowLanguagesAsync(long chatId, int? messageId, CancellationToken cancellationToken)
    {
        string text = """
            🌐 <b>Til bo'yicha manbalarni saralash</b>

            Qaysi tildagi manbalarni ko'rmoqchisiz? Quyidagi tillardan birini tanlang 👇
            """;

        var keyboard = LanguageKeyboard.CreateLanguageList();

        await _botClient.SendOrEditMessageAsync(
            chatId: chatId,
            messageId: messageId,
            text: text,
            parseMode: ParseMode.Html,
            replyMarkup: keyboard,
            cancellationToken: cancellationToken);
    }

    public async Task ShowLanguageResourcesAsync(long chatId, int messageId, string language, int pageNumber, CancellationToken cancellationToken)
    {
        string langName = LanguageKeyboard.GetLanguageName(language);

        const int pageSize = 5;
        var pagedResult = await _resourceRepository.GetPagedByLanguageAsync(language, pageNumber, pageSize);
        var items = pagedResult.Items.ToList();

        if (pagedResult.TotalCount == 0)
        {
            string emptyText = $"""
                ℹ️ <b>{langName}</b> tilida hozircha manbalar mavjud emas.

                Yangi foydali materiallar tez orada joylanadi!
                """;

            await _botClient.EditMessageText(
                chatId: chatId,
                messageId: messageId,
                text: emptyText,
                parseMode: ParseMode.Html,
                replyMarkup: LanguageKeyboard.CreateEmpty(),
                cancellationToken: cancellationToken);
            return;
        }

        var sb = new StringBuilder();
        sb.AppendLine($"🌐 <b>{langName} tilidagi manbalar</b> <i>({pagedResult.PageNumber}/{pagedResult.TotalPages}-sahifa)</i>:\n");

        for (int i = 0; i < items.Count; i++)
        {
            string numEmoji = i < EmojiConstants.NumberEmojis.Length ? EmojiConstants.NumberEmojis[i] : $"{i + 1}.";
            string cat = items[i].CategoryName ?? "Umumiy";
            sb.AppendLine($"{numEmoji} <b>{items[i].Title}</b> — 🗂 {cat}");
        }

        sb.AppendLine("\n<i>Batafsil ma'lumot va manba linki uchun quyidagi raqamlardan birini tanlang 👇</i>");

        var keyboard = LanguageKeyboard.CreateLanguageResources(language, pagedResult.PageNumber, pagedResult.TotalPages, items);

        await _botClient.EditMessageText(
            chatId: chatId,
            messageId: messageId,
            text: sb.ToString(),
            parseMode: ParseMode.Html,
            replyMarkup: keyboard,
            cancellationToken: cancellationToken);
    }

    public async Task ShowResourceDetailsAsync(long chatId, int messageId, string language, int resourceId, int returnPage, CancellationToken cancellationToken)
    {
        var resource = await _resourceRepository.GetByIdAsync(resourceId);
        if (resource is null)
        {
            await _botClient.EditMessageText(
                chatId: chatId,
                messageId: messageId,
                text: "Kechirasiz, ushbu manba topilmadi.",
                replyMarkup: LanguageKeyboard.CreateDetails(language, returnPage),
                cancellationToken: cancellationToken);
            return;
        }

        await _resourceRepository.IncrementViewsCountAsync(resourceId);

        // DRY: Yagona manba kartochkasi helperi
        string detailsHtml = resource.ToDetailsHtml();
        var keyboard = LanguageKeyboard.CreateDetails(language, returnPage);

        await _botClient.EditMessageText(
            chatId: chatId,
            messageId: messageId,
            text: detailsHtml,
            parseMode: ParseMode.Html,
            replyMarkup: keyboard,
            cancellationToken: cancellationToken);
    }

    public async Task HandleCallbackAsync(CallbackQuery callbackQuery, CancellationToken cancellationToken)
    {
        if (callbackQuery.Message is null)
            return;

        long chatId = callbackQuery.Message.Chat.Id;
        int messageId = callbackQuery.Message.MessageId;
        string data = callbackQuery.Data ?? string.Empty;

        // 1. Tillar ro'yxatiga qaytish
        if (data == "lang_back_list")
        {
            await ShowLanguagesAsync(chatId, messageId, cancellationToken);
            return;
        }

        if (data == "lang_noop")
        {
            return;
        }

        // 2. Til bo'yicha paginatsiya: lang_sel_{language}_{page}
        if (data.StartsWith("lang_sel_"))
        {
            var parts = data.Split('_');
            if (parts.Length >= 4 &&
                int.TryParse(parts[3], out int targetPage))
            {
                string language = parts[2];
                await ShowLanguageResourcesAsync(chatId, messageId, language, targetPage, cancellationToken);
            }
            return;
        }

        // 3. Til bo'yicha manba tafsilotlari: lang_view_{language}_{resourceId}_{returnPage}
        if (data.StartsWith("lang_view_"))
        {
            var parts = data.Split('_');
            if (parts.Length >= 5 &&
                int.TryParse(parts[3], out int resourceId) &&
                int.TryParse(parts[4], out int returnPage))
            {
                string language = parts[2];
                await ShowResourceDetailsAsync(chatId, messageId, language, resourceId, returnPage, cancellationToken);
            }
        }
    }
}

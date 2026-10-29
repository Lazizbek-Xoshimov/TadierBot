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

public class CategoryService : ICategoryService
{
    private readonly ITelegramBotClient _botClient;
    private readonly ICategoryRepository _categoryRepository;
    private readonly IResourceRepository _resourceRepository;
    private readonly ILogger<CategoryService> _logger;

    public CategoryService(
        ITelegramBotClient botClient,
        ICategoryRepository categoryRepository,
        IResourceRepository resourceRepository,
        ILogger<CategoryService> logger)
    {
        _botClient = botClient;
        _categoryRepository = categoryRepository;
        _resourceRepository = resourceRepository;
        _logger = logger;
    }

    public async Task ShowCategoriesAsync(long chatId, int? messageId, CancellationToken cancellationToken)
    {
        var categories = (await _categoryRepository.GetAllAsync()).ToList();

        if (!categories.Any())
        {
            await _botClient.SendOrEditMessageAsync(
                chatId: chatId,
                messageId: messageId,
                text: "ℹ️ Hozircha kategoriyalar mavjud emas.",
                cancellationToken: cancellationToken);
            return;
        }

        string text = """
            🗂 <b>Kategoriyalar bo'limi</b>

            Quyidagi bo'limlardan birini tanlang va unga tegishli barcha manbalarni ko'ring:
            """;

        var keyboard = CategoryKeyboard.CreateCategoryList(categories);

        await _botClient.SendOrEditMessageAsync(
            chatId: chatId,
            messageId: messageId,
            text: text,
            parseMode: ParseMode.Html,
            replyMarkup: keyboard,
            cancellationToken: cancellationToken);
    }

    public async Task ShowCategoryResourcesAsync(long chatId, int messageId, int categoryId, int pageNumber, CancellationToken cancellationToken)
    {
        var category = await _categoryRepository.GetByIdAsync(categoryId);
        string catName = category?.Name ?? "Kategoriya";
        string icon = CategoryKeyboard.GetCategoryIcon(catName);

        const int pageSize = 5;
        var pagedResult = await _resourceRepository.GetPagedByCategoryIdAsync(categoryId, pageNumber, pageSize);
        var items = pagedResult.Items.ToList();

        if (pagedResult.TotalCount == 0)
        {
            string emptyText = $"""
                ℹ️ {icon} <b>'{catName}'</b> bo'yicha hozircha manbalar mavjud emas.

                Yangi foydali materiallar tez orada joylanadi!
                """;

            await _botClient.EditMessageText(
                chatId: chatId,
                messageId: messageId,
                text: emptyText,
                parseMode: ParseMode.Html,
                replyMarkup: CategoryKeyboard.CreateEmpty(),
                cancellationToken: cancellationToken);
            return;
        }

        var sb = new StringBuilder();
        sb.AppendLine($"{icon} <b>{catName}</b> <i>({pagedResult.PageNumber}/{pagedResult.TotalPages}-sahifa)</i>:\n");

        for (int i = 0; i < items.Count; i++)
        {
            string numEmoji = i < EmojiConstants.NumberEmojis.Length ? EmojiConstants.NumberEmojis[i] : $"{i + 1}.";
            string lang = !string.IsNullOrWhiteSpace(items[i].Language) ? items[i].Language.ToUpper() : "UZ";
            sb.AppendLine($"{numEmoji} <b>{items[i].Title}</b> ({lang})");
        }

        sb.AppendLine("\n<i>Batafsil ma'lumot va manba linki uchun quyidagi raqamlardan birini tanlang 👇</i>");

        var keyboard = CategoryKeyboard.CreateCategoryResources(categoryId, pagedResult.PageNumber, pagedResult.TotalPages, items);

        await _botClient.EditMessageText(
            chatId: chatId,
            messageId: messageId,
            text: sb.ToString(),
            parseMode: ParseMode.Html,
            replyMarkup: keyboard,
            cancellationToken: cancellationToken);
    }

    public async Task ShowResourceDetailsAsync(long chatId, int messageId, int categoryId, int resourceId, int returnPage, CancellationToken cancellationToken)
    {
        var resource = await _resourceRepository.GetByIdAsync(resourceId);
        if (resource is null)
        {
            await _botClient.EditMessageText(
                chatId: chatId,
                messageId: messageId,
                text: "Kechirasiz, ushbu manba topilmadi.",
                replyMarkup: CategoryKeyboard.CreateDetails(categoryId, returnPage),
                cancellationToken: cancellationToken);
            return;
        }

        await _resourceRepository.IncrementViewsCountAsync(resourceId);

        // DRY: Yagona manba kartochkasi helperi
        string detailsHtml = resource.ToDetailsHtml();
        var keyboard = CategoryKeyboard.CreateDetails(categoryId, returnPage);

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

        if (data == "cat_noop")
        {
            await _botClient.AnswerCallbackQuery(callbackQuery.Id, cancellationToken: cancellationToken);
            return;
        }

        if (data == "cat_back_list")
        {
            await _botClient.AnswerCallbackQuery(callbackQuery.Id, cancellationToken: cancellationToken);
            await ShowCategoriesAsync(chatId, messageId, cancellationToken);
            return;
        }

        // cat_sel_{categoryId}_{pageNumber}
        if (data.StartsWith("cat_sel_"))
        {
            var parts = data.Split('_');
            if (parts.Length >= 4 && int.TryParse(parts[2], out int categoryId) && int.TryParse(parts[3], out int pageNumber))
            {
                await _botClient.AnswerCallbackQuery(callbackQuery.Id, cancellationToken: cancellationToken);
                await ShowCategoryResourcesAsync(chatId, messageId, categoryId, pageNumber, cancellationToken);
                return;
            }
        }

        // cat_view_{categoryId}_{resourceId}_{returnPage}
        if (data.StartsWith("cat_view_"))
        {
            var parts = data.Split('_');
            if (parts.Length >= 5 && int.TryParse(parts[2], out int categoryId) && int.TryParse(parts[3], out int resourceId) && int.TryParse(parts[4], out int returnPage))
            {
                await _botClient.AnswerCallbackQuery(callbackQuery.Id, cancellationToken: cancellationToken);
                await ShowResourceDetailsAsync(chatId, messageId, categoryId, resourceId, returnPage, cancellationToken);
                return;
            }
        }

        await _botClient.AnswerCallbackQuery(callbackQuery.Id, cancellationToken: cancellationToken);
    }
}


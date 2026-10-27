using System.Text;
using Telegram.Bot;
using Telegram.Bot.Types;
using Telegram.Bot.Types.Enums;
using TadierBot.WebApi.Keyboards;
using TadierBot.WebApi.Models;
using TadierBot.WebApi.Repositories;

namespace TadierBot.WebApi.Services;

public class UpdateHandlerService : IUpdateHandlerService
{
    private readonly ITelegramBotClient _botClient;
    private readonly IUserRepository _userRepository;
    private readonly IResourceRepository _resourceRepository;
    private readonly ICategoryRepository _categoryRepository;
    private readonly IAdminRepository _adminRepository;
    private readonly ILogger<UpdateHandlerService> _logger;

    public UpdateHandlerService(
        ITelegramBotClient botClient,
        IUserRepository userRepository,
        IResourceRepository resourceRepository,
        ICategoryRepository categoryRepository,
        IAdminRepository adminRepository,
        ILogger<UpdateHandlerService> logger)
    {
        _botClient = botClient;
        _userRepository = userRepository;
        _resourceRepository = resourceRepository;
        _categoryRepository = categoryRepository;
        _adminRepository = adminRepository;
        _logger = logger;
    }

    public async Task HandleUpdateAsync(Update update, CancellationToken cancellationToken)
    {
        try
        {
            // 1. Callback query (Inline tugmalar bosilganda)
            if (update.CallbackQuery is { } callbackQuery)
            {
                await HandleCallbackQueryAsync(callbackQuery, cancellationToken);
                return;
            }

            // 2. Oddiy xabarlar
            if (update.Message is not { } message || message.From is null)
                return;

            long telegramId = message.From.Id;
            long chatId = message.Chat.Id;

            // Foydalanuvchini bazada yangilash / qo'shish
            var user = new Models.User
            {
                TelegramId = telegramId,
                FullName = $"{message.From.FirstName} {message.From.LastName}".Trim(),
                Username = message.From.Username,
                LanguageCode = message.From.LanguageCode ?? "uz"
            };

            await _userRepository.AddOrUpdateAsync(user);

            // Ban tekshiruvi
            if (await _userRepository.IsBannedAsync(telegramId))
            {
                await _botClient.SendMessage(
                    chatId: chatId,
                    text: "Siz botdan foydalanish uchun bloklangansiz.",
                    cancellationToken: cancellationToken);
                return;
            }

            // Matnli xabarlarni qayta ishlash
            if (string.IsNullOrWhiteSpace(message.Text))
                return;

            string text = message.Text.Trim();
            bool isAdmin = await _adminRepository.IsAdminAsync(telegramId);

            if (text == "/start")
            {
                await HandleStartAsync(chatId, message.From.FirstName, isAdmin, cancellationToken);
            }
            else if (text == MainMenuKeyboard.AdminPanel || text == "/admin")
            {
                if (isAdmin)
                {
                    await HandleAdminPanelAsync(chatId, cancellationToken);
                }
            }
            else if (text == MainMenuKeyboard.Resources)
            {
                await HandleLatestResourcesAsync(chatId, cancellationToken);
            }
            else if (text == MainMenuKeyboard.Categories)
            {
                await HandleCategoriesAsync(chatId, cancellationToken);
            }
            else if (text == MainMenuKeyboard.Help)
            {
                await _botClient.SendMessage(
                    chatId: chatId,
                    text: "ℹ️ Ushbu bot orqali siz foydali manbalar, kitoblar, darsliklar va maqolalarni topishingiz mumkin.",
                    replyMarkup: MainMenuKeyboard.Create(isAdmin),
                    cancellationToken: cancellationToken);
            }
            else if (text == MainMenuKeyboard.Search || text == MainMenuKeyboard.Language)
            {
                await _botClient.SendMessage(
                    chatId: chatId,
                    text: "⏳ Ushbu bo'lim ustida ish olib borilmoqda. Tez orada ishga tushadi!",
                    replyMarkup: MainMenuKeyboard.Create(isAdmin),
                    cancellationToken: cancellationToken);
            }
            else
            {
                await _botClient.SendMessage(
                    chatId: chatId,
                    text: "Iltimos, quyidagi menyudan birini tanlang 👇",
                    replyMarkup: MainMenuKeyboard.Create(isAdmin),
                    cancellationToken: cancellationToken);
            }
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Update ni qayta ishlashda xatolik yuz berdi");
        }
    }

    private async Task HandleStartAsync(long chatId, string firstName, bool isAdmin, CancellationToken cancellationToken)
    {
        string welcomeMessage = $"Assalomu alaykum, {firstName}!\nQuyidagi bo'limlardan birini tanlang 👇";

        await _botClient.SendMessage(
            chatId: chatId,
            text: welcomeMessage,
            replyMarkup: MainMenuKeyboard.Create(isAdmin),
            cancellationToken: cancellationToken);
    }

    private async Task HandleAdminPanelAsync(long chatId, CancellationToken cancellationToken)
    {
        string text = "🔧 <b>Admin Panel</b>\n\nQuyidagi amallardan birini tanlang:";

        await _botClient.SendMessage(
            chatId: chatId,
            text: text,
            parseMode: ParseMode.Html,
            replyMarkup: AdminMenuKeyboard.Create(),
            cancellationToken: cancellationToken);
    }

    private async Task HandleCallbackQueryAsync(CallbackQuery callbackQuery, CancellationToken cancellationToken)
    {
        if (callbackQuery.Message is null)
            return;

        long telegramId = callbackQuery.From.Id;
        bool isAdmin = await _adminRepository.IsAdminAsync(telegramId);

        // Faqat admin ruxsati bo'lsa
        if (!isAdmin)
        {
            await _botClient.AnswerCallbackQuery(
                callbackQueryId: callbackQuery.Id,
                text: "Sizda admin huquqi yo'q!",
                showAlert: true,
                cancellationToken: cancellationToken);
            return;
        }

        string action = callbackQuery.Data ?? string.Empty;

        // Tugma bosilgandagi toast xabari
        await _botClient.AnswerCallbackQuery(
            callbackQueryId: callbackQuery.Id,
            cancellationToken: cancellationToken);

        if (action == "admin_add_resource")
        {
            await _botClient.SendMessage(
                chatId: callbackQuery.Message.Chat.Id,
                text: "📝 <b>1. Manba nomi kiriting:</b>",
                parseMode: ParseMode.Html,
                cancellationToken: cancellationToken);
        }
        else
        {
            await _botClient.SendMessage(
                chatId: callbackQuery.Message.Chat.Id,
                text: "⏳ Ushbu admin bo'limi keyingi qadamda to'liq ulanadi.",
                cancellationToken: cancellationToken);
        }
    }

    private async Task HandleLatestResourcesAsync(long chatId, CancellationToken cancellationToken)
    {
        var resources = (await _resourceRepository.GetLatestAsync(5)).ToList();

        if (!resources.Any())
        {
            await _botClient.SendMessage(
                chatId: chatId,
                text: "Hozircha biror manba qo'shilmagan. Tez orada yangi manbalar joylanadi!",
                cancellationToken: cancellationToken);
            return;
        }

        foreach (var item in resources)
        {
            var sb = new StringBuilder();
            sb.AppendLine($"📘 {item.Title}");
            
            if (!string.IsNullOrWhiteSpace(item.Description))
                sb.AppendLine($"📄 Tavsif: {item.Description}");

            sb.AppendLine($"🗂 Kategoriya: {item.CategoryName ?? "Umumiy"}");
            sb.AppendLine($"🌐 Til: {item.Language}");
            sb.AppendLine($"🔗 {item.Url}");

            await _botClient.SendMessage(
                chatId: chatId,
                text: sb.ToString(),
                cancellationToken: cancellationToken);

            await _resourceRepository.IncrementViewsCountAsync(item.Id);
        }
    }

    private async Task HandleCategoriesAsync(long chatId, CancellationToken cancellationToken)
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
}

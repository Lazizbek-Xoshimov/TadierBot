using System.Text;
using Telegram.Bot;
using Telegram.Bot.Types;
using Telegram.Bot.Types.Enums;
using TadierBot.WebApi.Keyboards.MainKeyboards;
using TadierBot.WebApi.Models;
using TadierBot.WebApi.Repositories;
using TadierBot.WebApi.Repositories.Concrete;

namespace TadierBot.WebApi.Services.Concrete;

public class UpdateHandlerService : IUpdateHandlerService
{
    private readonly ITelegramBotClient _botClient;
    private readonly IUserRepository _userRepository;
    private readonly IResourceRepository _resourceRepository;
    private readonly ICategoryRepository _categoryRepository;
    private readonly IAdminRepository _adminRepository;
    private readonly IAdminService _adminService;
    private readonly IResourceService _resourceService;
    private readonly IBroadcastService _broadcastService;
    private readonly ISearchService _searchService;
    private readonly ICategoryService _categoryService;
    private readonly ILanguageService _languageService;
    private readonly ILogger<UpdateHandlerService> _logger;

    public UpdateHandlerService(
        ITelegramBotClient botClient,
        IUserRepository userRepository,
        IResourceRepository resourceRepository,
        ICategoryRepository categoryRepository,
        IAdminRepository adminRepository,
        IAdminService adminService,
        IResourceService resourceService,
        IBroadcastService broadcastService,
        ISearchService searchService,
        ICategoryService categoryService,
        ILanguageService languageService,
        ILogger<UpdateHandlerService> logger)
    {
        _botClient = botClient;
        _userRepository = userRepository;
        _resourceRepository = resourceRepository;
        _categoryRepository = categoryRepository;
        _adminRepository = adminRepository;
        _adminService = adminService;
        _resourceService = resourceService;
        _broadcastService = broadcastService;
        _searchService = searchService;
        _categoryService = categoryService;
        _languageService = languageService;
        _logger = logger;
    }

    public async Task HandleUpdateAsync(Update update, CancellationToken cancellationToken)
    {
        try
        {
            // 1. Inline tugmalar (Callback) bosilganda
            if (update.CallbackQuery is { } callbackQuery)
            {
                string data = callbackQuery.Data ?? string.Empty;

                // Foydalanuvchi pagination yoki manbani ko'rish callbacklari
                if (data.StartsWith("res_page_") || data.StartsWith("res_view_") || data == "res_noop")
                {
                    await _resourceService.HandleCallbackAsync(callbackQuery, cancellationToken);
                    return;
                }

                // Qidiruv callbacklari
                if (data.StartsWith("search_"))
                {
                    await _searchService.HandleCallbackAsync(callbackQuery, cancellationToken);
                    return;
                }

                // Kategoriyalar callbacklari
                if (data.StartsWith("cat_"))
                {
                    await _categoryService.HandleCallbackAsync(callbackQuery, cancellationToken);
                    return;
                }

                // Til bo'yicha saralash callbacklari
                if (data.StartsWith("lang_"))
                {
                    await _languageService.HandleCallbackAsync(callbackQuery, cancellationToken);
                    return;
                }

                // Qolgan callbacklar (admin yoki manba qo'shish/boshqarish) AdminService ga uzatiladi
                await _adminService.HandleCallbackAsync(callbackQuery, cancellationToken);
                return;
            }

            // 2. Oddiy xabarlarni filtrlash
            if (update.Message is not { } message || message.From is null)
                return;

            long telegramId = message.From.Id;
            long chatId = message.Chat.Id;

            // Foydalanuvchini ro'yxatga olish / yangilash
            var user = new Models.User
            {
                TelegramId = telegramId,
                FullName = $"{message.From.FirstName} {message.From.LastName}".Trim(),
                Username = message.From.Username,
                LanguageCode = message.From.LanguageCode ?? "uz"
            };

            await _userRepository.AddOrUpdateAsync(user);

            // Bloklanganligini tekshirish
            if (await _userRepository.IsBannedAsync(telegramId))
            {
                await _botClient.SendMessage(
                    chatId: chatId,
                    text: "Siz botdan foydalanish uchun bloklangansiz.",
                    cancellationToken: cancellationToken);
                return;
            }

            bool isAdmin = await _adminRepository.IsAdminAsync(telegramId);

            // C. Agar admin e'lon yuborish holatida bo'lsa (matn, rasm, video, fayl qabul qilishi uchun Text tekshiruvidan oldin)
            if (isAdmin && _broadcastService.IsAdminBroadcasting(telegramId))
            {
                if (message.Text?.Trim() == "/cancel")
                {
                    await _broadcastService.CancelBroadcastAsync(chatId, telegramId, cancellationToken);
                    return;
                }

                await _broadcastService.HandleIncomingMessageAsync(message, cancellationToken);
                return;
            }

            if (string.IsNullOrWhiteSpace(message.Text))
                return;

            string text = message.Text.Trim();

            // A. Agar admin manba qo'shish holatida bo'lsa
            if (isAdmin && _resourceService.IsAdminAddingResource(telegramId))
            {
                if (text == "/cancel")
                {
                    await _resourceService.CancelAddResourceAsync(chatId, telegramId, cancellationToken);
                    return;
                }

                await _resourceService.HandleTextInputAsync(chatId, telegramId, text, cancellationToken);
                return;
            }

            // B. Agar admin manbani tahrirlash holatida bo'lsa
            if (isAdmin && _resourceService.IsAdminEditingResource(telegramId))
            {
                if (text == "/cancel")
                {
                    await _resourceService.CancelEditAsync(chatId, telegramId, cancellationToken);
                    return;
                }

                await _resourceService.HandleAdminEditTextInputAsync(chatId, telegramId, text, cancellationToken);
                return;
            }

            // C. Agar foydalanuvchi qidiruv holatida bo'lsa
            if (_searchService.IsUserSearching(telegramId))
            {
                if (text == "/cancel")
                {
                    await _searchService.CancelSearchAsync(chatId, telegramId, cancellationToken);
                    return;
                }

                await _searchService.HandleSearchInputAsync(chatId, telegramId, text, cancellationToken);
                return;
            }

            // 3. Routing (Komandalar va menyu tugmalarini yo'naltirish)
            if (text == "/start")
            {
                await HandleStartAsync(chatId, message.From.FirstName, isAdmin, cancellationToken);
            }
            else if (text == "/help" || text == MainMenuKeyboard.Help)
            {
                await HandleHelpAsync(chatId, isAdmin, cancellationToken);
            }
            else if (text == MainMenuKeyboard.AdminPanel)
            {
                if (isAdmin)
                {
                    await _adminService.ShowAdminPanelAsync(chatId, cancellationToken);
                }
            }
            else if (text == MainMenuKeyboard.Resources)
            {
                await _resourceService.ShowPagedResourcesAsync(chatId, null, 1, cancellationToken);
            }
            else if (text == MainMenuKeyboard.Categories)
            {
                await _categoryService.ShowCategoriesAsync(chatId, null, cancellationToken);
            }
            else if (text == MainMenuKeyboard.Search)
            {
                await _searchService.StartSearchPromptAsync(chatId, telegramId, cancellationToken);
            }
            else if (text == MainMenuKeyboard.Language)
            {
                await _languageService.ShowLanguagesAsync(chatId, null, cancellationToken);
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

    private async Task HandleHelpAsync(long chatId, bool isAdmin, CancellationToken cancellationToken)
    {
        string helpText = """
            ℹ️ <b>Botdan foydalanish bo'yicha yo'riqnoma:</b>

            • <b>📚 Manbalar bo'limi</b> — eng so'nggi yuklangan foydali materiallarni ko'rish.
            • <b>🗂 Kategoriyalar</b> — barcha mavzular bo'yicha manbalarni saralab topish.
            • <b>🔍 Qidiruv</b> — kerakli kalit so'z orqali qidirish.
            • <b>🌐 Til</b> — interfeys tilini tanlash.

            Savol va takliflar uchun <a href="https://t.me/deutschmax_admin">admin</a> bilan bog'lanishingiz mumkin.
            """;

        await _botClient.SendMessage(
            chatId: chatId,
            text: helpText,
            parseMode: ParseMode.Html,
            replyMarkup: MainMenuKeyboard.Create(isAdmin),
            cancellationToken: cancellationToken);
    }
}

using Telegram.Bot;
using Telegram.Bot.Types;
using Telegram.Bot.Types.Enums;
using TadierBot.WebApi.Keyboards.MainKeyboards;
using TadierBot.WebApi.Repositories.Concrete;

namespace TadierBot.WebApi.Services.Concrete;

public class AdminService : IAdminService
{
    private readonly ITelegramBotClient _botClient;
    private readonly IAdminRepository _adminRepository;
    private readonly IResourceService _resourceService;
    private readonly IStatisticsService _statisticsService;
    private readonly IUserService _userService;
    private readonly IBroadcastService _broadcastService;
    private readonly ILogger<AdminService> _logger;

    public AdminService(
        ITelegramBotClient botClient,
        IAdminRepository adminRepository,
        IResourceService resourceService,
        IStatisticsService statisticsService,
        IUserService userService,
        IBroadcastService broadcastService,
        ILogger<AdminService> logger)
    {
        _botClient = botClient;
        _adminRepository = adminRepository;
        _resourceService = resourceService;
        _statisticsService = statisticsService;
        _userService = userService;
        _broadcastService = broadcastService;
        _logger = logger;
    }

    public async Task ShowAdminPanelAsync(long chatId, CancellationToken cancellationToken)
    {
        string text = "🔧 <b>Admin Panel</b>\n\nQuyidagi amallardan birini tanlang:";

        await _botClient.SendMessage(
            chatId: chatId,
            text: text,
            parseMode: ParseMode.Html,
            replyMarkup: AdminMenuKeyboard.Create(),
            cancellationToken: cancellationToken);
    }

    public async Task HandleCallbackAsync(CallbackQuery callbackQuery, CancellationToken cancellationToken)
    {
        if (callbackQuery.Message is null)
            return;

        long telegramId = callbackQuery.From.Id;
        long chatId = callbackQuery.Message.Chat.Id;
        int messageId = callbackQuery.Message.MessageId;
        bool isAdmin = await _adminRepository.IsAdminAsync(telegramId);

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

        // 1. Manba qo'shish va Manbalarni boshqarish callbacklari (res_ va adm_ prefikslilari)
        if (action.StartsWith("res_") || action.StartsWith("adm_"))
        {
            if (action == "adm_back_to_menu")
            {
                await _botClient.AnswerCallbackQuery(callbackQuery.Id, cancellationToken: cancellationToken);
                await _botClient.EditMessageText(
                    chatId: chatId,
                    messageId: messageId,
                    text: "🔧 <b>Admin Panel</b>\n\nQuyidagi amallardan birini tanlang:",
                    parseMode: ParseMode.Html,
                    replyMarkup: AdminMenuKeyboard.Create(),
                    cancellationToken: cancellationToken);
                return;
            }

            await _resourceService.HandleCallbackAsync(callbackQuery, cancellationToken);
            return;
        }

        // 2. Foydalanuvchilar boshqaruvi callbacklari (usr_ prefikslisi)
        if (action.StartsWith("usr_"))
        {
            await _userService.HandleCallbackAsync(callbackQuery, cancellationToken);
            return;
        }

        // 3. E'lon yuborish callbacklari (bc_ prefikslisi)
        if (action.StartsWith("bc_"))
        {
            await _broadcastService.HandleCallbackAsync(callbackQuery, cancellationToken);
            return;
        }

        await _botClient.AnswerCallbackQuery(callbackQuery.Id, cancellationToken: cancellationToken);

        // 4. Admin panel asosiy menyu amallari
        if (action == "admin_add_resource")
        {
            await _resourceService.StartAddResourceAsync(chatId, telegramId, cancellationToken);
        }
        else if (action == "admin_manage_resources")
        {
            await _resourceService.ShowAdminPagedResourcesAsync(chatId, messageId, 1, cancellationToken);
        }
        else if (action == "admin_statistics")
        {
            await _statisticsService.ShowStatisticsAsync(chatId, messageId, cancellationToken);
        }
        else if (action == "admin_users")
        {
            await _userService.ShowPagedUsersAsync(chatId, messageId, 1, cancellationToken);
        }
        else if (action == "admin_broadcast")
        {
            await _broadcastService.StartBroadcastAsync(chatId, telegramId, cancellationToken);
        }
        else
        {
            await _botClient.SendMessage(
                chatId: chatId,
                text: "⏳ Ushbu admin bo'limi keyingi qadamda to'liq ulanadi.",
                cancellationToken: cancellationToken);
        }
    }
}

using Telegram.Bot;
using Telegram.Bot.Types;
using Telegram.Bot.Types.Enums;
using TadierBot.WebApi.Keyboards;
using TadierBot.WebApi.Repositories;

namespace TadierBot.WebApi.Services;

public class AdminService : IAdminService
{
    private readonly ITelegramBotClient _botClient;
    private readonly IAdminRepository _adminRepository;
    private readonly ILogger<AdminService> _logger;

    public AdminService(
        ITelegramBotClient botClient,
        IAdminRepository adminRepository,
        ILogger<AdminService> logger)
    {
        _botClient = botClient;
        _adminRepository = adminRepository;
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
}


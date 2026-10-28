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
    private readonly ILogger<AdminService> _logger;

    public AdminService(
        ITelegramBotClient botClient,
        IAdminRepository adminRepository,
        IResourceService resourceService,
        ILogger<AdminService> logger)
    {
        _botClient = botClient;
        _adminRepository = adminRepository;
        _resourceService = resourceService;
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

        // 1. Manba qo'shishga tegishli callbacklar (res_ prefiksi bilan kelganlar)
        if (action.StartsWith("res_"))
        {
            await _resourceService.HandleCallbackAsync(callbackQuery, cancellationToken);
            return;
        }

        await _botClient.AnswerCallbackQuery(callbackQuery.Id, cancellationToken: cancellationToken);

        // 2. Admin panel asosiy menyu amallari
        if (action == "admin_add_resource")
        {
            await _resourceService.StartAddResourceAsync(chatId, telegramId, cancellationToken);
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

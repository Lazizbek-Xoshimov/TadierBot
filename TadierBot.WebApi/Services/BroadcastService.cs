using System.Text;
using Microsoft.Extensions.Caching.Memory;
using Telegram.Bot;
using Telegram.Bot.Types;
using Telegram.Bot.Types.Enums;
using TadierBot.WebApi.DTOs;
using TadierBot.WebApi.Keyboards;
using TadierBot.WebApi.Repositories.Concrete;

namespace TadierBot.WebApi.Services;

public class BroadcastService : IBroadcastService
{
    private readonly ITelegramBotClient _botClient;
    private readonly IUserRepository _userRepository;
    private readonly IMemoryCache _cache;
    private readonly ILogger<BroadcastService> _logger;

    public BroadcastService(
        ITelegramBotClient botClient,
        IUserRepository userRepository,
        IMemoryCache cache,
        ILogger<BroadcastService> logger)
    {
        _botClient = botClient;
        _userRepository = userRepository;
        _cache = cache;
        _logger = logger;
    }

    private static string GetCacheKey(long telegramId) => $"broadcast_{telegramId}";

    public bool IsAdminBroadcasting(long telegramId)
    {
        return _cache.TryGetValue(GetCacheKey(telegramId), out BroadcastState? _);
    }

    public async Task StartBroadcastAsync(long chatId, long telegramId, CancellationToken cancellationToken)
    {
        var state = new BroadcastState
        {
            AdminTelegramId = telegramId,
            SourceChatId = chatId,
            Step = 1
        };

        _cache.Set(GetCacheKey(telegramId), state, TimeSpan.FromMinutes(15));

        string text = """
            📢 <b>E'lon yuborish bo'limi</b>

            Barcha faol foydalanuvchilarga yubormoqchi bo'lgan xabaringizni yuboring (matn, rasm, video, fayl yoki post bo'lishi mumkin):
            """;

        await _botClient.SendMessage(
            chatId: chatId,
            text: text,
            parseMode: ParseMode.Html,
            replyMarkup: BroadcastKeyboard.CreateCancel(),
            cancellationToken: cancellationToken);
    }

    public async Task HandleIncomingMessageAsync(Message message, CancellationToken cancellationToken)
    {
        if (message.From is null)
            return;

        long telegramId = message.From.Id;
        long chatId = message.Chat.Id;

        if (!_cache.TryGetValue(GetCacheKey(telegramId), out BroadcastState? state) || state is null)
            return;

        if (state.Step == 1)
        {
            var targetIds = await _userRepository.GetActiveUserTelegramIdsAsync(telegramId);
            if (targetIds.Count == 0)
            {
                _cache.Remove(GetCacheKey(telegramId));
                await _botClient.SendMessage(
                    chatId: chatId,
                    text: "ℹ️ E'lon yuborish uchun hozircha boshqa faol foydalanuvchilar mavjud emas.",
                    replyMarkup: BroadcastKeyboard.CreateBackToAdminMenu(),
                    cancellationToken: cancellationToken);
                return;
            }

            state.SourceMessageId = message.MessageId;
            state.SourceChatId = chatId;
            state.Step = 2;
            _cache.Set(GetCacheKey(telegramId), state, TimeSpan.FromMinutes(15));

            // 1. Ko'rib chiqish (Preview) uchun xabarni adminning o'ziga nusxalab ko'rsatamiz
            await _botClient.CopyMessage(
                chatId: chatId,
                fromChatId: chatId,
                messageId: message.MessageId,
                cancellationToken: cancellationToken);

            // 2. Tasdiqlash so'rovi
            string confirmText = $"☝️ <i>Yuqoridagi xabar <b>{targetIds.Count} ta</b> faol foydalanuvchiga yuboriladi.</i>\n\nXabarni yuborishni tasdiqlaysizmi?";
            await _botClient.SendMessage(
                chatId: chatId,
                text: confirmText,
                parseMode: ParseMode.Html,
                replyMarkup: BroadcastKeyboard.CreateConfirmation(),
                cancellationToken: cancellationToken);
        }
    }

    public async Task HandleCallbackAsync(CallbackQuery callbackQuery, CancellationToken cancellationToken)
    {
        if (callbackQuery.Message is null)
            return;

        long telegramId = callbackQuery.From.Id;
        long chatId = callbackQuery.Message.Chat.Id;
        int messageId = callbackQuery.Message.MessageId;
        string action = callbackQuery.Data ?? string.Empty;

        if (action == "bc_cancel")
        {
            await _botClient.AnswerCallbackQuery(callbackQuery.Id, cancellationToken: cancellationToken);
            await CancelBroadcastAsync(chatId, telegramId, cancellationToken);
            return;
        }

        if (action == "bc_confirm")
        {
            if (!_cache.TryGetValue(GetCacheKey(telegramId), out BroadcastState? state) || state is null || !state.SourceMessageId.HasValue)
            {
                await _botClient.AnswerCallbackQuery(
                    callbackQuery.Id,
                    text: "E'lon holati eskirgan yoki topilmadi.",
                    showAlert: true,
                    cancellationToken: cancellationToken);
                return;
            }

            // Takroriy bosishning oldini olish uchun keshni darhol tozalaymiz
            _cache.Remove(GetCacheKey(telegramId));
            await _botClient.AnswerCallbackQuery(callbackQuery.Id, text: "🚀 E'lon yuborish boshlandi...", cancellationToken: cancellationToken);

            await _botClient.EditMessageText(
                chatId: chatId,
                messageId: messageId,
                text: "⏳ <b>E'lon barcha foydalanuvchilarga yuborilmoqda...</b>\n\nIltimos, kuting, bu biroz vaqt olishi mumkin.",
                parseMode: ParseMode.Html,
                cancellationToken: cancellationToken);

            var targetIds = await _userRepository.GetActiveUserTelegramIdsAsync(telegramId);
            int sentCount = 0;
            int failedCount = 0;

            foreach (var targetId in targetIds)
            {
                try
                {
                    await _botClient.CopyMessage(
                        chatId: targetId,
                        fromChatId: state.SourceChatId,
                        messageId: state.SourceMessageId.Value,
                        cancellationToken: cancellationToken);
                    sentCount++;
                }
                catch (Exception ex)
                {
                    _logger.LogWarning(ex, "Foydalanuvchiga e'lon yetkazilmadi: {TargetId}", targetId);
                    failedCount++;
                }

                // Telegram rate limit himoyasi (~30 msg/sec)
                await Task.Delay(35, cancellationToken);
            }

            var report = new StringBuilder();
            report.AppendLine("📢 <b>E'lon yuborish yakunlandi!</b>\n");
            report.AppendLine($"• Jami faol foydalanuvchilar: <b>{targetIds.Count}</b> ta");
            report.AppendLine($"• Muvaffaqiyatli yetkazildi: <b>{sentCount}</b> ta");
            if (failedCount > 0)
            {
                report.AppendLine($"• Yetib bormadi (bloklaganlar): <b>{failedCount}</b> ta");
            }

            await _botClient.SendMessage(
                chatId: chatId,
                text: report.ToString(),
                parseMode: ParseMode.Html,
                replyMarkup: BroadcastKeyboard.CreateBackToAdminMenu(),
                cancellationToken: cancellationToken);
        }
    }

    public async Task CancelBroadcastAsync(long chatId, long telegramId, CancellationToken cancellationToken)
    {
        _cache.Remove(GetCacheKey(telegramId));
        await _botClient.SendMessage(
            chatId: chatId,
            text: "❌ E'lon yuborish bekor qilindi.",
            replyMarkup: BroadcastKeyboard.CreateBackToAdminMenu(),
            cancellationToken: cancellationToken);
    }
}


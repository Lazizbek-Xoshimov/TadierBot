using Telegram.Bot;
using Telegram.Bot.Types.Enums;
using Telegram.Bot.Types.ReplyMarkups;

namespace TadierBot.WebApi.Extensions;

public static class TelegramBotExtensions
{
    public static async Task SendOrEditMessageAsync(
        this ITelegramBotClient botClient,
        long chatId,
        int? messageId,
        string text,
        ParseMode parseMode = ParseMode.Html,
        InlineKeyboardMarkup? replyMarkup = null,
        CancellationToken cancellationToken = default)
    {
        if (messageId.HasValue)
        {
            await botClient.EditMessageText(
                chatId: chatId,
                messageId: messageId.Value,
                text: text,
                parseMode: parseMode,
                replyMarkup: replyMarkup,
                cancellationToken: cancellationToken);
        }
        else
        {
            await botClient.SendMessage(
                chatId: chatId,
                text: text,
                parseMode: parseMode,
                replyMarkup: replyMarkup,
                cancellationToken: cancellationToken);
        }
    }
}


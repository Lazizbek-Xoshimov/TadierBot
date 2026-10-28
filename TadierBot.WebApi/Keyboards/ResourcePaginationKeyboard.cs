using Telegram.Bot.Types.ReplyMarkups;
using TadierBot.WebApi.Common;
using TadierBot.WebApi.Models;

namespace TadierBot.WebApi.Keyboards;

public static class ResourcePaginationKeyboard
{
    public static InlineKeyboardMarkup Create(int currentPage, int totalPages, IList<Resource> items)
    {
        var rows = new List<InlineKeyboardButton[]>();

        // 1. Manbalarni tanlash raqamlari (1-qator)
        var numberRow = new List<InlineKeyboardButton>();
        for (int i = 0; i < items.Count && i < EmojiConstants.NumberEmojis.Length; i++)
        {
            numberRow.Add(InlineKeyboardButton.WithCallbackData(
                text: EmojiConstants.NumberEmojis[i],
                callbackData: $"res_view_{items[i].Id}_{currentPage}"));
        }

        if (numberRow.Count > 0)
        {
            rows.Add(numberRow.ToArray());
        }

        // 2. Sahifalash navigatsiyasi (2-qator)
        var navRow = new List<InlineKeyboardButton>();

        if (currentPage > 1)
        {
            navRow.Add(InlineKeyboardButton.WithCallbackData("◀️", $"res_page_{currentPage - 1}"));
        }

        navRow.Add(InlineKeyboardButton.WithCallbackData($"📄 {currentPage} / {Math.Max(totalPages, 1)}", "res_noop"));

        if (currentPage < totalPages)
        {
            navRow.Add(InlineKeyboardButton.WithCallbackData("▶️", $"res_page_{currentPage + 1}"));
        }

        rows.Add(navRow.ToArray());

        return new InlineKeyboardMarkup(rows);
    }

    public static InlineKeyboardMarkup CreateDetails(int returnPage)
    {
        return new InlineKeyboardMarkup(new[]
        {
            new[] { InlineKeyboardButton.WithCallbackData("⬅️ Ro'yxatga qaytish", $"res_page_{returnPage}") }
        });
    }
}

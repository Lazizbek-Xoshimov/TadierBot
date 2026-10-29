using Telegram.Bot.Types.ReplyMarkups;
using TadierBot.WebApi.Common.Constants;
using TadierBot.WebApi.Models;

namespace TadierBot.WebApi.Keyboards;

public static class SearchKeyboard
{
    public static InlineKeyboardMarkup CreateResults(int currentPage, int totalPages, IList<Resource> items)
    {
        var rows = new List<InlineKeyboardButton[]>();

        // 1-qator: Natijalarni tanlash raqamlari
        var numRow = new List<InlineKeyboardButton>();
        for (int i = 0; i < items.Count && i < EmojiConstants.NumberEmojis.Length; i++)
        {
            numRow.Add(InlineKeyboardButton.WithCallbackData(
                text: EmojiConstants.NumberEmojis[i],
                callbackData: $"search_view_{items[i].Id}_{currentPage}"));
        }

        if (numRow.Count > 0)
        {
            rows.Add(numRow.ToArray());
        }

        // 2-qator: Navigatsiya (oldingi / sahifa / keyingi)
        var navRow = new List<InlineKeyboardButton>();
        if (currentPage > 1)
        {
            navRow.Add(InlineKeyboardButton.WithCallbackData("◀️", $"search_page_{currentPage - 1}"));
        }

        navRow.Add(InlineKeyboardButton.WithCallbackData($"📄 {currentPage}/{Math.Max(totalPages, 1)}", "search_noop"));

        if (currentPage < totalPages)
        {
            navRow.Add(InlineKeyboardButton.WithCallbackData("▶️", $"search_page_{currentPage + 1}"));
        }

        rows.Add(navRow.ToArray());

        // 3-qator: Boshqa so'z qidirish
        rows.Add(new[]
        {
            InlineKeyboardButton.WithCallbackData("🔍 Qayta qidirish", "search_again")
        });

        return new InlineKeyboardMarkup(rows);
    }

    public static InlineKeyboardMarkup CreateDetails(int returnPage)
    {
        return new InlineKeyboardMarkup(new[]
        {
            new[]
            {
                InlineKeyboardButton.WithCallbackData("⬅️ Natijalarga qaytish", $"search_page_{returnPage}")
            }
        });
    }

    public static InlineKeyboardMarkup CreateEmpty()
    {
        return new InlineKeyboardMarkup(new[]
        {
            new[]
            {
                InlineKeyboardButton.WithCallbackData("🗂 Kategoriyalarni ko'rish", "search_goto_categories")
            },
            new[]
            {
                InlineKeyboardButton.WithCallbackData("🔍 Boshqa so'z qidirish", "search_again")
            }
        });
    }

    public static InlineKeyboardMarkup CreatePrompt()
    {
        return new InlineKeyboardMarkup(new[]
        {
            new[]
            {
                InlineKeyboardButton.WithCallbackData("❌ Bekor qilish", "search_cancel")
            }
        });
    }
}


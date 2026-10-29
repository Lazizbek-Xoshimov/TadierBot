using Telegram.Bot.Types.ReplyMarkups;
using TadierBot.WebApi.Common.Constants;
using TadierBot.WebApi.Models;

namespace TadierBot.WebApi.Keyboards;

public static class CategoryKeyboard
{
    public static string GetCategoryIcon(string categoryName)
    {
        string lower = categoryName.ToLowerInvariant();
        if (lower.Contains("kitob")) return "📘";
        if (lower.Contains("video")) return "📹";
        if (lower.Contains("maqola")) return "📄";
        if (lower.Contains("audio")) return "🎧";
        return "📁";
    }

    public static InlineKeyboardMarkup CreateCategoryList(IList<Category> categories)
    {
        var rows = new List<InlineKeyboardButton[]>();

        foreach (var cat in categories)
        {
            string icon = GetCategoryIcon(cat.Name);
            rows.Add(new[]
            {
                InlineKeyboardButton.WithCallbackData($"{icon} {cat.Name}", $"cat_sel_{cat.Id}_1")
            });
        }

        return new InlineKeyboardMarkup(rows);
    }

    public static InlineKeyboardMarkup CreateCategoryResources(int categoryId, int currentPage, int totalPages, IList<Resource> items)
    {
        var rows = new List<InlineKeyboardButton[]>();

        // 1-qator: Raqamli tanlash tugmalari
        var numRow = new List<InlineKeyboardButton>();
        for (int i = 0; i < items.Count && i < EmojiConstants.NumberEmojis.Length; i++)
        {
            numRow.Add(InlineKeyboardButton.WithCallbackData(
                text: EmojiConstants.NumberEmojis[i],
                callbackData: $"cat_view_{categoryId}_{items[i].Id}_{currentPage}"));
        }

        if (numRow.Count > 0)
        {
            rows.Add(numRow.ToArray());
        }

        // 2-qator: Paginatsiya
        var navRow = new List<InlineKeyboardButton>();
        if (currentPage > 1)
        {
            navRow.Add(InlineKeyboardButton.WithCallbackData("◀️", $"cat_sel_{categoryId}_{currentPage - 1}"));
        }

        navRow.Add(InlineKeyboardButton.WithCallbackData($"📄 {currentPage}/{Math.Max(totalPages, 1)}", "cat_noop"));

        if (currentPage < totalPages)
        {
            navRow.Add(InlineKeyboardButton.WithCallbackData("▶️", $"cat_sel_{categoryId}_{currentPage + 1}"));
        }

        rows.Add(navRow.ToArray());

        // 3-qator: Kategoriyalar menyusiga qaytish
        rows.Add(new[]
        {
            InlineKeyboardButton.WithCallbackData("⬅️ Barcha kategoriyalar", "cat_back_list")
        });

        return new InlineKeyboardMarkup(rows);
    }

    public static InlineKeyboardMarkup CreateDetails(int categoryId, int returnPage)
    {
        return new InlineKeyboardMarkup(new[]
        {
            new[]
            {
                InlineKeyboardButton.WithCallbackData("⬅️ Ro'yxatga qaytish", $"cat_sel_{categoryId}_{returnPage}")
            }
        });
    }

    public static InlineKeyboardMarkup CreateEmpty()
    {
        return new InlineKeyboardMarkup(new[]
        {
            new[]
            {
                InlineKeyboardButton.WithCallbackData("⬅️ Barcha kategoriyalar", "cat_back_list")
            }
        });
    }
}


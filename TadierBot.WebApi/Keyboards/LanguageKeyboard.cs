using Telegram.Bot.Types.ReplyMarkups;
using TadierBot.WebApi.Common.Constants;
using TadierBot.WebApi.Models;

namespace TadierBot.WebApi.Keyboards;

public static class LanguageKeyboard
{
    public static string GetLanguageName(string code) => code.ToLowerInvariant() switch
    {
        "uz" => "🇺🇿 O'zbek",
        "ru" => "🇷🇺 Rus",
        "en" => "🇬🇧 Ingliz",
        _ => code.ToUpper()
    };

    public static InlineKeyboardMarkup CreateLanguageList()
    {
        return new InlineKeyboardMarkup(new[]
        {
            new[]
            {
                InlineKeyboardButton.WithCallbackData("🇺🇿 O'zbek", "lang_sel_uz_1"),
                InlineKeyboardButton.WithCallbackData("🇷🇺 Rus", "lang_sel_ru_1")
            },
            new[]
            {
                InlineKeyboardButton.WithCallbackData("🇬🇧 Ingliz", "lang_sel_en_1")
            }
        });
    }

    public static InlineKeyboardMarkup CreateLanguageResources(string language, int currentPage, int totalPages, IList<Resource> items)
    {
        var rows = new List<InlineKeyboardButton[]>();

        // 1-qator: Raqamli tanlash tugmalari
        var numRow = new List<InlineKeyboardButton>();
        for (int i = 0; i < items.Count && i < EmojiConstants.NumberEmojis.Length; i++)
        {
            numRow.Add(InlineKeyboardButton.WithCallbackData(
                text: EmojiConstants.NumberEmojis[i],
                callbackData: $"lang_view_{language}_{items[i].Id}_{currentPage}"));
        }

        if (numRow.Count > 0)
        {
            rows.Add(numRow.ToArray());
        }

        // 2-qator: Paginatsiya
        var navRow = new List<InlineKeyboardButton>();
        if (currentPage > 1)
        {
            navRow.Add(InlineKeyboardButton.WithCallbackData("◀️", $"lang_sel_{language}_{currentPage - 1}"));
        }

        navRow.Add(InlineKeyboardButton.WithCallbackData($"📄 {currentPage}/{Math.Max(totalPages, 1)}", "lang_noop"));

        if (currentPage < totalPages)
        {
            navRow.Add(InlineKeyboardButton.WithCallbackData("▶️", $"lang_sel_{language}_{currentPage + 1}"));
        }

        rows.Add(navRow.ToArray());

        // 3-qator: Boshqa tilni tanlash
        rows.Add(new[]
        {
            InlineKeyboardButton.WithCallbackData("⬅️ Boshqa tilni tanlash", "lang_back_list")
        });

        return new InlineKeyboardMarkup(rows);
    }

    public static InlineKeyboardMarkup CreateDetails(string language, int returnPage)
    {
        return new InlineKeyboardMarkup(new[]
        {
            new[]
            {
                InlineKeyboardButton.WithCallbackData("⬅️ Ro'yxatga qaytish", $"lang_sel_{language}_{returnPage}")
            }
        });
    }

    public static InlineKeyboardMarkup CreateEmpty()
    {
        return new InlineKeyboardMarkup(new[]
        {
            new[]
            {
                InlineKeyboardButton.WithCallbackData("⬅️ Boshqa tilni tanlash", "lang_back_list")
            }
        });
    }
}


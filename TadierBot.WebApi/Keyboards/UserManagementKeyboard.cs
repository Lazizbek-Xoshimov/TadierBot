using Telegram.Bot.Types.ReplyMarkups;
using TadierBot.WebApi.Common;
using TadierBot.WebApi.Models;

namespace TadierBot.WebApi.Keyboards;

public static class UserManagementKeyboard
{
    public static InlineKeyboardMarkup CreateList(int currentPage, int totalPages, IList<User> items)
    {
        var rows = new List<InlineKeyboardButton[]>();

        // 1-qator: Foydalanuvchilarni tanlash raqamlari
        var numRow = new List<InlineKeyboardButton>();
        for (int i = 0; i < items.Count && i < EmojiConstants.NumberEmojis.Length; i++)
        {
            numRow.Add(InlineKeyboardButton.WithCallbackData(
                text: EmojiConstants.NumberEmojis[i],
                callbackData: $"usr_view_{items[i].Id}_{currentPage}"));
        }

        if (numRow.Count > 0)
        {
            rows.Add(numRow.ToArray());
        }

        // 2-qator: Sahifalash navigatsiyasi
        var navRow = new List<InlineKeyboardButton>();
        if (currentPage > 1)
        {
            navRow.Add(InlineKeyboardButton.WithCallbackData("◀️", $"usr_page_{currentPage - 1}"));
        }

        navRow.Add(InlineKeyboardButton.WithCallbackData($"📄 {currentPage}/{Math.Max(totalPages, 1)}", "usr_noop"));

        if (currentPage < totalPages)
        {
            navRow.Add(InlineKeyboardButton.WithCallbackData("▶️", $"usr_page_{currentPage + 1}"));
        }

        rows.Add(navRow.ToArray());

        // 3-qator: Admin Panelga qaytish
        rows.Add(new[] { InlineKeyboardButton.WithCallbackData("⬅️ Admin Panelga qaytish", "adm_back_to_menu") });

        return new InlineKeyboardMarkup(rows);
    }

    public static InlineKeyboardMarkup CreateDetails(User user, int returnPage, bool isTargetAdmin)
    {
        var rows = new List<InlineKeyboardButton[]>();

        if (!isTargetAdmin)
        {
            string banText = user.IsBanned ? "🟢 Blokdan ochish" : "🚫 Bloklash";
            rows.Add(new[]
            {
                InlineKeyboardButton.WithCallbackData(banText, $"usr_toggle_{user.Id}_{returnPage}")
            });
        }

        rows.Add(new[]
        {
            InlineKeyboardButton.WithCallbackData("⬅️ Ro'yxatga qaytish", $"usr_page_{returnPage}")
        });

        return new InlineKeyboardMarkup(rows);
    }
}


using Telegram.Bot.Types.ReplyMarkups;
using TadierBot.WebApi.Common.Constants;
using TadierBot.WebApi.Models;

namespace TadierBot.WebApi.Keyboards;

public static class AdminResourceManagementKeyboard
{
    public static InlineKeyboardMarkup CreateList(int currentPage, int totalPages, IList<Resource> items)
    {
        var rows = new List<InlineKeyboardButton[]>();

        // 1-qator: Manbalarni tanlash raqamlari
        var numRow = new List<InlineKeyboardButton>();
        for (int i = 0; i < items.Count && i < EmojiConstants.NumberEmojis.Length; i++)
        {
            numRow.Add(InlineKeyboardButton.WithCallbackData(
                text: EmojiConstants.NumberEmojis[i],
                callbackData: $"adm_res_view_{items[i].Id}_{currentPage}"));
        }

        if (numRow.Count > 0)
        {
            rows.Add(numRow.ToArray());
        }

        // 2-qator: Sahifalash navigatsiyasi
        var navRow = new List<InlineKeyboardButton>();
        if (currentPage > 1)
        {
            navRow.Add(InlineKeyboardButton.WithCallbackData("◀️", $"adm_res_page_{currentPage - 1}"));
        }

        navRow.Add(InlineKeyboardButton.WithCallbackData($"📄 {currentPage}/{Math.Max(totalPages, 1)}", "adm_noop"));

        if (currentPage < totalPages)
        {
            navRow.Add(InlineKeyboardButton.WithCallbackData("▶️", $"adm_res_page_{currentPage + 1}"));
        }

        rows.Add(navRow.ToArray());

        // 3-qator: Admin Panelga qaytish
        rows.Add(new[] { InlineKeyboardButton.WithCallbackData("⬅️ Admin Panelga qaytish", "adm_back_to_menu") });

        return new InlineKeyboardMarkup(rows);
    }

    public static InlineKeyboardMarkup CreateActions(int resourceId, int returnPage)
    {
        return new InlineKeyboardMarkup(new[]
        {
            new[]
            {
                InlineKeyboardButton.WithCallbackData("✏️ Tahrirlash", $"adm_res_edit_{resourceId}_{returnPage}"),
                InlineKeyboardButton.WithCallbackData("🗑 O'chirish", $"adm_res_del_prompt_{resourceId}_{returnPage}")
            },
            new[]
            {
                InlineKeyboardButton.WithCallbackData("⬅️ Ro'yxatga qaytish", $"adm_res_page_{returnPage}")
            }
        });
    }

    public static InlineKeyboardMarkup CreateDeleteConfirm(int resourceId, int returnPage)
    {
        return new InlineKeyboardMarkup(new[]
        {
            new[]
            {
                InlineKeyboardButton.WithCallbackData("⚠️ Ha, o'chirish", $"adm_res_del_confirm_{resourceId}_{returnPage}"),
                InlineKeyboardButton.WithCallbackData("❌ Bekor qilish", $"adm_res_view_{resourceId}_{returnPage}")
            }
        });
    }

    public static InlineKeyboardMarkup CreateEditFields(int resourceId, int returnPage)
    {
        return new InlineKeyboardMarkup(new[]
        {
            new[]
            {
                InlineKeyboardButton.WithCallbackData("✏️ Nomi", $"adm_field_{resourceId}_{returnPage}_title"),
                InlineKeyboardButton.WithCallbackData("📄 Tavsifi", $"adm_field_{resourceId}_{returnPage}_desc")
            },
            new[]
            {
                InlineKeyboardButton.WithCallbackData("🗂 Kategoriya", $"adm_field_{resourceId}_{returnPage}_cat"),
                InlineKeyboardButton.WithCallbackData("🔗 Havola", $"adm_field_{resourceId}_{returnPage}_url")
            },
            new[]
            {
                InlineKeyboardButton.WithCallbackData("⬅️ Ortga", $"adm_res_view_{resourceId}_{returnPage}")
            }
        });
    }

    public static InlineKeyboardMarkup CreateCategorySelection(int resourceId, int returnPage, IList<Category> categories)
    {
        var rows = new List<InlineKeyboardButton[]>();

        for (int i = 0; i < categories.Count; i += 2)
        {
            var row = new List<InlineKeyboardButton>
            {
                InlineKeyboardButton.WithCallbackData($"{CategoryKeyboard.GetCategoryIcon(categories[i].Name)} {categories[i].Name}", $"adm_setcat_{resourceId}_{returnPage}_{categories[i].Id}")
            };

            if (i + 1 < categories.Count)
            {
                row.Add(InlineKeyboardButton.WithCallbackData($"{CategoryKeyboard.GetCategoryIcon(categories[i + 1].Name)} {categories[i + 1].Name}", $"adm_setcat_{resourceId}_{returnPage}_{categories[i + 1].Id}"));
            }

            rows.Add(row.ToArray());
        }

        rows.Add(new[]
        {
            InlineKeyboardButton.WithCallbackData("⬅️ Ortga", $"adm_res_edit_{resourceId}_{returnPage}")
        });

        return new InlineKeyboardMarkup(rows);
    }
}

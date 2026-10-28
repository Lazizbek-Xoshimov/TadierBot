using Telegram.Bot.Types.ReplyMarkups;

namespace TadierBot.WebApi.Keyboards;

public static class BroadcastKeyboard
{
    public static InlineKeyboardMarkup CreateCancel()
    {
        return new InlineKeyboardMarkup(new[]
        {
            new[] { InlineKeyboardButton.WithCallbackData("❌ Bekor qilish", "bc_cancel") }
        });
    }

    public static InlineKeyboardMarkup CreateConfirmation()
    {
        return new InlineKeyboardMarkup(new[]
        {
            new[]
            {
                InlineKeyboardButton.WithCallbackData("🚀 Ha, yuborilsin", "bc_confirm"),
                InlineKeyboardButton.WithCallbackData("❌ Bekor qilish", "bc_cancel")
            }
        });
    }

    public static InlineKeyboardMarkup CreateBackToAdminMenu()
    {
        return new InlineKeyboardMarkup(new[]
        {
            new[] { InlineKeyboardButton.WithCallbackData("⬅️ Admin Panelga qaytish", "adm_back_to_menu") }
        });
    }
}


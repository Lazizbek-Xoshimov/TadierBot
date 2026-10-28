using Telegram.Bot.Types.ReplyMarkups;

namespace TadierBot.WebApi.Keyboards.MainKeyboards;

public static class AdminMenuKeyboard
{
    public static InlineKeyboardMarkup Create()
    {
        return new InlineKeyboardMarkup(new[]
        {
            new[] { InlineKeyboardButton.WithCallbackData("1️⃣ Manba qo'shish", "admin_add_resource") },
            new[] { InlineKeyboardButton.WithCallbackData("2️⃣ Manbalarni boshqarish", "admin_manage_resources") },
            new[] { InlineKeyboardButton.WithCallbackData("3️⃣ Statistikani ko'rish", "admin_statistics") },
            new[] { InlineKeyboardButton.WithCallbackData("4️⃣ Foydalanuvchilar ro'yxati", "admin_users") },
            new[] { InlineKeyboardButton.WithCallbackData("5️⃣ E'lon yuborish", "admin_broadcast") }
        });
    }
}


using Telegram.Bot.Types.ReplyMarkups;

namespace TadierBot.WebApi.Keyboards.MainKeyboards;

public static class MainMenuKeyboard
{
    public const string Resources = "📚 Manbalar bo'limi";
    public const string Search = "🔍 Qidiruv";
    public const string Categories = "🗂 Kategoriyalar";
    public const string Language = "🌐 Til bo'yicha tanlash";
    public const string Help = "ℹ️ Yordam";
    public const string AdminPanel = "⚙️ Admin Panel";

    public static ReplyKeyboardMarkup Create(bool isAdmin = false)
    {
        var rows = new List<KeyboardButton[]>
        {
            new[] { new KeyboardButton(Resources) },
            new[] { new KeyboardButton(Search), new KeyboardButton(Categories) },
            new[] { new KeyboardButton(Language), new KeyboardButton(Help) }
        };

        if (isAdmin)
        {
            rows.Add(new[] { new KeyboardButton(AdminPanel) });
        }

        return new ReplyKeyboardMarkup(rows)
        {
            ResizeKeyboard = true
        };
    }
}


using Telegram.Bot.Types.ReplyMarkups;

namespace TadierBot.WebApi.Keyboards;

public static class MainMenuKeyboard
{
    public const string Resources = "📚 Manbalar bo'limi";
    public const string Search = "🔍 Qidiruv";
    public const string Categories = "🗂 Kategoriyalar";
    public const string Language = "🌐 Til bo'yicha tanlash";
    public const string Help = "ℹ️ Yordam";

    public static ReplyKeyboardMarkup Create()
    {
        return new ReplyKeyboardMarkup(new[]
        {
            new[] { new KeyboardButton(Resources) },
            new[] { new KeyboardButton(Search), new KeyboardButton(Categories) },
            new[] { new KeyboardButton(Language), new KeyboardButton(Help) }
        })
        {
            ResizeKeyboard = true
        };
    }
}


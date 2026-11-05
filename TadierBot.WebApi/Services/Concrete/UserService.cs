using System.Text;
using Telegram.Bot;
using Telegram.Bot.Types;
using Telegram.Bot.Types.Enums;
using Telegram.Bot.Types.ReplyMarkups;
using TadierBot.WebApi.Common;
using TadierBot.WebApi.DTOs.User;
using TadierBot.WebApi.Extensions;
using TadierBot.WebApi.Helpers;
using TadierBot.WebApi.Keyboards;
using TadierBot.WebApi.Repositories.Concrete;

namespace TadierBot.WebApi.Services.Concrete;

public class UserService : IUserService
{
    private readonly ITelegramBotClient _botClient;
    private readonly IUserRepository _userRepository;
    private readonly IAdminRepository _adminRepository;
    private readonly ILogger<UserService> _logger;

    public UserService(
        ITelegramBotClient botClient,
        IUserRepository userRepository,
        IAdminRepository adminRepository,
        ILogger<UserService> logger)
    {
        _botClient = botClient;
        _userRepository = userRepository;
        _adminRepository = adminRepository;
        _logger = logger;
    }

    public async Task ShowPagedUsersAsync(long chatId, int? messageId, int pageNumber, CancellationToken cancellationToken)
    {
        const int pageSize = 5;
        var pagedUsers = await _userRepository.GetPagedUsersAsync(pageNumber, pageSize);
        var counts = await _userRepository.GetUserCountsAsync();

        if (pagedUsers.TotalCount == 0)
        {
            var backKeyboard = new InlineKeyboardMarkup(new[]
            {
                new[] { InlineKeyboardButton.WithCallbackData("⬅️ Admin Panelga qaytish", "adm_back_to_menu") }
            });

            await _botClient.SendOrEditMessageAsync(
                chatId: chatId,
                messageId: messageId,
                text: "ℹ️ Hozircha biror foydalanuvchi ro'yxatdan o'tmagan.",
                parseMode: ParseMode.Html,
                replyMarkup: backKeyboard,
                cancellationToken: cancellationToken);
            return;
        }

        var sb = new StringBuilder();
        sb.AppendLine($"👥 <b>Foydalanuvchilar ro'yxati</b> ({pagedUsers.PageNumber}/{pagedUsers.TotalPages}-sahifa)\n");
        sb.AppendLine($"📊 <b>{counts.TodayActiveUsers} ta</b> faol foydalanuvchi <b>{counts.TotalUsers} ta</b> foydalanuvchidan <i>({counts.BannedUsers} ta bloklangan)</i>\n");

        var userList = pagedUsers.Items.ToList();
        for (int i = 0; i < userList.Count; i++)
        {
            var u = userList[i];
            string statusIcon = u.IsBanned ? "🔴 Bloklangan" : "🟢 Faol";
            string usernameStr = !string.IsNullOrWhiteSpace(u.Username) ? $" (@{u.Username})" : string.Empty;
            string displayName = !string.IsNullOrWhiteSpace(u.FullName) ? u.FullName : $"ID: {u.TelegramId}";

            sb.AppendLine($"{i + 1}. <b>{displayName}</b>{usernameStr} — {statusIcon}");
        }

        sb.AppendLine("\n🔘 <i>Batafsil ko'rish va boshqarish uchun raqamini tanlang:</i>");

        var keyboard = UserManagementKeyboard.CreateList(pagedUsers.PageNumber, pagedUsers.TotalPages, userList);

        await _botClient.SendOrEditMessageAsync(
            chatId: chatId,
            messageId: messageId,
            text: sb.ToString(),
            parseMode: ParseMode.Html,
            replyMarkup: keyboard,
            cancellationToken: cancellationToken);
    }

    public async Task ShowUserDetailsAsync(long chatId, int messageId, int userId, int returnPage, CancellationToken cancellationToken)
    {
        var user = await _userRepository.GetByIdAsync(userId);
        if (user is null)
        {
            await _botClient.SendMessage(
                chatId: chatId,
                text: "❌ Foydalanuvchi topilmadi.",
                cancellationToken: cancellationToken);
            return;
        }

        bool isTargetAdmin = await _adminRepository.IsAdminAsync(user.TelegramId);

        var sb = new StringBuilder();
        sb.AppendLine("👤 <b>Foydalanuvchi profili:</b>\n");
        sb.AppendLine($"• <b>ID:</b> <code>#{user.Id}</code> (Telegram: <code>{user.TelegramId}</code>)");
        sb.AppendLine($"• <b>Ism:</b> {(!string.IsNullOrWhiteSpace(user.FullName) ? user.FullName : "Ko'rsatilmagan")}");
        sb.AppendLine($"• <b>Username:</b> {(!string.IsNullOrWhiteSpace(user.Username) ? "@" + user.Username : "Mavjud emas")}");
        sb.AppendLine($"• <b>Til:</b> {user.LanguageCode.ToUpper()}");
        sb.AppendLine($"• <b>Holati:</b> {(user.IsBanned ? "🔴 Bloklangan" : "🟢 Faol")}");
        if (isTargetAdmin)
        {
            sb.AppendLine("• <b>Roli:</b> 🛡 Admin");
        }
        sb.AppendLine($"• <b>Qo'shilgan:</b> {user.CreatedAt.ToTashkentString()}");
        sb.AppendLine($"• <b>So'nggi faollik:</b> {user.LastActiveAt.ToTashkentString()}");

        var keyboard = UserManagementKeyboard.CreateDetails(user, returnPage, isTargetAdmin);

        await _botClient.SendOrEditMessageAsync(
            chatId: chatId,
            messageId: messageId,
            text: sb.ToString(),
            parseMode: ParseMode.Html,
            replyMarkup: keyboard,
            cancellationToken: cancellationToken);
    }

    public async Task HandleCallbackAsync(CallbackQuery callbackQuery, CancellationToken cancellationToken)
    {
        if (callbackQuery.Message is null)
            return;

        long chatId = callbackQuery.Message.Chat.Id;
        int messageId = callbackQuery.Message.MessageId;
        string data = callbackQuery.Data ?? string.Empty;

        if (data == "usr_noop")
        {
            await _botClient.AnswerCallbackQuery(callbackQuery.Id, cancellationToken: cancellationToken);
            return;
        }

        string[] parts = data.Split('_');

        // usr_page_{pageNumber}
        if (data.StartsWith("usr_page_") && parts.Length >= 3 && int.TryParse(parts[2], out int pageNumber))
        {
            await _botClient.AnswerCallbackQuery(callbackQuery.Id, cancellationToken: cancellationToken);
            await ShowPagedUsersAsync(chatId, messageId, pageNumber, cancellationToken);
            return;
        }

        // usr_view_{userId}_{returnPage}
        if (data.StartsWith("usr_view_") && parts.Length >= 4 && int.TryParse(parts[2], out int userId) && int.TryParse(parts[3], out int returnPage))
        {
            await _botClient.AnswerCallbackQuery(callbackQuery.Id, cancellationToken: cancellationToken);
            await ShowUserDetailsAsync(chatId, messageId, userId, returnPage, cancellationToken);
            return;
        }

        // usr_toggle_{userId}_{returnPage}
        if (data.StartsWith("usr_toggle_") && parts.Length >= 4 && int.TryParse(parts[2], out int targetUserId) && int.TryParse(parts[3], out int targetReturnPage))
        {
            var targetUser = await _userRepository.GetByIdAsync(targetUserId);
            if (targetUser is null)
            {
                await _botClient.AnswerCallbackQuery(callbackQuery.Id, text: "Foydalanuvchi topilmadi!", showAlert: true, cancellationToken: cancellationToken);
                return;
            }

            bool isTargetAdmin = await _adminRepository.IsAdminAsync(targetUser.TelegramId);
            if (isTargetAdmin)
            {
                await _botClient.AnswerCallbackQuery(
                    callbackQuery.Id,
                    text: "⚠️ Adminni bloklash mumkin emas!",
                    showAlert: true,
                    cancellationToken: cancellationToken);
                return;
            }

            bool newBanStatus = await _userRepository.ToggleBanAsync(targetUserId);
            string alertMsg = newBanStatus ? "🚫 Foydalanuvchi muvaffaqiyatli bloklandi!" : "✅ Foydalanuvchi blokdan ochildi!";

            await _botClient.AnswerCallbackQuery(callbackQuery.Id, text: alertMsg, showAlert: true, cancellationToken: cancellationToken);
            await ShowUserDetailsAsync(chatId, messageId, targetUserId, targetReturnPage, cancellationToken);
            return;
        }

        await _botClient.AnswerCallbackQuery(callbackQuery.Id, cancellationToken: cancellationToken);
    }

    public async Task SyncUserActivityAsync(TelegramUserDto telegramUser)
    {
        string fullName = $"{telegramUser.FirstName} {telegramUser.LastName}".Trim();
        if (string.IsNullOrWhiteSpace(fullName) && !string.IsNullOrWhiteSpace(telegramUser.Username))
        {
            fullName = telegramUser.Username;
        }

        var existingUser = await _userRepository.GetByTelegramIdAsync(telegramUser.Id);
        if (existingUser != null)
        {
            // Agar yangi ism aniqlangan bo'lsa yangilaymiz, aks holda bazadagi mavjud ismni saqlab qolamiz
            if (!string.IsNullOrWhiteSpace(fullName))
            {
                existingUser.FullName = fullName;
            }
            if (!string.IsNullOrWhiteSpace(telegramUser.Username))
            {
                existingUser.Username = telegramUser.Username;
            }
            if (!string.IsNullOrWhiteSpace(telegramUser.LanguageCode))
            {
                existingUser.LanguageCode = telegramUser.LanguageCode;
            }

            await _userRepository.AddOrUpdateAsync(existingUser);
            return;
        }

        var user = new Models.User
        {
            TelegramId = telegramUser.Id,
            FullName = !string.IsNullOrWhiteSpace(fullName) ? fullName : "Foydalanuvchi",
            Username = telegramUser.Username,
            LanguageCode = telegramUser.LanguageCode ?? "uz"
        };

        await _userRepository.AddOrUpdateAsync(user);
    }

    public async Task<UserStatsResponse> GetStatsAsync(long telegramId)
    {
        var user = await _userRepository.GetByTelegramIdAsync(telegramId);
        if (user == null)
        {
            return new UserStatsResponse { StreakDays = 0, Score = 0, Level = "A1" };
        }

        int streak = user.StreakDays;
        if (user.LastStreakDate.HasValue)
        {
            var diffDays = (DateTime.UtcNow.Date - user.LastStreakDate.Value.Date).TotalDays;
            if (diffDays > 1 && user.StreakDays > 0)
            {
                streak = 0; // Ketma-ketlik uzilgan
                user.StreakDays = 0;

                // Ketma-ketlik uzilganda bazada ham streak = 0 deb yangilab qo'yish
                await _userRepository.UpdateStatsAsync(
                    telegramId, 
                    user.Score, 
                    0, 
                    user.Level, 
                    user.LastStreakDate.Value);
            }
        }

        return new UserStatsResponse
        {
            StreakDays = streak,
            Score = user.Score,
            Level = user.Level
        };
    }

    public async Task<UserStatsResponse> AddScoreAndStreakAsync(long telegramId, int earnedScore)
    {
        var user = await _userRepository.GetByTelegramIdAsync(telegramId);
        if (user == null)
        {
            return new UserStatsResponse { StreakDays = 1, Score = earnedScore, Level = "A1" };
        }

        int newScore = user.Score + earnedScore;
        string newLevel = CalculateLevel(newScore);

        var today = DateTime.UtcNow.Date;
        int newStreak;

        if (user.LastStreakDate == null)
        {
            newStreak = 1;
        }
        else if (user.LastStreakDate.Value.Date == today)
        {
            newStreak = user.StreakDays; // Bugun allaqachon streak oshirilgan
        }
        else if (user.LastStreakDate.Value.Date == today.AddDays(-1))
        {
            newStreak = user.StreakDays + 1; // Kecha kirgan, ketma-ketlik davom etadi
        }
        else
        {
            newStreak = 1; // Ketma-ketlik uzilgan, qaytadan 1-kun
        }

        await _userRepository.UpdateStatsAsync(telegramId, newScore, newStreak, newLevel, today);

        return new UserStatsResponse
        {
            StreakDays = newStreak,
            Score = newScore,
            Level = newLevel
        };
    }

    public async Task<UserStatsResponse> SetPlacementTestResultAsync(long telegramId, string assignedLevel, int earnedScore)
    {
        var user = await _userRepository.GetByTelegramIdAsync(telegramId);
        if (user == null)
        {
            return new UserStatsResponse { StreakDays = 1, Score = earnedScore, Level = assignedLevel };
        }

        int newScore = user.Score + earnedScore;
        var today = DateTime.UtcNow.Date;
        int newStreak;

        if (user.LastStreakDate == null)
        {
            newStreak = 1;
        }
        else if (user.LastStreakDate.Value.Date == today)
        {
            newStreak = user.StreakDays;
        }
        else if (user.LastStreakDate.Value.Date == today.AddDays(-1))
        {
            newStreak = user.StreakDays + 1;
        }
        else
        {
            newStreak = 1;
        }

        await _userRepository.UpdateStatsAsync(telegramId, newScore, newStreak, assignedLevel, today);

        return new UserStatsResponse
        {
            StreakDays = newStreak,
            Score = newScore,
            Level = assignedLevel
        };
    }

    private static string CalculateLevel(int score)
    {
        return score switch
        {
            >= 1000 => "B2",
            >= 500 => "B1",
            >= 200 => "A2",
            _ => "A1"
        };
    }
}


using System.Text;
using System.Text.RegularExpressions;
using Microsoft.Extensions.Caching.Memory;
using Telegram.Bot;
using Telegram.Bot.Types;
using Telegram.Bot.Types.Enums;
using Telegram.Bot.Types.ReplyMarkups;
using TadierBot.WebApi.DTOs;
using TadierBot.WebApi.Keyboards;
using TadierBot.WebApi.Models;
using TadierBot.WebApi.Repositories;
using TadierBot.WebApi.Repositories.Concrete;

namespace TadierBot.WebApi.Services;

public class ResourceService : IResourceService
{
    private readonly ITelegramBotClient _botClient;
    private readonly IResourceRepository _resourceRepository;
    private readonly ICategoryRepository _categoryRepository;
    private readonly IAdminRepository _adminRepository;
    private readonly IMemoryCache _cache;
    private readonly ILogger<ResourceService> _logger;

    private static string GetCacheKey(long telegramId) => $"res_add_state_{telegramId}";

    public ResourceService(
        ITelegramBotClient botClient,
        IResourceRepository resourceRepository,
        ICategoryRepository categoryRepository,
        IAdminRepository adminRepository,
        IMemoryCache cache,
        ILogger<ResourceService> logger)
    {
        _botClient = botClient;
        _resourceRepository = resourceRepository;
        _categoryRepository = categoryRepository;
        _adminRepository = adminRepository;
        _cache = cache;
        _logger = logger;
    }

    public bool IsAdminAddingResource(long telegramId)
    {
        return _cache.TryGetValue<ResourceAddState>(GetCacheKey(telegramId), out var state) &&
               state is not null && state.CurrentStep != ResourceAddStep.None;
    }

    public async Task StartAddResourceAsync(long chatId, long telegramId, CancellationToken cancellationToken)
    {
        var admin = await _adminRepository.GetByTelegramIdAsync(telegramId);
        var state = new ResourceAddState
        {
            CurrentStep = ResourceAddStep.Title,
            AddedByAdminId = admin?.Id
        };

        SetState(telegramId, state);
        await PromptTitleStepAsync(chatId, cancellationToken);
    }

    public async Task HandleTextInputAsync(long chatId, long telegramId, string text, CancellationToken cancellationToken)
    {
        if (!_cache.TryGetValue<ResourceAddState>(GetCacheKey(telegramId), out var state) || state is null)
            return;

        switch (state.CurrentStep)
        {
            case ResourceAddStep.Title:
                state.Title = text.Trim();
                state.CurrentStep = ResourceAddStep.Description;
                SetState(telegramId, state);
                await PromptDescriptionStepAsync(chatId, cancellationToken);
                break;

            case ResourceAddStep.Description:
                state.Description = text.Trim();
                state.CurrentStep = ResourceAddStep.Type;
                SetState(telegramId, state);
                await PromptTypeStepAsync(chatId, cancellationToken);
                break;

            case ResourceAddStep.Url:
                state.Url = text.Trim();
                ParseTelegramLink(state);
                state.CurrentStep = ResourceAddStep.Confirmation;
                SetState(telegramId, state);
                await PromptConfirmationStepAsync(chatId, state, cancellationToken);
                break;
        }
    }

    public async Task HandleCallbackAsync(CallbackQuery callbackQuery, CancellationToken cancellationToken)
    {
        long telegramId = callbackQuery.From.Id;
        long chatId = callbackQuery.Message?.Chat.Id ?? 0;
        int messageId = callbackQuery.Message?.MessageId ?? 0;
        string data = callbackQuery.Data ?? string.Empty;

        await _botClient.AnswerCallbackQuery(callbackQuery.Id, cancellationToken: cancellationToken);

        // 1. Pagination bo'yicha sahifa almashtirish (res_page_{pageNumber})
        if (data.StartsWith("res_page_"))
        {
            if (int.TryParse(data.Replace("res_page_", ""), out int targetPage))
            {
                await ShowPagedResourcesAsync(chatId, messageId, targetPage, cancellationToken);
            }
            return;
        }

        // 2. Muayyan manbani tanlab ko'rish (res_view_{resourceId}_{returnPage})
        if (data.StartsWith("res_view_"))
        {
            var parts = data.Split('_');
            if (parts.Length >= 4 &&
                int.TryParse(parts[2], out int resId) &&
                int.TryParse(parts[3], out int retPage))
            {
                await ShowResourceDetailsAsync(chatId, messageId, resId, retPage, cancellationToken);
            }
            return;
        }

        // 3. Shunchaki info bo'lgan tugma
        if (data == "res_noop")
        {
            return;
        }

        // 4. Manba qo'shish (FSM) qadami callbacklari
        if (!_cache.TryGetValue<ResourceAddState>(GetCacheKey(telegramId), out var state) || state is null)
            return;

        if (data == "res_cancel")
        {
            await CancelAddResourceAsync(chatId, telegramId, cancellationToken);
            return;
        }

        if (data == "res_back")
        {
            await HandleBackStepAsync(chatId, telegramId, state, cancellationToken);
            return;
        }

        if (data == "res_skip_desc" && state.CurrentStep == ResourceAddStep.Description)
        {
            state.Description = null;
            state.CurrentStep = ResourceAddStep.Type;
            SetState(telegramId, state);
            await PromptTypeStepAsync(chatId, cancellationToken);
            return;
        }

        if (data.StartsWith("res_type_") && state.CurrentStep == ResourceAddStep.Type)
        {
            state.Type = data.Replace("res_type_", "");
            state.CurrentStep = ResourceAddStep.Category;
            SetState(telegramId, state);
            await PromptCategoryStepAsync(chatId, cancellationToken);
            return;
        }

        if (data.StartsWith("res_cat_") && state.CurrentStep == ResourceAddStep.Category)
        {
            if (int.TryParse(data.Replace("res_cat_", ""), out int catId))
            {
                var cat = await _categoryRepository.GetByIdAsync(catId);
                state.CategoryId = catId;
                state.CategoryName = cat?.Name ?? "Umumiy";
                state.CurrentStep = ResourceAddStep.Language;
                SetState(telegramId, state);
                await PromptLanguageStepAsync(chatId, cancellationToken);
            }
            return;
        }

        if (data.StartsWith("res_lang_") && state.CurrentStep == ResourceAddStep.Language)
        {
            state.Language = data.Replace("res_lang_", "");
            state.CurrentStep = ResourceAddStep.Url;
            SetState(telegramId, state);
            await PromptUrlStepAsync(chatId, cancellationToken);
            return;
        }

        if (data == "res_confirm" && state.CurrentStep == ResourceAddStep.Confirmation)
        {
            await SaveResourceAsync(chatId, telegramId, state, cancellationToken);
        }
    }

    public async Task ShowPagedResourcesAsync(long chatId, int? messageId, int pageNumber, CancellationToken cancellationToken)
    {
        const int pageSize = 5;
        var pagedResult = await _resourceRepository.GetPagedAsync(pageNumber, pageSize);
        var items = pagedResult.Items.ToList();

        if (!items.Any())
        {
            string emptyText = "Hozircha biror manba qo'shilmagan. Yangi manbalar tez orada joylanadi!";
            if (messageId.HasValue)
            {
                await _botClient.EditMessageText(
                    chatId: chatId,
                    messageId: messageId.Value,
                    text: emptyText,
                    cancellationToken: cancellationToken);
            }
            else
            {
                await _botClient.SendMessage(
                    chatId: chatId,
                    text: emptyText,
                    cancellationToken: cancellationToken);
            }
            return;
        }

        var sb = new StringBuilder();
        sb.AppendLine($"📚 <b>Manbalar ro'yxati</b> <i>({pagedResult.PageNumber}-sahifa / {pagedResult.TotalPages})</i>:\n");

        for (int i = 0; i < items.Count; i++)
        {
            int displayIndex = i + 1;
            sb.AppendLine($"{displayIndex}. <b>{items[i].Title}</b>");
            sb.AppendLine($"   📁 {items[i].CategoryName ?? "Umumiy"}");
        }

        sb.AppendLine("\n<i>Batafsil ko'rish uchun quyidagi raqamlardan birini tanlang 👇</i>");

        var keyboard = ResourcePaginationKeyboard.Create(pagedResult.PageNumber, pagedResult.TotalPages, items);

        if (messageId.HasValue)
        {
            await _botClient.EditMessageText(
                chatId: chatId,
                messageId: messageId.Value,
                text: sb.ToString(),
                parseMode: ParseMode.Html,
                replyMarkup: keyboard,
                cancellationToken: cancellationToken);
        }
        else
        {
            await _botClient.SendMessage(
                chatId: chatId,
                text: sb.ToString(),
                parseMode: ParseMode.Html,
                replyMarkup: keyboard,
                cancellationToken: cancellationToken);
        }
    }

    public async Task ShowResourceDetailsAsync(long chatId, int messageId, int resourceId, int returnPage, CancellationToken cancellationToken)
    {
        var resource = await _resourceRepository.GetByIdAsync(resourceId);
        if (resource is null)
        {
            await _botClient.EditMessageText(
                chatId: chatId,
                messageId: messageId,
                text: "Kechirasiz, ushbu manba topilmadi.",
                replyMarkup: ResourcePaginationKeyboard.CreateDetails(returnPage),
                cancellationToken: cancellationToken);
            return;
        }

        // Foydalanuvchiga faqat Nomi, Tavsifi, Kategoriyasi va Havolasi ko'rsatiladi
        var sb = new StringBuilder();
        sb.AppendLine($"📘 <b>{resource.Title}</b>\n");

        if (!string.IsNullOrWhiteSpace(resource.Description))
        {
            sb.AppendLine($"📄 <b>Tavsif:</b> {resource.Description}\n");
        }

        sb.AppendLine($"🗂 <b>Kategoriya:</b> {resource.CategoryName ?? "Umumiy"}");
        sb.AppendLine($"🔗 <b>Havola:</b> {resource.Url}");

        var keyboard = ResourcePaginationKeyboard.CreateDetails(returnPage);

        await _botClient.EditMessageText(
            chatId: chatId,
            messageId: messageId,
            text: sb.ToString(),
            parseMode: ParseMode.Html,
            replyMarkup: keyboard,
            cancellationToken: cancellationToken);

        // Ko'rishlar sonini fonda +1 oshiramiz
        await _resourceRepository.IncrementViewsCountAsync(resourceId);
    }

    public async Task CancelAddResourceAsync(long chatId, long telegramId, CancellationToken cancellationToken)
    {
        _cache.Remove(GetCacheKey(telegramId));
        await _botClient.SendMessage(
            chatId: chatId,
            text: "❌ Manba qo'shish bekor qilindi.",
            cancellationToken: cancellationToken);
    }

    private async Task HandleBackStepAsync(long chatId, long telegramId, ResourceAddState state, CancellationToken cancellationToken)
    {
        switch (state.CurrentStep)
        {
            case ResourceAddStep.Description:
                state.CurrentStep = ResourceAddStep.Title;
                SetState(telegramId, state);
                await PromptTitleStepAsync(chatId, cancellationToken);
                break;

            case ResourceAddStep.Type:
                state.CurrentStep = ResourceAddStep.Description;
                SetState(telegramId, state);
                await PromptDescriptionStepAsync(chatId, cancellationToken);
                break;

            case ResourceAddStep.Category:
                state.CurrentStep = ResourceAddStep.Type;
                SetState(telegramId, state);
                await PromptTypeStepAsync(chatId, cancellationToken);
                break;

            case ResourceAddStep.Language:
                state.CurrentStep = ResourceAddStep.Category;
                SetState(telegramId, state);
                await PromptCategoryStepAsync(chatId, cancellationToken);
                break;

            case ResourceAddStep.Url:
                state.CurrentStep = ResourceAddStep.Language;
                SetState(telegramId, state);
                await PromptLanguageStepAsync(chatId, cancellationToken);
                break;

            case ResourceAddStep.Confirmation:
                state.CurrentStep = ResourceAddStep.Url;
                SetState(telegramId, state);
                await PromptUrlStepAsync(chatId, cancellationToken);
                break;
        }
    }

    private async Task SaveResourceAsync(long chatId, long telegramId, ResourceAddState state, CancellationToken cancellationToken)
    {
        var resource = new Resource
        {
            Title = state.Title,
            Description = state.Description,
            Url = state.Url,
            Type = state.Type,
            Language = state.Language,
            CategoryId = state.CategoryId,
            AddedByAdminId = state.AddedByAdminId,
            TelegramChannelId = state.TelegramChannelId,
            MessageId = state.MessageId
        };

        await _resourceRepository.AddAsync(resource);
        _cache.Remove(GetCacheKey(telegramId));

        await _botClient.SendMessage(
            chatId: chatId,
            text: "✅ <b>Manba muvaffaqiyatli saqlandi!</b>\n\nFoydalanuvchilar uni 'Manbalar bo'limi'da ko'rishlari mumkin.",
            parseMode: ParseMode.Html,
            cancellationToken: cancellationToken);
    }

    private async Task PromptTitleStepAsync(long chatId, CancellationToken cancellationToken)
    {
        var keyboard = new InlineKeyboardMarkup(new[]
        {
            new[] { InlineKeyboardButton.WithCallbackData("❌ Bekor qilish", "res_cancel") }
        });

        await _botClient.SendMessage(
            chatId: chatId,
            text: "📝 <b>1-qadam:</b> Manba nomini kiriting:",
            parseMode: ParseMode.Html,
            replyMarkup: keyboard,
            cancellationToken: cancellationToken);
    }

    private async Task PromptDescriptionStepAsync(long chatId, CancellationToken cancellationToken)
    {
        var keyboard = new InlineKeyboardMarkup(new[]
        {
            new[] { InlineKeyboardButton.WithCallbackData("⏭ O'tkazib yuborish", "res_skip_desc") },
            new[]
            {
                InlineKeyboardButton.WithCallbackData("⬅️ Ortga", "res_back"),
                InlineKeyboardButton.WithCallbackData("❌ Bekor qilish", "res_cancel")
            }
        });

        await _botClient.SendMessage(
            chatId: chatId,
            text: "📄 <b>2-qadam:</b> Qisqacha tavsif kiriting (yoki o'tkazib yuboring):",
            parseMode: ParseMode.Html,
            replyMarkup: keyboard,
            cancellationToken: cancellationToken);
    }

    private async Task PromptTypeStepAsync(long chatId, CancellationToken cancellationToken)
    {
        var keyboard = new InlineKeyboardMarkup(new[]
        {
            new[]
            {
                InlineKeyboardButton.WithCallbackData("📘 Kitob", "res_type_Kitob"),
                InlineKeyboardButton.WithCallbackData("🎬 Video", "res_type_Video"),
                InlineKeyboardButton.WithCallbackData("📄 Maqola", "res_type_Maqola")
            },
            new[]
            {
                InlineKeyboardButton.WithCallbackData("⬅️ Ortga", "res_back"),
                InlineKeyboardButton.WithCallbackData("❌ Bekor qilish", "res_cancel")
            }
        });

        await _botClient.SendMessage(
            chatId: chatId,
            text: "📁 <b>3-qadam:</b> Fayl turini tanlang:",
            parseMode: ParseMode.Html,
            replyMarkup: keyboard,
            cancellationToken: cancellationToken);
    }

    private async Task PromptCategoryStepAsync(long chatId, CancellationToken cancellationToken)
    {
        var categories = (await _categoryRepository.GetAllAsync()).ToList();
        var rows = new List<InlineKeyboardButton[]>();

        for (int i = 0; i < categories.Count; i += 2)
        {
            var row = new List<InlineKeyboardButton>
            {
                InlineKeyboardButton.WithCallbackData(categories[i].Name, $"res_cat_{categories[i].Id}")
            };

            if (i + 1 < categories.Count)
            {
                row.Add(InlineKeyboardButton.WithCallbackData(categories[i + 1].Name, $"res_cat_{categories[i + 1].Id}"));
            }

            rows.Add(row.ToArray());
        }

        rows.Add(new[]
        {
            InlineKeyboardButton.WithCallbackData("⬅️ Ortga", "res_back"),
            InlineKeyboardButton.WithCallbackData("❌ Bekor qilish", "res_cancel")
        });

        await _botClient.SendMessage(
            chatId: chatId,
            text: "🗂 <b>4-qadam:</b> Kategoriyani tanlang:",
            parseMode: ParseMode.Html,
            replyMarkup: new InlineKeyboardMarkup(rows),
            cancellationToken: cancellationToken);
    }

    private async Task PromptLanguageStepAsync(long chatId, CancellationToken cancellationToken)
    {
        var keyboard = new InlineKeyboardMarkup(new[]
        {
            new[]
            {
                InlineKeyboardButton.WithCallbackData("🇺🇿 O'zbek", "res_lang_O'zbek"),
                InlineKeyboardButton.WithCallbackData("🇷🇺 Rus", "res_lang_Rus"),
                InlineKeyboardButton.WithCallbackData("🇬🇧 Ingliz", "res_lang_Ingliz")
            },
            new[]
            {
                InlineKeyboardButton.WithCallbackData("⬅️ Ortga", "res_back"),
                InlineKeyboardButton.WithCallbackData("❌ Bekor qilish", "res_cancel")
            }
        });

        await _botClient.SendMessage(
            chatId: chatId,
            text: "🌐 <b>5-qadam:</b> Manba tilini tanlang:",
            parseMode: ParseMode.Html,
            replyMarkup: keyboard,
            cancellationToken: cancellationToken);
    }

    private async Task PromptUrlStepAsync(long chatId, CancellationToken cancellationToken)
    {
        var keyboard = new InlineKeyboardMarkup(new[]
        {
            new[]
            {
                InlineKeyboardButton.WithCallbackData("⬅️ Ortga", "res_back"),
                InlineKeyboardButton.WithCallbackData("❌ Bekor qilish", "res_cancel")
            }
        });

        await _botClient.SendMessage(
            chatId: chatId,
            text: "🔗 <b>6-qadam:</b> Manba havolasini (link) yuboring:\n<i>(Masalan: kanal posti linki https://t.me/kanal/123)</i>",
            parseMode: ParseMode.Html,
            replyMarkup: keyboard,
            cancellationToken: cancellationToken);
    }

    private async Task PromptConfirmationStepAsync(long chatId, ResourceAddState state, CancellationToken cancellationToken)
    {
        var sb = new StringBuilder();
        sb.AppendLine("📋 <b>Kiritilgan ma'lumotlarni tekshiring:</b>\n");
        sb.AppendLine($"📘 <b>Nomi:</b> {state.Title}");
        sb.AppendLine($"📄 <b>Tavsifi:</b> {state.Description ?? "<i>(Mavjud emas)</i>"}");
        sb.AppendLine($"📁 <b>Turi:</b> {state.Type}");
        sb.AppendLine($"🗂 <b>Kategoriya:</b> {state.CategoryName}");
        sb.AppendLine($"🌐 <b>Tili:</b> {state.Language}");
        sb.AppendLine($"🔗 <b>Havola:</b> {state.Url}");
        sb.AppendLine("\n<i>Ushbu manbani bazaga saqlaysizmi?</i>");

        var keyboard = new InlineKeyboardMarkup(new[]
        {
            new[] { InlineKeyboardButton.WithCallbackData("✅ Tasdiqlash", "res_confirm") },
            new[]
            {
                InlineKeyboardButton.WithCallbackData("⬅️ Ortga", "res_back"),
                InlineKeyboardButton.WithCallbackData("❌ Bekor qilish", "res_cancel")
            }
        });

        await _botClient.SendMessage(
            chatId: chatId,
            text: sb.ToString(),
            parseMode: ParseMode.Html,
            replyMarkup: keyboard,
            cancellationToken: cancellationToken);
    }

    private void SetState(long telegramId, ResourceAddState state)
    {
        _cache.Set(GetCacheKey(telegramId), state, TimeSpan.FromHours(1));
    }

    private static void ParseTelegramLink(ResourceAddState state)
    {
        var match = Regex.Match(state.Url, @"t\.me\/([a-zA-Z0-9_+]+)\/([0-9]+)");
        if (match.Success)
        {
            state.TelegramChannelId = match.Groups[1].Value;
            if (int.TryParse(match.Groups[2].Value, out int msgId))
            {
                state.MessageId = msgId;
            }
        }
    }
}

using System.Text;
using Microsoft.Extensions.Caching.Memory;
using Telegram.Bot;
using Telegram.Bot.Types;
using Telegram.Bot.Types.Enums;
using Telegram.Bot.Types.ReplyMarkups;
using TadierBot.WebApi.Common;
using TadierBot.WebApi.DTOs;
using TadierBot.WebApi.Extensions;
using TadierBot.WebApi.Helpers;
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

    private static string GetAddCacheKey(long telegramId) => $"res_add_state_{telegramId}";
    private static string GetEditCacheKey(long telegramId) => $"res_edit_state_{telegramId}";

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

    #region Manba qo'shish (FSM)

    public bool IsAdminAddingResource(long telegramId)
    {
        return _cache.TryGetValue<ResourceAddState>(GetAddCacheKey(telegramId), out var state) &&
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

        SetAddState(telegramId, state);
        await PromptTitleStepAsync(chatId, cancellationToken);
    }

    public async Task HandleTextInputAsync(long chatId, long telegramId, string text, CancellationToken cancellationToken)
    {
        if (!_cache.TryGetValue<ResourceAddState>(GetAddCacheKey(telegramId), out var state) || state is null)
            return;

        switch (state.CurrentStep)
        {
            case ResourceAddStep.Title:
                state.Title = text.Trim();
                state.CurrentStep = ResourceAddStep.Description;
                SetAddState(telegramId, state);
                await PromptDescriptionStepAsync(chatId, cancellationToken);
                break;

            case ResourceAddStep.Description:
                state.Description = text.Trim();
                state.CurrentStep = ResourceAddStep.Type;
                SetAddState(telegramId, state);
                await PromptTypeStepAsync(chatId, cancellationToken);
                break;

            case ResourceAddStep.Url:
                state.Url = text.Trim();
                var (chId, mId) = TelegramLinkHelper.ParseChannelPostLink(state.Url);
                state.TelegramChannelId = chId;
                state.MessageId = mId;
                state.CurrentStep = ResourceAddStep.Confirmation;
                SetAddState(telegramId, state);
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

        // ----------------- Foydalanuvchi Pagination -----------------
        if (data.StartsWith("res_page_"))
        {
            if (int.TryParse(data.Replace("res_page_", ""), out int targetPage))
            {
                await ShowPagedResourcesAsync(chatId, messageId, targetPage, cancellationToken);
            }
            return;
        }

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

        if (data == "res_noop" || data == "adm_noop")
        {
            return;
        }

        // ----------------- Admin Boshqaruv Callbacklari -----------------
        if (data.StartsWith("adm_res_page_"))
        {
            if (int.TryParse(data.Replace("adm_res_page_", ""), out int admPage))
            {
                await ShowAdminPagedResourcesAsync(chatId, messageId, admPage, cancellationToken);
            }
            return;
        }

        if (data.StartsWith("adm_res_view_"))
        {
            var parts = data.Split('_');
            if (parts.Length >= 5 &&
                int.TryParse(parts[3], out int rId) &&
                int.TryParse(parts[4], out int rPage))
            {
                await ShowAdminResourceDetailsAsync(chatId, messageId, rId, rPage, cancellationToken);
            }
            return;
        }

        if (data.StartsWith("adm_res_del_prompt_"))
        {
            var parts = data.Split('_');
            if (parts.Length >= 6 &&
                int.TryParse(parts[4], out int rId) &&
                int.TryParse(parts[5], out int rPage))
            {
                await PromptDeleteResourceAsync(chatId, messageId, rId, rPage, cancellationToken);
            }
            return;
        }

        if (data.StartsWith("adm_res_del_confirm_"))
        {
            var parts = data.Split('_');
            if (parts.Length >= 6 &&
                int.TryParse(parts[4], out int rId) &&
                int.TryParse(parts[5], out int rPage))
            {
                await ConfirmDeleteResourceAsync(chatId, messageId, rId, rPage, cancellationToken);
            }
            return;
        }

        if (data.StartsWith("adm_res_edit_"))
        {
            var parts = data.Split('_');
            if (parts.Length >= 5 &&
                int.TryParse(parts[3], out int rId) &&
                int.TryParse(parts[4], out int rPage))
            {
                await ShowEditFieldsMenuAsync(chatId, messageId, rId, rPage, cancellationToken);
            }
            return;
        }

        if (data.StartsWith("adm_field_"))
        {
            var parts = data.Split('_');
            if (parts.Length >= 5 &&
                int.TryParse(parts[2], out int rId) &&
                int.TryParse(parts[3], out int rPage))
            {
                string field = parts[4];
                await PromptFieldEditInputAsync(chatId, messageId, rId, rPage, field, cancellationToken);
            }
            return;
        }

        if (data.StartsWith("adm_setcat_"))
        {
            var parts = data.Split('_');
            if (parts.Length >= 5 &&
                int.TryParse(parts[2], out int rId) &&
                int.TryParse(parts[3], out int rPage) &&
                int.TryParse(parts[4], out int newCatId))
            {
                await HandleCategoryEditAsync(chatId, messageId, rId, rPage, newCatId, cancellationToken);
            }
            return;
        }

        // ----------------- Manba qo'shish (FSM) Callbacklari -----------------
        if (!_cache.TryGetValue<ResourceAddState>(GetAddCacheKey(telegramId), out var state) || state is null)
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
            SetAddState(telegramId, state);
            await PromptTypeStepAsync(chatId, cancellationToken);
            return;
        }

        if (data.StartsWith("res_type_") && state.CurrentStep == ResourceAddStep.Type)
        {
            state.Type = data.Replace("res_type_", "");
            state.CurrentStep = ResourceAddStep.Category;
            SetAddState(telegramId, state);
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
                SetAddState(telegramId, state);
                await PromptLanguageStepAsync(chatId, cancellationToken);
            }
            return;
        }

        if (data.StartsWith("res_lang_") && state.CurrentStep == ResourceAddStep.Language)
        {
            state.Language = data.Replace("res_lang_", "");
            state.CurrentStep = ResourceAddStep.Url;
            SetAddState(telegramId, state);
            await PromptUrlStepAsync(chatId, cancellationToken);
            return;
        }

        if (data == "res_confirm" && state.CurrentStep == ResourceAddStep.Confirmation)
        {
            await SaveResourceAsync(chatId, telegramId, state, cancellationToken);
        }
    }

    public async Task CancelAddResourceAsync(long chatId, long telegramId, CancellationToken cancellationToken)
    {
        _cache.Remove(GetAddCacheKey(telegramId));
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
                SetAddState(telegramId, state);
                await PromptTitleStepAsync(chatId, cancellationToken);
                break;

            case ResourceAddStep.Type:
                state.CurrentStep = ResourceAddStep.Description;
                SetAddState(telegramId, state);
                await PromptDescriptionStepAsync(chatId, cancellationToken);
                break;

            case ResourceAddStep.Category:
                state.CurrentStep = ResourceAddStep.Type;
                SetAddState(telegramId, state);
                await PromptTypeStepAsync(chatId, cancellationToken);
                break;

            case ResourceAddStep.Language:
                state.CurrentStep = ResourceAddStep.Category;
                SetAddState(telegramId, state);
                await PromptCategoryStepAsync(chatId, cancellationToken);
                break;

            case ResourceAddStep.Url:
                state.CurrentStep = ResourceAddStep.Language;
                SetAddState(telegramId, state);
                await PromptLanguageStepAsync(chatId, cancellationToken);
                break;

            case ResourceAddStep.Confirmation:
                state.CurrentStep = ResourceAddStep.Url;
                SetAddState(telegramId, state);
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
        _cache.Remove(GetAddCacheKey(telegramId));

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

    private void SetAddState(long telegramId, ResourceAddState state)
    {
        _cache.Set(GetAddCacheKey(telegramId), state, TimeSpan.FromHours(1));
    }

    #endregion

    #region Foydalanuvchi Pagination

    public async Task ShowPagedResourcesAsync(long chatId, int? messageId, int pageNumber, CancellationToken cancellationToken)
    {
        const int pageSize = 5;
        var pagedResult = await _resourceRepository.GetPagedAsync(pageNumber, pageSize);
        var items = pagedResult.Items.ToList();

        if (!items.Any())
        {
            string emptyText = "Hozircha biror manba qo'shilmagan. Yangi manbalar tez orada joylanadi!";
            await _botClient.SendOrEditMessageAsync(chatId, messageId, emptyText, cancellationToken: cancellationToken);
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
        await _botClient.SendOrEditMessageAsync(chatId, messageId, sb.ToString(), ParseMode.Html, keyboard, cancellationToken);
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

        await _resourceRepository.IncrementViewsCountAsync(resourceId);
    }

    #endregion

    #region Admin Boshqaruv (Management: Update & Delete)

    public bool IsAdminEditingResource(long telegramId)
    {
        return _cache.TryGetValue<ResourceEditState>(GetEditCacheKey(telegramId), out var state) &&
               state is not null && !string.IsNullOrEmpty(state.Field);
    }

    public async Task ShowAdminPagedResourcesAsync(long chatId, int? messageId, int pageNumber, CancellationToken cancellationToken)
    {
        const int pageSize = 5;
        var pagedResult = await _resourceRepository.GetPagedAsync(pageNumber, pageSize);
        var items = pagedResult.Items.ToList();

        // 1. Agar oxirgi element o'chirilib sahifa bo'shab qolsa, lekin oldingi sahifada manba bo'lsa -> oldingisiga o'tish
        if (!items.Any() && pageNumber > 1)
        {
            pageNumber--;
            pagedResult = await _resourceRepository.GetPagedAsync(pageNumber, pageSize);
            items = pagedResult.Items.ToList();
        }

        // 2. Agar bazada haqiqatan biror manba qolmagan bo'lsa
        if (!items.Any())
        {
            string empty = "ℹ️ Hozircha bazada biror manba mavjud emas.";
            var backKeyboard = new InlineKeyboardMarkup(new[]
            {
                new[] { InlineKeyboardButton.WithCallbackData("⬅️ Admin Panelga qaytish", "adm_back_to_menu") }
            });

            await _botClient.SendOrEditMessageAsync(chatId, messageId, empty, ParseMode.Html, backKeyboard, cancellationToken);
            return;
        }

        var sb = new StringBuilder();
        sb.AppendLine($"⚙️ <b>Manbalarni boshqarish</b> <i>({pagedResult.PageNumber}/{pagedResult.TotalPages}-sahifa)</i>:\n");

        for (int i = 0; i < items.Count; i++)
        {
            sb.AppendLine($"{i + 1}. <b>{items[i].Title}</b>");
            sb.AppendLine($"   📁 {items[i].CategoryName ?? "Umumiy"} | 👁 {items[i].ViewsCount} ta ko'rish");
        }

        sb.AppendLine("\n<i>Boshqarish uchun raqamlardan birini tanlang 👇</i>");

        var keyboard = AdminResourceManagementKeyboard.CreateList(pagedResult.PageNumber, pagedResult.TotalPages, items);
        await _botClient.SendOrEditMessageAsync(chatId, messageId, sb.ToString(), ParseMode.Html, keyboard, cancellationToken);
    }

    public async Task ShowAdminResourceDetailsAsync(long chatId, int messageId, int resourceId, int returnPage, CancellationToken cancellationToken)
    {
        var resource = await _resourceRepository.GetByIdAsync(resourceId);
        if (resource is null)
        {
            await _botClient.EditMessageText(chatId, messageId, "Manba topilmadi.", cancellationToken: cancellationToken);
            return;
        }

        var sb = new StringBuilder();
        sb.AppendLine("📌 <b>Manba ma'lumotlari:</b>\n");
        sb.AppendLine($"📘 <b>Nomi:</b> {resource.Title}");
        sb.AppendLine($"📄 <b>Tavsifi:</b> {resource.Description ?? "<i>(Mavjud emas)</i>"}");
        sb.AppendLine($"📁 <b>Turi:</b> {resource.Type}");
        sb.AppendLine($"🗂 <b>Kategoriya:</b> {resource.CategoryName ?? "Umumiy"}");
        sb.AppendLine($"🌐 <b>Tili:</b> {resource.Language}");
        sb.AppendLine($"👁 <b>Ko'rishlar soni:</b> {resource.ViewsCount} ta");
        sb.AppendLine($"🔗 <b>Havolasi:</b> {resource.Url}");
        sb.AppendLine($"📅 <b>Yuklangan:</b> {resource.CreatedAt.ToTashkentString()}");
        if (resource.UpdatedAt.HasValue)
        {
            sb.AppendLine($"🔄 <b>Tahrirlangan:</b> {resource.UpdatedAt.ToTashkentString()}");
        }

        var keyboard = AdminResourceManagementKeyboard.CreateActions(resourceId, returnPage);

        await _botClient.EditMessageText(chatId, messageId, sb.ToString(), ParseMode.Html, replyMarkup: keyboard, cancellationToken: cancellationToken);
    }

    public async Task PromptDeleteResourceAsync(long chatId, int messageId, int resourceId, int returnPage, CancellationToken cancellationToken)
    {
        var resource = await _resourceRepository.GetByIdAsync(resourceId);
        string text = $"⚠️ <b>Diqqat!</b>\n\nHaqiqatan ham <b>'{resource?.Title}'</b> manbasini bazadan o'chirmoqchimisiz?";

        var keyboard = AdminResourceManagementKeyboard.CreateDeleteConfirm(resourceId, returnPage);

        await _botClient.EditMessageText(chatId, messageId, text, ParseMode.Html, replyMarkup: keyboard, cancellationToken: cancellationToken);
    }

    public async Task ConfirmDeleteResourceAsync(long chatId, int messageId, int resourceId, int returnPage, CancellationToken cancellationToken)
    {
        await _resourceRepository.DeleteAsync(resourceId);

        // Siz istagandek oddiy SendMessage xabari:
        await _botClient.SendMessage(
            chatId: chatId,
            text: "✅ Manba muvaffaqiyatli o'chirildi!",
            parseMode: ParseMode.Html,
            cancellationToken: cancellationToken);

        var keyboard = new InlineKeyboardMarkup(new[]
        {
            new[] { InlineKeyboardButton.WithCallbackData("⬅️ Admin Panelga qaytish", "adm_back_to_menu") }
        });
    }

    public async Task ShowEditFieldsMenuAsync(long chatId, int messageId, int resourceId, int returnPage, CancellationToken cancellationToken)
    {
        string text = "✏️ <b>Qaysi ma'lumotni o'zgartirmoqchisiz?</b>";
        var keyboard = AdminResourceManagementKeyboard.CreateEditFields(resourceId, returnPage);

        await _botClient.EditMessageText(chatId, messageId, text, ParseMode.Html, replyMarkup: keyboard, cancellationToken: cancellationToken);
    }

    public async Task PromptFieldEditInputAsync(long chatId, int messageId, int resourceId, int returnPage, string field, CancellationToken cancellationToken)
    {
        if (field == "cat")
        {
            var categories = (await _categoryRepository.GetAllAsync()).ToList();
            var keyboard = AdminResourceManagementKeyboard.CreateCategorySelection(resourceId, returnPage, categories);

            await _botClient.EditMessageText(
                chatId: chatId,
                messageId: messageId,
                text: "🗂 <b>Yangi kategoriyani tanlang:</b>",
                parseMode: ParseMode.Html,
                replyMarkup: keyboard,
                cancellationToken: cancellationToken);
            return;
        }

        var editState = new ResourceEditState
        {
            ResourceId = resourceId,
            ReturnPage = returnPage,
            Field = field
        };

        _cache.Set(GetEditCacheKey(chatId), editState, TimeSpan.FromMinutes(30));

        string prompt = field switch
        {
            "title" => "📝 Yangi nomni kiriting:",
            "desc" => "📄 Yangi tavsifni kiriting:",
            "url" => "🔗 Yangi havolani (link) kiriting:",
            _ => "Yangi qiymatni kiriting:"
        };

        var cancelKeyboard = new InlineKeyboardMarkup(new[]
        {
            new[] { InlineKeyboardButton.WithCallbackData("❌ Bekor qilish", $"adm_res_view_{resourceId}_{returnPage}") }
        });

        await _botClient.EditMessageText(
            chatId: chatId,
            messageId: messageId,
            text: $"✏️ <b>Tahrirlash:</b>\n\n{prompt}",
            parseMode: ParseMode.Html,
            replyMarkup: cancelKeyboard,
            cancellationToken: cancellationToken);
    }

    public async Task HandleAdminEditTextInputAsync(long chatId, long telegramId, string text, CancellationToken cancellationToken)
    {
        if (!_cache.TryGetValue<ResourceEditState>(GetEditCacheKey(telegramId), out var state) || state is null)
            return;

        var resource = await _resourceRepository.GetByIdAsync(state.ResourceId);
        if (resource is null)
        {
            _cache.Remove(GetEditCacheKey(telegramId));
            return;
        }

        switch (state.Field)
        {
            case "title":
                resource.Title = text.Trim();
                break;
            case "desc":
                resource.Description = text.Trim();
                break;
            case "url":
                resource.Url = text.Trim();
                var (chId, mId) = TelegramLinkHelper.ParseChannelPostLink(resource.Url);
                resource.TelegramChannelId = chId;
                resource.MessageId = mId;
                break;
        }

        await _resourceRepository.UpdateAsync(resource);
        _cache.Remove(GetEditCacheKey(telegramId));

        await _botClient.SendMessage(
            chatId: chatId,
            text: "✅ <b>Manba ma'lumoti muvaffaqiyatli yangilandi!</b>",
            parseMode: ParseMode.Html,
            cancellationToken: cancellationToken);

        var sent = await _botClient.SendMessage(chatId, "...", cancellationToken: cancellationToken);
        await ShowAdminResourceDetailsAsync(chatId, sent.MessageId, state.ResourceId, state.ReturnPage, cancellationToken);
    }

    public async Task HandleCategoryEditAsync(long chatId, int messageId, int resourceId, int returnPage, int categoryId, CancellationToken cancellationToken)
    {
        var resource = await _resourceRepository.GetByIdAsync(resourceId);
        if (resource is not null)
        {
            resource.CategoryId = categoryId;
            await _resourceRepository.UpdateAsync(resource);
        }

        await ShowAdminResourceDetailsAsync(chatId, messageId, resourceId, returnPage, cancellationToken);
    }

    public async Task CancelEditAsync(long chatId, long telegramId, CancellationToken cancellationToken)
    {
        _cache.Remove(GetEditCacheKey(telegramId));
        await _botClient.SendMessage(
            chatId: chatId,
            text: "❌ Tahrirlash bekor qilindi.",
            cancellationToken: cancellationToken);
    }

    #endregion
}

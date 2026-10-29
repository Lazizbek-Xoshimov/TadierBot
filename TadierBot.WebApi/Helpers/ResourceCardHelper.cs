using System.Text;
using TadierBot.WebApi.Models;

namespace TadierBot.WebApi.Helpers;

public static class ResourceCardHelper
{
    public static string ToDetailsHtml(this Resource resource, bool isAdmin = false)
    {
        var sb = new StringBuilder();
        sb.AppendLine($"📘 <b>{resource.Title}</b>\n");

        if (!string.IsNullOrWhiteSpace(resource.Description))
        {
            sb.AppendLine($"📄 <b>Tavsif:</b> {resource.Description}\n");
        }

        sb.AppendLine($"🗂 <b>Kategoriya:</b> {resource.CategoryName ?? "Umumiy"}");
        sb.AppendLine($"🌐 <b>Tili:</b> {resource.Language.ToUpper()}");
        sb.AppendLine($"🔗 <b>Havola:</b> {resource.Url}");

        if (isAdmin)
        {
            sb.AppendLine($"👁 <b>Ko'rishlar soni:</b> {resource.ViewsCount} ta");
            sb.AppendLine($"📅 <b>Yuklangan:</b> {resource.CreatedAt.ToTashkentString()}");
            if (resource.UpdatedAt.HasValue)
            {
                sb.AppendLine($"🔄 <b>Tahrirlangan:</b> {resource.UpdatedAt.ToTashkentString()}");
            }
        }

        return sb.ToString();
    }
}


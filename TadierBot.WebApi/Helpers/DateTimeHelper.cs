namespace TadierBot.WebApi.Helpers;

public static class DateTimeHelper
{
    private static readonly TimeZoneInfo TashkentTimeZone = GetTashkentTimeZone();

    private static TimeZoneInfo GetTashkentTimeZone()
    {
        try
        {
            return TimeZoneInfo.FindSystemTimeZoneById("Asia/Tashkent");
        }
        catch
        {
            try
            {
                return TimeZoneInfo.FindSystemTimeZoneById("Central Asia Standard Time");
            }
            catch
            {
                return TimeZoneInfo.CreateCustomTimeZone(
                    id: "Tashkent Standard Time",
                    baseUtcOffset: TimeSpan.FromHours(5),
                    displayName: "(UTC+05:00) Tashkent",
                    standardDisplayName: "Tashkent Standard Time");
            }
        }
    }

    public static DateTime ToTashkentTime(this DateTime utcDateTime)
    {
        var utc = DateTime.SpecifyKind(utcDateTime, DateTimeKind.Utc);
        return TimeZoneInfo.ConvertTimeFromUtc(utc, TashkentTimeZone);
    }

    public static string ToTashkentString(this DateTime utcDateTime, string format = "dd.MM.yyyy HH:mm")
    {
        return utcDateTime.ToTashkentTime().ToString(format);
    }

    public static string ToTashkentString(this DateTime? utcDateTime, string format = "dd.MM.yyyy HH:mm", string nullFallback = "—")
    {
        return utcDateTime.HasValue ? utcDateTime.Value.ToTashkentString(format) : nullFallback;
    }
}


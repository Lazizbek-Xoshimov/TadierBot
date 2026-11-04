namespace TadierBot.WebApi.Models;

/// <summary>
/// Tadbir modeli + hisoblangan meta ma'lumotlar (qatnashuvchilar soni va ro'yxatdan o'tganlik holati)
/// </summary>
public class EventWithMeta : Event
{
    public int RegisteredCount { get; set; }
    public bool IsRegistered { get; set; }
}


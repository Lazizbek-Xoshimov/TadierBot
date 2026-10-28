namespace TadierBot.WebApi.DTOs;

public class BroadcastState
{
    public long AdminTelegramId { get; set; }
    public int Step { get; set; } = 1; // 1 = WaitingForMessage, 2 = WaitingForConfirmation
    public int? SourceMessageId { get; set; }
    public long SourceChatId { get; set; }
}


namespace TadierBot.WebApi.Configurations;

public class BotConfiguration
{
    public const string Configuration = "BotConfiguration";

    public string BotToken { get; set; } = string.Empty;
    public string WebhookUrl { get; set; } = string.Empty;
    public string SecretToken { get; set; } = string.Empty;
}


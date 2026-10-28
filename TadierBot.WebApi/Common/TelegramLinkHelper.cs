using System.Text.RegularExpressions;

namespace TadierBot.WebApi.Common;

public static class TelegramLinkHelper
{
    private static readonly Regex ChannelPostRegex = new(@"t\.me\/([a-zA-Z0-9_+]+)\/([0-9]+)", RegexOptions.Compiled);

    public static (string? ChannelId, int? MessageId) ParseChannelPostLink(string? url)
    {
        if (string.IsNullOrWhiteSpace(url))
            return (null, null);

        var match = ChannelPostRegex.Match(url);
        if (!match.Success)
            return (null, null);

        string channelId = match.Groups[1].Value;
        int? messageId = int.TryParse(match.Groups[2].Value, out int msgId) ? msgId : null;

        return (channelId, messageId);
    }
}


namespace TadierBot.WebApi.DTOs.Word;

/// <summary>
/// Trenajyor mashg'uloti uchun kartochkalar to'plami
/// </summary>
public class TrainerSessionResponse
{
    public string Level { get; set; } = "A1";
    public int? Unit { get; set; }
    public int TotalCount { get; set; }
    public List<WordDto> Words { get; set; } = new();
}


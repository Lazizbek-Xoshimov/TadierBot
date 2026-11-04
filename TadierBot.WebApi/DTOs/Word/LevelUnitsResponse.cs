namespace TadierBot.WebApi.DTOs.Word;

/// <summary>
/// Tanlangan darajadagi mavjud unitlar ro'yxati
/// </summary>
public class LevelUnitsResponse
{
    public string Level { get; set; } = "A1";
    public List<int> Units { get; set; } = new();
    public bool HasUnassignedWords { get; set; }
}


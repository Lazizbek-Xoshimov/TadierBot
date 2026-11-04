namespace TadierBot.WebApi.DTOs.Word;

/// <summary>
/// Foydalanuvchining so'z yodlash statistikasi
/// </summary>
public class WordStatsResponse
{
    public int TotalLearned { get; set; }   // Yodlangan so'zlar soni
    public int TotalLearning { get; set; }  // Hali o'rganilayotganlar soni
    public int TotalWords { get; set; }     // Bazadagi jami so'zlar soni
}


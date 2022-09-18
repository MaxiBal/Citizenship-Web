namespace Maxi.Citizenship.Models.Dto;

public class QuestionDto
{
    public int Id { get; set; }
    public string? Prompt { get; set; }
    public string? Category { get; set; }
    public int CategoryId { get; set; }
    public string? SubCategory { get; set; }
    public int SubCategoryId { get; set; }
    public string Type { get; set; }
    public int TypeId { get; set; }
    public bool HasAsterisk { get; set; }
    public string? ImageUrl { get; set; }
}

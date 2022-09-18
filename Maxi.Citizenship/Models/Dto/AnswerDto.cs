namespace Maxi.Citizenship.Models.Dto;

public class AnswerDto
{
    public int Id { get; set; }
    public short QuestionId { get; set; }
    public string? Key { get; set; }
    public string? AddlInfo { get; set; }
    public string? ImgUrl { get; set; }
    public bool IsSupplemental { get; set; }
    public int Sort { get; set; }
}

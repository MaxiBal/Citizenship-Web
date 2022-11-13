using Maxi.Citizenship.Models;
using Maxi.Citizenship.Models.Dto;
using Microsoft.EntityFrameworkCore;

namespace Maxi.Citizenship.Extensions.ExtendWebApplicationBuilder.Endpoints.Citizenship;

public static partial class CitizenshipEndpoints
{
    public static WebApplication MapCitizenshipEndpoints(this WebApplication app)
    {
        app.MapGroup("api/questions")
            .MapCitizenshipApi()
            //.RequireAuthorization()
            .AsBffApiEndpoint();

        return app;
    }

    public static RouteGroupBuilder MapCitizenshipApi(this RouteGroupBuilder routes)
    {
        routes.MapGet("", List);
        routes.MapGet("{questionId:int}/answers", ListAnswers);

        return routes;
    }

    public static IResult List(CitizenshipDbContext db)
    {
        return Results.Ok(db.Questions
            .Include(e => e.QuestionSubCategory)
            .Include(e => e.QuestionType)
            .Select(e => new QuestionDto
            {
                Id = e.Id,
                Prompt = e.Prompt,
                Category = e.QuestionSubCategory.QuestionCategory.AppName,
                CategoryId = e.QuestionSubCategory.QuestionCategory.Id,
                SubCategory = e.QuestionSubCategory.AppName,
                SubCategoryId = e.QuestionSubCategory.Id,
                Type = e.QuestionType.AppName,
                TypeId = e.QuestionType.Id,
                HasAsterisk = e.HasAsterisk,
                ImageUrl = e.ImageUrl
            }));
    }

    public static IResult ListAnswers(CitizenshipDbContext db, int questionId)
    {
        return Results.Ok(db.Answers
            .Where(e => e.QuestionId == questionId)
            .Select(e => new AnswerDto
            {
                Id = e.Id,
                QuestionId = e.QuestionId,
                Key = e.Key,
                AddlInfo = e.AddlInfo,
                ImgUrl = e.ImgUrl,
                IsSupplemental = e.IsSupplemental,
                Sort = e.Sort
            })
            .OrderBy(e => e.Sort));
    }
}

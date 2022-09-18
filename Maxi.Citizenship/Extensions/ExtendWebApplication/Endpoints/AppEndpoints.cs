using Maxi.Citizenship.Extensions.ExtendWebApplicationBuilder.Endpoints.Citizenship;

namespace Maxi.Citizenship.Extensions.ExtendWebApplication.Endpoints;

public static partial class AppEndpoints
{
    public static WebApplication MapEndpoints(this WebApplication app)
    {
        _ = app.MapCitizenshipEndpoints();

        return app;
    }
}

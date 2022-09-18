using Maxi.Citizenship.Extensions.ExtendWebApplication.Endpoints;
using Maxi.Citizenship.Middleware;

namespace Maxi.Citizenship.Extensions.ExtendWebApplication;

public static class WebApplicationExtensions
{
    public static WebApplication Setup(this WebApplication app)
    {
        _ = app.Environment.IsDevelopment() switch
        {
            true => app.UseDeveloperExceptionPage(),
            false => app.UseHsts()
        };

        var cookiePolicy = new CookiePolicyOptions
        {
            Secure = CookieSecurePolicy.Always
        };

        _ = app.UseCookiePolicy(cookiePolicy)

               .UseHttpsRedirection()
               .UseMiddleware<AppHeaders>()
               .UseCors()
               .UseResponseCaching()
               .UseResponseCompression()
               .UseStaticFiles()
               .UseRouting()

               .UseAuthentication()
               .UseBff()
               .UseAuthorization();

        app.MapBffManagementEndpoints();

        _ = app.MapEndpoints()
               .MapFallbackToFile("index.html");

        return app;
    }
}
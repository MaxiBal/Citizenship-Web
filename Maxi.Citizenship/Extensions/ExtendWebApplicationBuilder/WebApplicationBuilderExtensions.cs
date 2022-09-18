namespace Maxi.Citizenship.Extensions.ExtendWebApplicationBuilder;

public static partial class WebApplicationBuilderExtensions
{
    public static WebApplicationBuilder Configure(this WebApplicationBuilder builder)
    {
        _ = builder
            .ConfigureAppConfiguration()
            .ConfigureAppKestrel()
            .ConfigureAppLogging()
            .ConfigureAppServices();

        return builder;
    }
}

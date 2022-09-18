using Serilog;

namespace Maxi.Citizenship.Extensions.ExtendWebApplicationBuilder;

public static partial class AppLogging
{
    public static WebApplicationBuilder ConfigureAppLogging(this WebApplicationBuilder builder)
    {
        _ = builder.Logging.ClearProviders();

        _ = builder.Host.UseSerilog((context, logConfig) => logConfig
            .ReadFrom.Configuration(builder.Configuration)
        );

        return builder;
    }
}

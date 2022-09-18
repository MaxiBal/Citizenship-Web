namespace Maxi.Citizenship.Extensions.ExtendIServiceCollection;

public static partial class AppOptions
{
    public static IServiceCollection AddAppOptions(this IServiceCollection services, IConfiguration configuration)
    {
        services
            .AddAppJwtOptions();

        return services;
    }

    private static IServiceCollection AddAppJwtOptions(this IServiceCollection services)
    {
        services.AddOptions<Options.Jwt>()
            .Configure(options =>
            {
                options.Audience = "localhost";
                options.Issuer = "localhost";
                options.ExpiresIn = 60;
            })
            .BindConfiguration(nameof(Options.Jwt));

        return services;
    }
}

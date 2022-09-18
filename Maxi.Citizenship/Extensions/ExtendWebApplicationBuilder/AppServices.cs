using Maxi.Citizenship.Extensions.ExtendIServiceCollection;
using Maxi.Citizenship.Models;

namespace Maxi.Citizenship.Extensions.ExtendWebApplicationBuilder;

public static partial class AppServices
{
    public static WebApplicationBuilder ConfigureAppServices(this WebApplicationBuilder builder)
    {
        const string corsPolicy = "CorsPolicy";

        _ = builder.Services
            .AddHttpContextAccessor()
            .AddResponseCaching()
            .AddEndpointsApiExplorer()
            .AddAppCors(corsPolicy, builder.Environment)
            .AddAppOptions(builder.Configuration)
            //.ConfigureAppSwaggerOptions(builder.Configuration)
            .ConfigureAppJsonOptions()
            //.AddAppVersioningOptions(builder.Configuration)
            //.AddAppAuthOptions(builder.Configuration)
            //.AddAppFluentValidation()
            .AddAppInfrastructure(builder.Environment)
            //.AddAppOpenTelemetry("MaxiBal.Api")
            .AddAppResponseCompression()
            //.AddDatabaseDeveloperPageExceptionFilter() // https://github.com/aspnet/Announcements/issues/432
            .AddAuth(builder.Configuration)
            .AddHealthChecks()

            ;
        //.AddDbContextCheck<AccountsDbContext>()

        //.Services.AddScoped<ICurrentUserService, CurrentUserService>();

        _ = builder.Services.AddNpgsql<CitizenshipDbContext>(builder.Configuration.GetConnectionString("DefaultConnection"));

        _ = builder.Services.AddControllersWithViews();

        return builder;
    }
}

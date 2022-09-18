using Microsoft.EntityFrameworkCore;

namespace Maxi.Citizenship.Extensions.ExtendIServiceCollection;

public static partial class AppInfrastructure
{
    public static IServiceCollection AddAppInfrastructure(this IServiceCollection services, IWebHostEnvironment env)
    {
        //if (env.IsEnvironment(LocalConfig.FunctionalTestingEnvName))
        //{
        //    services.AddDbContext<AccountsDbContext>(options =>
        //        options.UseInMemoryDatabase($"Accounts"));
        //}
        //if (false)
        //{

        //}
        //else
        //{
        //    var connectionString = Environment.GetEnvironmentVariable("DB_CONNECTION_STRING");
        //    if (string.IsNullOrWhiteSpace(connectionString))
        //    {
        //        connectionString = env.IsDevelopment()
        //            ? "Host=127.0.0.1;Port=5432;Database=accounts;Username=postgres;Password=usausa1"
        //            : throw new Exception("DB_CONNECTION_STRING environment variable is not set.");
        //    }

        //    // https://neelbhatt.com/2018/02/27/use-dbcontextpooling-to-improve-the-performance-net-core-2-1-feature/
        //    // https://docs.microsoft.com/en-us/dotnet/api/microsoft.extensions.dependencyinjection.entityframeworkservicecollectionextensions.adddbcontextpool?view=efcore-6.0
        //    services.AddPooledDbContextFactory<AccountsDbContext>(options =>
        //        options.UseNpgsql(connectionString)
        //    );
        //}

        return services;
    }
}

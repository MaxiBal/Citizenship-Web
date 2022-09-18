using Microsoft.AspNetCore.ResponseCompression;
using System.IO.Compression;

namespace Maxi.Citizenship.Extensions.ExtendIServiceCollection;

public static class AppResponseCompression
{
    public static IServiceCollection AddAppResponseCompression(this IServiceCollection services)
    {
        // https://docs.microsoft.com/en-us/aspnet/core/performance/response-compression?view=aspnetcore-6.0
        services.AddResponseCompression(options =>
        {
            options.Providers.Add<BrotliCompressionProvider>();
            options.Providers.Add<GzipCompressionProvider>();

            options.MimeTypes = ResponseCompressionDefaults.MimeTypes.Concat(new[] { "image/svg+xml" });

            options.EnableForHttps = true;
        });

        services.Configure<BrotliCompressionProviderOptions>(options =>
        {
            options.Level = CompressionLevel.Fastest;
        });

        services.Configure<GzipCompressionProviderOptions>(options =>
        {
            options.Level = CompressionLevel.SmallestSize;
        });

        return services;
    }
}

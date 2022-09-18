using Microsoft.Net.Http.Headers;

namespace Maxi.Citizenship.Extensions.ExtendIServiceCollection;

public static partial class AppCors
{
    public static IServiceCollection AddAppCors(this IServiceCollection services, string policyName, IWebHostEnvironment env)
    {
        if (env.IsDevelopment())
        {
            services.AddCors(options =>
            {
                options.AddPolicy(policyName, builder =>
                    builder.SetIsOriginAllowed(_ => true)
                    .AllowAnyMethod()
                    .AllowAnyHeader()
                    .WithHeaders(HeaderNames.ContentType)
                    .WithExposedHeaders("X-Pagination"));
            });
        }
        else
        {
            //services.AddCors(options =>
            //{
            //    options.AddPolicy(policyName, builder =>
            //        builder.WithOrigins(origins)
            //        .AllowAnyMethod()
            //        .AllowAnyHeader()
            //        .WithHeaders(HeaderNames.ContentType)
            //        .WithExposedHeaders("X-Pagination"));
            //});
        }

        return services;
    }
}

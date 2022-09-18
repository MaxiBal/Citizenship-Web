using Microsoft.AspNetCore.Server.Kestrel.Core;

namespace Maxi.Citizenship.Extensions.ExtendWebApplicationBuilder;

public static partial class AppKestrel
{
    public static WebApplicationBuilder ConfigureAppKestrel(this WebApplicationBuilder builder)
    {
        builder.WebHost.ConfigureKestrel(options =>
        {
            options.AddServerHeader = false;
            options.ConfigureEndpointDefaults(def =>
            {
                def.Protocols = HttpProtocols.Http1AndHttp2AndHttp3;
            });
        });

        return builder;
    }
}

namespace Maxi.Citizenship.Extensions.ExtendWebApplicationBuilder;

public static partial class AppConfiguration
{
    public static WebApplicationBuilder ConfigureAppConfiguration(this WebApplicationBuilder builder)
    {
        _ = builder.Host.ConfigureAppConfiguration((hostingContext, configuration) =>
        {
            IHostEnvironment env = hostingContext.HostingEnvironment;

            configuration.Sources.Clear();

            var configFolder = Path.Combine(env.ContentRootPath, "Config", env.EnvironmentName);
            var info = new DirectoryInfo(configFolder);
            var files = info.GetFiles();

            foreach (var file in files)
            {
                configuration.AddJsonFile(file.FullName, optional: false, reloadOnChange: true);
            }

            var configurationRoot = configuration.Build();
        });

        return builder;
    }
}

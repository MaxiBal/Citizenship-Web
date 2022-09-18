using Maxi.Citizenship.Extensions.ExtendWebApplication;
using Maxi.Citizenship.Extensions.ExtendWebApplicationBuilder;
using Serilog;
using Serilog.Events;
using System.Reflection;

Log.Logger = new LoggerConfiguration()
            .MinimumLevel.Override("Microsoft", LogEventLevel.Information)
            .Enrich.FromLogContext()
            .WriteTo.Console()
            .CreateBootstrapLogger();

try
{
    Log.Information("{appName} is starting...", Assembly.GetEntryAssembly()?.GetName().Name);

    var app = WebApplication.CreateBuilder(args)
                            .Configure()
                            .Build();

    app.Setup().Run();
}
catch (Exception ex)
{
    Log.Fatal(ex, "An unhandled exception occured during bootstrapping.");
    throw;
}
finally
{
    Log.Information("Shutting down application.");
    Log.CloseAndFlush();
}

// Make the implicit Program class public so the functional test project can access it
public partial class Program { }


namespace Maxi.Citizenship.Middleware;

public class AppHeaders
{
    private readonly RequestDelegate _next;

    public AppHeaders(RequestDelegate next) => _next = next;

    public async Task InvokeAsync(HttpContext httpContext)
    {
        httpContext.Response.Headers.AltSvc = "h3=\":443\"";

        var csp = "default-src 'self'; object-src 'none'; frame-ancestors 'none'; sandbox allow-forms allow-same-origin allow-scripts; base-uri 'self'; upgrade-insecure-requests;";

        var headersToAdd = new Dictionary<string, string>
        {
            { "X-Frame-Options", "DENY" },
            { "X-Xss-Protection", "1; mode=block" },
            { "X-Content-Type-Options", "nosniff" },
            { "X-Content-Security-Policy", csp },
            { "Content-Security-Policy", csp },
            { "Strict-Transport-Security", "max-age=63072000; includeSubDomains; preload" },
            { "Cache-Control", "no-cache" },
            { "Referrer-Policy", "no-referrer" }
        };

        foreach (KeyValuePair<string, string> header in headersToAdd)
        {
            if (httpContext.Response.Headers.Any(h => string.Compare(h.Key, header.Key, StringComparison.InvariantCultureIgnoreCase) == 0)) { continue; }

            httpContext.Response.Headers.Add(header.Key, header.Value);
        }

        var headersToRemove = new[]
        {
            "X-Powered-By",
            "x-powered-by",
            "Server",
            "server"
        };

        foreach (var header in headersToRemove)
        {
            httpContext.Response.Headers.Remove(header);
        }

        await _next(httpContext);
    }
}

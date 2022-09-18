using Duende.Bff.Yarp;

namespace Maxi.Citizenship.Extensions.ExtendIServiceCollection;

public static partial class AppAuth
{
    public static IServiceCollection AddAuth(this IServiceCollection services)
    {
        services.AddBff()
            .AddRemoteApis();

        services.AddAuthentication(options =>
        {
            options.DefaultScheme = "cookie";
            options.DefaultChallengeScheme = "oidc";
            options.DefaultSignOutScheme = "oidc";
        }).AddCookie("cookie", options =>
        {
            options.Cookie.Name = "__Host-bff";
            options.Cookie.SameSite = SameSiteMode.Strict;
        }).AddOpenIdConnect("oidc", options =>
        {
            options.Authority = "https://localhost:44310";
            options.ClientId = "CitizenshipUser";
            options.ClientSecret = "Give me your tired, your poor";
            options.ResponseType = "code";
            options.ResponseMode = "query";

            options.GetClaimsFromUserInfoEndpoint = true;
            options.MapInboundClaims = false;
            options.SaveTokens = true;

            options.Scope.Clear();
            options.Scope.Add("openid");
            options.Scope.Add("profile");
            options.Scope.Add("CitizenshipUser");
            options.Scope.Add("offline_access");

            options.TokenValidationParameters = new()
            {
                NameClaimType = "name",
                RoleClaimType = "role"
            };
        });

        return services;
    }
}

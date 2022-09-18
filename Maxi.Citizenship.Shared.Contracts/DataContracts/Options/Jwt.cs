namespace Maxi.Citizenship.Shared.Contracts.DataContracts.Options;

public class Jwt
{
    public string? Issuer { get; set; }
    public string? Audience { get; set; }
    public string? ClientSecret { get; set; }
    public int ExpiresIn { get; set; }
}

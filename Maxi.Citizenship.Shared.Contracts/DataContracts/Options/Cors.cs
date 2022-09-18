namespace Maxi.Citizenship.Shared.Contracts.DataContracts.Options;

public class Cors
{
    public string AllowedHosts { get; set; } = "*";
    public string AllowedOrigins { get; set; } = "*";
    public string AllowedMethods { get; set; } = "*";
    public string AllowedHeaders { get; set; } = "*";
}

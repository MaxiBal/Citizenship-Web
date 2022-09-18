using System.IO;
using System.Reflection;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.FileProviders;
using Microsoft.Extensions.Hosting;

namespace Maxi.Citizenship.Extensions.ExtendIServiceCollection;

public static partial class AppRazor
{
    //public static void AddAdminUIRazorRuntimeCompilation(this IServiceCollection services, IWebHostEnvironment hostingEnvironment)
    //{
    //    if (hostingEnvironment.IsDevelopment())
    //    {
    //        var builder = services.AddControllersWithViews();

    //        var adminAssembly = typeof(AppRazor).GetTypeInfo().Assembly.GetName().Name;

    //        builder.AddRazorRuntimeCompilation(options =>
    //        {
    //            if (adminAssembly == null) return;

    //            var libraryPath = Path.GetFullPath(Path.Combine(hostingEnvironment.ContentRootPath, "..", adminAssembly));

    //            if (Directory.Exists(libraryPath))
    //            {
    //                options.FileProviders.Add(new PhysicalFileProvider(libraryPath));
    //            }
    //        });
    //    }
    //}
}

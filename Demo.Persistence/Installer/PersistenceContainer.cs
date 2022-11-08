using Demo.Application.Contracts;
using Demo.Domain.Entities;
using Demo.Domain.Security;
using Demo.Persistence.Repositories;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;

namespace Demo.Persistence.Installer
{
    public static class PersistenceContainer
    {
        public static IServiceCollection AddPersistenceServices(this IServiceCollection services, IConfiguration configuration)
        {
            services.AddDbContext<DemoContext>(options =>
            {
                options.UseSqlServer(configuration.GetConnectionString("DefaultConnection"));
            });

            services.AddScoped(typeof(IBaseRepository<>), typeof(BaseRepository<>));
            services.AddScoped(typeof(IItemRepository), typeof(ItemRepository));
            services.AddScoped(typeof(ITokenRepository), typeof(TokenRepository));
            services.AddScoped(typeof(IIdentityRepository), typeof(IdentityRepository));
            
            services.AddIdentity<AppUser, IdentityRole>(options =>
            {
                options.User.RequireUniqueEmail = false;

            }).AddEntityFrameworkStores<DemoContext>()
               .AddDefaultTokenProviders();

            services.Configure<JWT>(configuration.GetSection("JWT"));



            return services;
        }
    }
}

using Demo.Domain.Entities;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace Demo.Persistence
{
    public class DemoContext:IdentityDbContext<AppUser>
    {
        public DemoContext(DbContextOptions options) : base(options)
        {
              
        }

        public DbSet<Item> Items { get; set; }
        public DbSet<UnitOfMeasurement>  UnitOfMeasurements { get; set; }

        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);
            builder.ApplyConfigurationsFromAssembly(Assembly.GetExecutingAssembly());
        }
    }
}

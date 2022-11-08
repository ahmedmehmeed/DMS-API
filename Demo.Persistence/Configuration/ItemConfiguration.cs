using Demo.Domain.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Demo.Persistence.Configuration
{
    public class ItemConfiguration : IEntityTypeConfiguration<Item>
    {
        public void Configure(EntityTypeBuilder<Item> builder)
        {
           builder.ToTable("Items");
           builder.HasKey(x => x.Id);
           builder.Property(p => p.Id).HasColumnName("Id").ValueGeneratedNever();
           builder.HasOne(p=>p.UOM).WithMany(p => p.Items).HasForeignKey(p => p.UOMId).OnDelete(DeleteBehavior.NoAction);
           builder.Property(p => p.Name).IsRequired();
           builder.Property(p => p.Description).IsRequired();
           builder.Property(p=>p.Price).HasColumnType("decimal(18,2)");
        }
    }
}

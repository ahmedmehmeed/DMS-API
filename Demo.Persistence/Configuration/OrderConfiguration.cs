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
    public class OrderConfiguration : IEntityTypeConfiguration<Order>
    {
        public void Configure(EntityTypeBuilder<Order> builder)
        {
            builder.ToTable("Orders");
            builder.HasKey(x => x.Id);
            builder.Property(p => p.Id).HasColumnName("Id").ValueGeneratedNever();
            builder.HasOne(p => p.User).WithMany(p => p.Orders).HasForeignKey(p => p.UserId).OnDelete(DeleteBehavior.NoAction);
            builder.HasOne(p => p.Item).WithMany(p => p.Orders).HasForeignKey(p => p.ItemId).OnDelete(DeleteBehavior.NoAction);
        }
    }
}

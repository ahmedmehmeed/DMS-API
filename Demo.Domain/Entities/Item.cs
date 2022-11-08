using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Demo.Domain.Entities
{
    public class Item
    {
        public Guid Id { get; set; } = Guid.NewGuid();

        public string? Atr1 { get; set; }
        public string? Atr2 { get; set; }
        public string? Atr3 { get; set; }
        public string? Atr4 { get; set; }
        public string? Atr5 { get; set; }
        public string? Atr6 { get; set; }
        public string? Atr7 { get; set; }
        public string? Atr8 { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public int QTY { get; set; }
        public decimal Price { get; set; }

        public int UOMId { get; set; }

        public UnitOfMeasurement UOM { get; set; }
    }
}

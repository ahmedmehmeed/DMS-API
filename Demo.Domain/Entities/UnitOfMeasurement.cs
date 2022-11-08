using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Demo.Domain.Entities
{
    public class UnitOfMeasurement
    {
        public UnitOfMeasurement()
        {
            Items = new HashSet<Item>();
        }
        public int Id { get; set; }
        public string UOM { get; set; }
        public string Description { get; set; }
        public ICollection<Item> Items { get; set; }
    }
}

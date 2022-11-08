using Demo.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Demo.Application.Features.Items.Queries.GetItemsList
{
    public class GetItemsListDto
    {
        public Guid Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public int QTY { get; set; }
        public decimal Price { get; set; }
        public UnitOfMeasurement UOM { get; set; }
    }
}

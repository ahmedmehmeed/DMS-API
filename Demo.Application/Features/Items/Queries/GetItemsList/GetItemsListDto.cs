using Demo.Domain.Entities;

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

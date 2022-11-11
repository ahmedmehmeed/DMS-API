

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

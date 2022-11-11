

namespace Demo.Application.Features.Orders.Queries.GetOrdersList
{
    public class GetOrdersListDto
    {
        public Guid Id { get; set; }
        public DateTime OrderDate { get; set; }
        public string Username { get; set; }
        public string ItemName { get; set; }
        public string ItemDescription { get; set; }
        public decimal ItemPrice { get; set; }
        public string UOM { get; set; }
    }
}

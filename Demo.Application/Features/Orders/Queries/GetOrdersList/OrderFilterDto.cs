using Demo.Application.Pagination;

namespace Demo.Application.Features.Orders.Queries.GetOrdersList
{
    public class OrderFilterDto:BasePaginationDto
    {
        public string? Username { get; set; }
        public string? ItemName { get; set; }
        public decimal ItemPrice { get; set; }

    }
}

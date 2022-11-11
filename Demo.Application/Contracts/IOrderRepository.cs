using Demo.Application.Features.Orders.Queries.GetOrdersList;
using Demo.Application.Pagination;
using Demo.Domain.Entities;
namespace Demo.Application.Contracts
{
    public interface IOrderRepository :IBaseRepository<Order>
    {
        /// <summary>
        /// Include all relation tables
        /// </summary>
        Task<PagedList<Order>> GetAllOrdersLists(OrderFilterDto orderFilterDto);

        Task AddOrderAsync(Order order);
    }
}

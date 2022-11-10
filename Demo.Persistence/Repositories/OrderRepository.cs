using Demo.Application.Contracts;
using Demo.Application.Features.Orders.Queries.GetOrdersList;
using Demo.Application.Pagination;
using Demo.Domain.Entities;
using LinqKit;
using Microsoft.EntityFrameworkCore;
using System.Linq.Expressions;

namespace Demo.Persistence.Repositories
{
    public class OrderRepository : BaseRepository<Order>, IOrderRepository
    {
        public OrderRepository(DemoContext demoContext) : base(demoContext)
        {

        }

        public async Task<PagedList<Order>> GetAllOrdersLists(OrderFilterDto orderFilterDto)
        {
            Expression<Func<Order, bool>> predicate = GetOrdersFilters(orderFilterDto);
            return await Task.Run(() =>
            {
                var orders = demoContext.Orders.Where(predicate).Include(p => p.User).Include(p => p.Item).ThenInclude(p => p.UOM).AsQueryable();
                return PagedList<Order>.ToPagedList(orders, orderFilterDto.PageSize, orderFilterDto.PageNumber);
            });


        }


        private static Expression<Func<Order, bool>> GetOrdersFilters(OrderFilterDto orderFilterDto)
        {

            Expression<Func<Order, bool>> predicate = c => true;
            if (!string.IsNullOrEmpty(orderFilterDto.ItemName))
            {
                predicate = predicate.And(p => p.Item.Name.Contains(orderFilterDto.ItemName));
            }

            if (!string.IsNullOrEmpty(orderFilterDto.Username))
            {
                predicate = predicate.And(p => p.User.UserName.Contains(orderFilterDto.Username));
            }

            if (orderFilterDto.ItemPrice>0)
            {
                predicate = predicate.And(p => p.Item.Price== orderFilterDto.ItemPrice);
            }

            return predicate;
        }
    }
} 

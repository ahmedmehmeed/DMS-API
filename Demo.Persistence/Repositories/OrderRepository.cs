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

        public async Task AddOrderAsync(Order order)
        {
            using var transaction = demoContext.Database.BeginTransaction();
            try
            {
                await  demoContext.AddAsync(order);
                await  demoContext.SaveChangesAsync();
                var item= await demoContext.Items.FirstOrDefaultAsync(p=>p.Id==order.ItemId);
                if(item.QTY <= order.Quantity)
                    transaction.Rollback();
                item.QTY -= order.Quantity;
                demoContext.Entry(item).State = EntityState.Modified;
                await demoContext.SaveChangesAsync();
                transaction.Commit();

            }
            catch (Exception)
            {

                transaction.Rollback();
            }

           await demoContext.SaveChangesAsync();
        }
    }
} 

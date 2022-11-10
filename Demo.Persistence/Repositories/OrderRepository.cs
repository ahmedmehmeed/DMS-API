using Demo.Application.Contracts;
using Demo.Application.Features.Orders.Queries.GetOrdersList;
using Demo.Domain.Entities;
using Microsoft.EntityFrameworkCore;

namespace Demo.Persistence.Repositories
{
    public class OrderRepository : BaseRepository<Order>, IOrderRepository
    {
        public OrderRepository(DemoContext demoContext) : base(demoContext)
        {

        }

        public async Task<IReadOnlyList<Order>> GetAllOrdersLists()
        {

            return await demoContext.Orders.Include(p=>p.User).Include(p=>p.Item).ThenInclude(p=>p.UOM).ToListAsync();
        }
    }
} 

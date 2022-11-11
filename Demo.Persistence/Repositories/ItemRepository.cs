using Demo.Application.Contracts;
using Demo.Domain.Entities;

namespace Demo.Persistence.Repositories
{
    public class ItemRepository : BaseRepository<Item>, IItemRepository
    {
        public ItemRepository(DemoContext demoContext) : base(demoContext)
        {

        }
    }
}

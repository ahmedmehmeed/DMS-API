using Demo.Application.Contracts;
using Microsoft.EntityFrameworkCore;

namespace Demo.Persistence.Repositories
{
    public class BaseRepository<T> : IBaseRepository<T> where T : class
    {
        public readonly DemoContext demoContext;

        public BaseRepository(DemoContext demoContext)
        {
            this.demoContext = demoContext;
        }
        public async Task<T> AddAsync(T entity)
        {
            await demoContext.Set<T>().AddAsync(entity);
            await demoContext.SaveChangesAsync();
            return entity;
        }

        public async Task<bool> Commit()
        {
           return await demoContext.SaveChangesAsync() > 0;
        }

        public async Task DeleteAsync(T entity)
        {
            demoContext.Set<T>().Remove(entity);
            await demoContext.SaveChangesAsync();
        }

        public async Task<T> GetByIdAsync(Guid id)
        {
            return await demoContext.Set<T>().FindAsync(id);
        }

        public  async Task<T> GetByNameAsync(string Name) => await demoContext.Set<T>().FindAsync(Name);


        public async Task<IReadOnlyList<T>> ListAllAsync()
        {
            return await demoContext.Set<T>().ToListAsync();
        }

        public async Task<T> UpdateAsync(T entity)
        {
             demoContext.Entry(entity).State = EntityState.Modified;
            await demoContext.SaveChangesAsync();   
            return entity;
        }
    }
}

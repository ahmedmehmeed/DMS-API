using Demo.Application.Contracts;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Demo.Persistence.Repositories
{
    public class BaseRepository<T> : IBaseRepository<T> where T : class
    {
        private readonly DemoContext demoContext;

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

        public async Task DeleteAsync(T entity)
        {
            demoContext.Set<T>().Remove(entity);
            await demoContext.SaveChangesAsync();
        }

        public async Task<T> GetByIdAsync(int id)
        {
            return await demoContext.Set<T>().FindAsync(id);
        }



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

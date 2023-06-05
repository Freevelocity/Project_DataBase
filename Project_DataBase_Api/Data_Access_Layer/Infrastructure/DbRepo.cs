using Data_Access_Layer.Interface;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data_Access_Layer.Infrastructure
{
    public class DbRepo<TEntity> : IDBRepo<TEntity> where TEntity : class
    {

        private DbSet<TEntity> m_oDbSet;
        private DbAppContext m_oDbContext;

        public DbRepo(DbAppContext oDbContext)
        {
            m_oDbContext = oDbContext;
            m_oDbSet = oDbContext.Set<TEntity>();
        }

        public IEnumerable<TEntity> GetAll(Func<TEntity, bool> pFilter = null)
        {
            if (pFilter != null)
            {
                return m_oDbSet.Where(pFilter);
            }


            var values = m_oDbSet.AsEnumerable();

            return m_oDbSet.AsEnumerable();
        }

        public TEntity GetByID(object id)
        {
            var entity = m_oDbSet.Find(id);
            return entity;
        }
    }
}

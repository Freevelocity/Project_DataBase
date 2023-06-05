using Data_Access_Layer.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data_Access_Layer.Infrastructure
{
    public class DbManager
    {
        private DbAppContext m_oDbAppContext;
        private Dictionary<Type, object> m_oDbRepos = new Dictionary<Type, object>();
        public DbManager()
        {
            m_oDbAppContext = new DbAppContext();

        }

        public IDBRepo<TEntity> DBRepo<TEntity>() where TEntity : class
        {
            if (m_oDbRepos.Keys.Contains(typeof(TEntity)) == true)
            {
                return m_oDbRepos[typeof(TEntity)] as IDBRepo<TEntity>;
            }
            IDBRepo<TEntity> oRepo = new DbRepo<TEntity>(m_oDbAppContext);
            m_oDbRepos.Add(typeof(TEntity), oRepo);
            return oRepo;
        }

    }
}

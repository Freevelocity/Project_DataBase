using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data_Access_Layer.Interface
{
    public interface IDBRepo<TEntity>
    {

        TEntity GetByID(object id);

        IEnumerable<TEntity> GetAll(Func<TEntity, bool> pFilter = null);

    }
}

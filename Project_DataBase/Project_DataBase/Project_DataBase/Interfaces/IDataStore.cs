using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Project_DataBase.Interfaces
{
    public interface IDataStore<T>
    {
        Task<bool> AddItemAsync(T pAddItem);
        Task<bool> UpdateItemAsync(T pItem);
        Task<bool> DeleteItemAsync(int pId);
        Task<T> GetItemAsync(int pId);

        Task<IEnumerable<T>> GetItemsAsync(int pId = 0, bool pForceRefresh = false);
    }
}

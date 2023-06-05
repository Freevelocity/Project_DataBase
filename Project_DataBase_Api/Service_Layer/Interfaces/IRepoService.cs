using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model_Layer.Interfaces;


namespace Service_Layer.Interfaces
{
    public interface IRepoService<TEntity,TModel> : IDisposable 
        where TEntity : class 
        where TModel : class
    {

        TModel GetAllById(int pId);
        List<TModel> MapEntitiesToModels(List<TEntity> pEntities, List<TModel> pModels);
        TModel MapEntityToModel(TEntity pEntity, TModel pModel);
        TEntity MapModelToEntity(TModel pModel);
        List<TEntity> MapModelsToEntities(List<TModel> pModels);
    }
}

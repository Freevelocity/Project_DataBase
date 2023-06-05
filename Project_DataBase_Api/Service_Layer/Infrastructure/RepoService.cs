using Service_Layer.Interfaces;
using AutoMapper;
using Data_Access_Layer.Interface;
using Data_Access_Layer.Infrastructure;
using Model_Layer.Interfaces;
using Service_Layer.Test;

namespace Service_Layer.Infrastructure
{
    public class RepoService<TEntity, TModel> : IRepoService<TEntity,TModel>
        where TEntity : class
        where TModel : class
    {

        private DbManager m_oDbManager;
        private IDBRepo<TEntity> m_oDbRepo;
        private IMapper m_oMapper;

        public RepoService()
        {
            m_oDbManager = new DbManager();
            m_oDbRepo = m_oDbManager.DBRepo<TEntity>();
            MapperConfiguration mapConfig = new MapperConfiguration(
               mc =>
               {
                   mc.AddProfile<AutoMapperProfile<TEntity,TModel>>();

               }
               );
            m_oMapper = mapConfig.CreateMapper();
        }
        public IDBRepo<TEntity> DbEntity()
        {
            return m_oDbRepo;
        }
        public void Dispose()
        {
            Dispose(true);

        }

        protected virtual void Dispose(bool pDisposing)
        {
            if (pDisposing)
            {
                m_oMapper = null;
                m_oDbRepo = null;
                m_oDbManager = null;
            }
        }


        public TModel MapEntityToModel(TEntity pEntity, TModel pModel)
        {
            pModel = m_oMapper.Map(pEntity, pModel);
            return pModel;
        }

        public List<TModel> MapEntitiesToModels(List<TEntity> pEntities, List<TModel> pModels)
        {
            foreach (var oEntity in pEntities)
            {
                TModel oModel = m_oMapper.Map<TModel>(oEntity);
                pModels.Add(oModel);
            }
            return pModels;
        }

        public TModel GetAllById(int pId)
        {
            throw new NotImplementedException();
        }

        public TEntity MapModelToEntity(TModel pModel)
        {
            throw new NotImplementedException();
        }

        public List<TEntity> MapModelsToEntities(List<TModel> pModels)
        {
            throw new NotImplementedException();
        }
    }
}

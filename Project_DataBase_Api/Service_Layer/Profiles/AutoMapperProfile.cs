using AutoMapper;
using Data_Access_Layer.Entities;
using Model_Layer.Interfaces;
using Model_Layer.Models;

namespace Service_Layer.Test
{
    public class AutoMapperProfile<TEntity,TModel> : Profile
        where TEntity : class
        where TModel : class

    {
        public AutoMapperProfile()
        {
            this.CreateMap<TEntity, TModel>().ReverseMap();
        }
    }
}

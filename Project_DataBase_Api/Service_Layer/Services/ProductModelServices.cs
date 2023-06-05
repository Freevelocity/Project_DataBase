using Data_Access_Layer.Entities;
using Model_Layer.Interfaces;
using Model_Layer.Models;
using Service_Layer.Infrastructure;
using System.Linq;

namespace Service_Layer.Services
{
    public class ProductModelServices
    {
        public List<ProductsModel> GetAllProducts()
        {
            List<ProductsModel> AllProducts = new List<ProductsModel>().ToList<ProductsModel>();
            using (RepoService<DbProductModel, ProductsModel> oDBRepo = new RepoService<DbProductModel, ProductsModel>())
            {
                List<DbProductModel> ProdDbItems = oDBRepo.DbEntity().GetAll().Cast<DbProductModel>().ToList();
                AllProducts = oDBRepo.MapEntitiesToModels(ProdDbItems, AllProducts);
            }

   
            return AllProducts;

        }

        public ProductsModel GetProductById(int pId)
        {
            ProductsModel ProdById = new ProductsModel();
            using (RepoService<DbProductModel, ProductsModel> oDBRepo = new RepoService<DbProductModel, ProductsModel>())
            {
                DbProductModel ProdDB = oDBRepo.DbEntity().GetByID(pId);
                ProdById = oDBRepo.MapEntityToModel(ProdDB, ProdById);

            }
            return ProdById;
        }


        public List<ProductItemModel> AllProductItems()
        {
            List<ProductItemModel> ProdItems = new List<ProductItemModel>();
            using (RepoService<DbProductItemModel, ProductItemModel> oDBRepo = new RepoService<DbProductItemModel, ProductItemModel>())
            {
                List<DbProductItemModel> ProDbItems = oDBRepo.DbEntity().GetAll().Cast<DbProductItemModel>().ToList();
                ProdItems = oDBRepo.MapEntitiesToModels(ProDbItems, ProdItems);
            }

            return ProdItems;
        }

        public ProductItemModel GetProductItemById(int pId)
        {
            ProductItemModel ProdItemsId = new ProductItemModel();
            using (RepoService<DbProductItemModel, ProductItemModel> oDBRepo = new RepoService<DbProductItemModel, ProductItemModel>())
            {
                DbProductItemModel ProdItemDB = oDBRepo.DbEntity().GetByID(pId);
                ProdItemsId = oDBRepo.MapEntityToModel(ProdItemDB, ProdItemsId);
            }
            return ProdItemsId;
        }


    }
}

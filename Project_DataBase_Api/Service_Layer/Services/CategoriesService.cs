using Model_Layer.Interfaces;
using Service_Layer.Infrastructure;
using Data_Access_Layer.Entities;
using Model_Layer.Models;
using System.Linq;

namespace Service_Layer.Services
{
    public class CategoriesService
    {



        public List<ICategory> GetAllCategories()
        {
            List<ICategory> colCats = new List<ICategory>().ToList<ICategory>();
            List<CategoriesModel> catCol = new List<CategoriesModel>();
            using (RepoService<DbCategoriesModel, CategoriesModel> oDBRepo = new RepoService<DbCategoriesModel, CategoriesModel>())
            {
                List<DbCategoriesModel> colDbItems = oDBRepo.DbEntity().GetAll().Cast<DbCategoriesModel>().ToList();
                catCol = oDBRepo.MapEntitiesToModels(colDbItems, catCol);
            }

            foreach(var item in catCol)
            {
                colCats.Add(item);
            }
       

            return colCats;

        }

        public ICategory GetCategoryById(int pId)
        {
            CategoriesModel cat = new CategoriesModel();
            using(RepoService<DbCategoriesModel, CategoriesModel> oDBRepo = new RepoService<DbCategoriesModel, CategoriesModel>())
            {
                DbCategoriesModel categoriesModel = oDBRepo.DbEntity().GetByID(pId);
                cat = oDBRepo.MapEntityToModel(categoriesModel, cat);
               
            }
            return cat;
        }


        public List<SubCategoryModel> GetAllSubCategories()
        {
            List<SubCategoryModel> subCategories = new List<SubCategoryModel>();
            using(RepoService<DbSubCategoryModel,SubCategoryModel> oDBRepo = new RepoService<DbSubCategoryModel,SubCategoryModel>())
            {
                List<DbSubCategoryModel> subColDbItems = oDBRepo.DbEntity().GetAll().Cast<DbSubCategoryModel>().ToList();
                subCategories = oDBRepo.MapEntitiesToModels(subColDbItems, subCategories);
            }

            return subCategories;
        }

        public SubCategoryModel GetSubCatbyId(int pId)
        {
            SubCategoryModel subCat = new SubCategoryModel();
            using(RepoService<DbSubCategoryModel,SubCategoryModel> oDBRepo = new RepoService<DbSubCategoryModel, SubCategoryModel>())
            {
                DbSubCategoryModel subCategory = oDBRepo.DbEntity().GetByID(pId);
                subCat = oDBRepo.MapEntityToModel(subCategory, subCat);
            }
            return subCat;
        }

    }
}

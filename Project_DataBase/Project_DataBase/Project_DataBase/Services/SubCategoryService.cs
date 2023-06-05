using Project_DataBase.Interfaces;
using Project_DataBase.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Project_DataBase.Services
{
    public class SubCategoryService 
    {
        List<SubCategoryModel> subCategoriesModel;
        public SubCategoryService()
        {
            subCategoriesModel = new List<SubCategoryModel>()
            {
                new SubCategoryModel{name = "SANDLES", id = 1 , CatId = 1},
                new SubCategoryModel{name = "SANDLES2", id = 2 , CatId = 1},
                new SubCategoryModel{name = "SANDLES3", id = 3 , CatId = 1},
                new SubCategoryModel{name = "SANDLES4", id = 4 , CatId = 1},

                new SubCategoryModel{name = "BIGSANDLES", id = 5 , CatId = 2},
                new SubCategoryModel{name = "BIGSANDLES2", id = 6 , CatId = 2},
                new SubCategoryModel{name = "BIGSANDLES3", id = 7 , CatId = 2},
                new SubCategoryModel{name = "BIGSANDLES4", id = 8 , CatId = 2},

                new SubCategoryModel{name = "PARTY", id = 9 , CatId = 3},
                new SubCategoryModel{name = "PARTY2", id = 10 , CatId = 3},
                new SubCategoryModel{name = "PARTY3", id = 11 , CatId = 3},
                new SubCategoryModel{name = "PARTY4", id = 12 , CatId = 3},

                new SubCategoryModel{name = "SHHHH", id = 13 , CatId = 4},
                new SubCategoryModel{name = "SHHHH2", id = 14 , CatId = 4},
                new SubCategoryModel{name = "SHHHH3", id = 15 , CatId = 4},
                new SubCategoryModel{name = "SHHHH4", id = 16 , CatId = 4}
            };
        }
  
        public async Task<IEnumerable<SubCategoryModel>> GetSubCats(int pId = 0)
        {
            return await Task.FromResult(subCategoriesModel.Where(i => i.CatId == pId).AsEnumerable());
        }
    }
}

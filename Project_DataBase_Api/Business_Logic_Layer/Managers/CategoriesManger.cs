using Model_Layer.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Business_Logic_Layer.Interfaces;
using Service_Layer.Services;
using Service_Layer.Test;
using Model_Layer.Models;

namespace Business_Logic_Layer.Managers
{
    public class CategoriesManger : ICategories
    {
        public List<ICategory> AllCategories()
        {
            
            return new CategoriesService().GetAllCategories();
        }

        public ICategory GetCategoryById(int pId)
        {
            return new CategoriesService().GetCategoryById(pId);
        }


        public List<SubCategoryModel> AllSubCategories()
        {
            return new CategoriesService().GetAllSubCategories();
        }

        public SubCategoryModel GetSubCategoryById(int pId)
        {
            return new CategoriesService().GetSubCatbyId(pId);
        }
    }
}

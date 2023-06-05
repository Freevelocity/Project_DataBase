using Model_Layer.Interfaces;
using Model_Layer.Models;

namespace Business_Logic_Layer.Interfaces
{
    public interface ICategories
    {


        List<ICategory> AllCategories();
        ICategory GetCategoryById(int pId);

        List<SubCategoryModel> AllSubCategories();

        SubCategoryModel GetSubCategoryById(int pId);

    }
}

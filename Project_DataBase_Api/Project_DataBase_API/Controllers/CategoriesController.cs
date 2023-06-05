using Microsoft.AspNetCore.Mvc;
using System.ComponentModel.DataAnnotations;
using Model_Layer.Interfaces;
using Business_Logic_Layer.Interfaces;
using Model_Layer.Models;

namespace Project_DataBase_API.Controllers
{
    [ApiController]
    [Route("api/[Controller]")]
    public class CategoriesController : ControllerBase
    {
       
        private readonly ICategories m_oCategories;

        public CategoriesController(ICategories pCategories)
        {
            m_oCategories = pCategories;
        }

        [HttpGet]
        [Route("allcategories")]
        public IEnumerable<ICategory> AllCategories()
        {
            return m_oCategories.AllCategories();

        }


        [HttpGet]
        [Route("categorybyid/{pId}")]
        public ICategory CategoryById([FromRoute][Required] int pId)
        {
            return m_oCategories.GetCategoryById(pId);
        }

        [HttpGet]
        [Route("allsubcategories")]
        public IEnumerable<SubCategoryModel> AllSubCategories()
        {
            return m_oCategories.AllSubCategories();

        }


        [HttpGet]
        [Route("subcategorybyid/{pId}")]

        public SubCategoryModel GetSubCatById(int pId)
        {
            return m_oCategories.GetSubCategoryById(pId);
        }

    }


}

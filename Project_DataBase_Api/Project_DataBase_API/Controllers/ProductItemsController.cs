using Business_Logic_Layer.Interfaces;
using Microsoft.AspNetCore.Mvc;
using Model_Layer.Models;
using Npgsql;
using Project_DataBase_API.Models;
using System.ComponentModel.DataAnnotations;

namespace Project_DataBase_API.Controllers
{
    [ApiController]
    [Route("api/{Controller}")]
    public class ProductItemsController : Controller
    {
        private IProductItems m_ProductItems;

        public ProductItemsController(IProductItems productItems)
        {
            m_ProductItems = productItems;
        }


        [HttpGet]
        [Route("allproducts")]
        public List<ProductsModel> AllProducts()
        {
            return m_ProductItems.AllProducts();
        }

        [HttpGet]
        [Route("productsbyid/{pId}")]
        public ProductsModel GetProductbyId(int pId)
        {
            return m_ProductItems.GetProductById(pId);
        }


        [HttpGet]
        [Route("allproductsitems")]
        public List<ProductItemModel> AllProductItems()
        {
            return m_ProductItems.AllProductItems();
        }

        [HttpGet]
        [Route("productitembyid/{pId}")]
        public ProductItemModel GetProductItembyId(int pId)
        {
            return m_ProductItems.GetProductItemById(pId);
        }




    }
}

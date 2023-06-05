using Business_Logic_Layer.Interfaces;
using Model_Layer.Models;
using Service_Layer.Services;

namespace Business_Logic_Layer.Managers
{
    public class ProductManger : IProductItems
    {
        public List<ProductItemModel> AllProductItems()
        {
            return new ProductModelServices().AllProductItems();
        }

        public List<ProductsModel> AllProducts()
        {
            return new ProductModelServices().GetAllProducts();
        }

        public ProductsModel GetProductById(int pId)
        {
            return new ProductModelServices().GetProductById(pId);
        }

        public ProductItemModel GetProductItemById(int pId)
        {
            return new ProductModelServices().GetProductItemById(pId);
        }
    }
}

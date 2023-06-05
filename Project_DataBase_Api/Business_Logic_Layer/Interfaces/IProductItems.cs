﻿using Model_Layer.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business_Logic_Layer.Interfaces
{
    public interface IProductItems
    {


        List<ProductsModel> AllProducts();

        ProductsModel GetProductById(int pId);
        
        
        List<ProductItemModel> AllProductItems();

        ProductItemModel GetProductItemById(int pId);



    }
}
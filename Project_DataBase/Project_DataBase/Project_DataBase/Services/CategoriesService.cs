using Project_DataBase.Interfaces;
using Newtonsoft.Json;
using Project_DataBase.Model;
using Project_DataBase.View;
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Collections.ObjectModel;

namespace Project_DataBase.Services
{
    public class CategoriesService
    {
       
        



 
        
        List<CategoriesModel> categoriesModels;
        private readonly string CON_CATEGORIES_URL = "http://192.168.50.85/api/Category/allcategories";//"https://localhost:44333/api/Category/allcategories"; 


        public CategoriesService()
        {


            //categoriesModels = new List<CategoriesModel>()
            //{
            //    new CategoriesModel{ id = 1, Name = "Juti1"},
            //    new CategoriesModel{ id = 2, Name = "Juti2"},
            //    new CategoriesModel{ id = 3, Name = "Juti3"},
            //    new CategoriesModel{ id = 4, Name = "Juti4"}
            //};

        }

        public async Task<List<CategoriesModel>> GetCats()
        {
            if (categoriesModels == null)
            {
                WebRequestService m_oWeb = new WebRequestService();
                Uri oUri = new Uri(CON_CATEGORIES_URL);
                categoriesModels = await m_oWeb.GetWebRequestListData<CategoriesModel>(oUri);
            }

            return await Task.FromResult(categoriesModels);


        }

  
    }
}

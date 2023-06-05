using Project_DataBase.Services;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Project_DataBase.Model
{
    public class CategoriesModel
    {

        //public int  id { get; set; }
        //public string Name { get; set; }
        public int CatId { get; set; }
        public string Cat_Name { get; set; }
        public string Cat_Description { get; set; }
        public string Cat_Active { get; set; }
        public DateTime? Cat_Date_Active { get; set; }
        public DateTime? Cat_Deactive_Date { get; set; }
        public DateTime Create_Date { get; set; }
        public string Create_By { get; set; }
        public DateTime? Effect_Date { get; set; }
        public string Effect_By { get; set; }


    }
}

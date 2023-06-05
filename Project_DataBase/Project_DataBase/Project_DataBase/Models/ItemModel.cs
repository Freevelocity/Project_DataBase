using System;
using System.Collections.Generic;
using System.Text;

namespace Project_DataBase.Model
{
    public class ItemModel
    {
        public string Name { get; set; }  
        public string Description { get; set; }


        public ItemModel(string name, string description)
        {
            this.Name = name;
            this.Description = description;
        }
    }
}

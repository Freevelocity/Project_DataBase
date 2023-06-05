using Project_DataBase.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;

namespace Project_DataBase.ViewModel
{
    public partial class ItemViewModel
    {
        public ObservableCollection<ItemModel> itemList { get; set; }
        public string SubCatagoryName { get; set; }

   

        public ItemViewModel() 
        {
        
        
        }



      
    }
}

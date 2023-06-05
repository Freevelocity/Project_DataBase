namespace Project_DataBase_API.Models
{
    public class ItemModel
    {
        public int id { get; set; }
        public string ? item_name { get; set; }
        public string ? item_description { get; set; }

        public int category_id { get; set; }
        public int subcategory_id { get; set; }

    }
}

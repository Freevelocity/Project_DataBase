using Model_Layer.Interfaces;

namespace Model_Layer.Models
{
    public class CategoriesModel : ICategory
    {
        public int CatId { get; set; }
        public string ? Cat_Name { get; set; }
        public string ? Cat_Description { get; set; }
        public string? Cat_Active { get; set; }
        public DateTime? Cat_Date_Active { get; set; }
        public DateTime? Cat_Deactive_Date { get; set; }
        public DateTime Create_Date { get; set; }
        public string? Create_By { get; set; }
        public DateTime? Effect_Date { get; set; }
        public string? Effect_By { get; set; }
    }
}
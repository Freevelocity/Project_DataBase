using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Data_Access_Layer.Entities
{
    public class DbProductModel
    {

        [Key]
        [ForeignKey("DbProductItemModel")]
        public int prodid { get; set; }

        [ForeignKey("DbSubCategoryModel")]
        public int subcatid { get; set; }
        public string? prod_name { get; set; }
        public string? prod_description { get; set; }
        public string? prod_active { get; set; }
        public DateTime? prod_deactive_date { get; set; }
        public DateTime create_date { get; set; }
        public string? create_by { get; set; }
        public DateTime? effect_date { get; set; }
        public string? effect_by { get; set; }

       


    }
}

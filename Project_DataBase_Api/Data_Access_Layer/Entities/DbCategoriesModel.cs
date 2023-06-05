using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data_Access_Layer.Entities
{
    public class DbCategoriesModel
    {
        [Key]
        [ForeignKey("DbSubCategoryModel")]
        public int catid { get; set; }
        public string? cat_name { get; set; }
        public string? cat_description { get; set; }
        public string? cat_active { get; set; }
        public DateTime? cat_date_active { get; set; }
        public DateTime? cat_deactive_date { get; set; }
        public DateTime create_date { get; set; }
        public string? create_by { get; set; }
        public DateTime? effect_date { get; set; }

        public string? effect_by { get; set; }

    }
}

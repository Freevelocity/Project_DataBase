﻿namespace Model_Layer.Models
{
    public class SubCategoryModel
    {

        public int subcatid { get; set; }

       
        public int catid { get; set; }
        public string? subcat_name { get; set; }
        public string? subcat_description { get; set; }
        public string? subcat_active { get; set; }
        public DateTime? subcat_date_active { get; set; }
        public DateTime? subcat_deactive_date { get; set; }
        public DateTime create_date { get; set; }
        public string? create_by { get; set; }
        public DateTime? effect_date { get; set; }
        public string? effect_by { get; set; }
    }
}

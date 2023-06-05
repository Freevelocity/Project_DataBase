namespace Model_Layer.Models
{
    public class ProductItemModel
    {


        public int proditemid { get; set; }

        public int prodid { get; set; }
        public string? proditem_name { get; set; }
        public string? proditem_description { get; set; }
        public string? proditem_active { get; set; }
        public DateTime? proditem_deactive_date { get; set; }
        public DateTime create_date { get; set; }
        public string? create_by { get; set; }
        public DateTime? effect_date { get; set; }
        public string? effect_by { get; set; }

    }
}

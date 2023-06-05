

using System;

namespace Model_Layer.Interfaces
{
    public interface ISubCategory:ICommon
    {

        int SubCatId { get; set; }
        int CatId { get; set; }
        string SubCat_Name { get; set; }
        string SubCat_Description { get; set; }
        string SubCat_Active { get; set; }
        DateTime? SubCat_Date_Active { get; set; }
        DateTime? SubCat_Deactive_Date { get; set; }

    }
}

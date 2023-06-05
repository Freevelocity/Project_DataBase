using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Project_Database_ModelsLayer.Interfaces
{
    public interface ISubcategories : ICommon
    {
        int SubCatId { get; set; }

        string SubCat_Name { get; set; }

        string SubCat_Description { get; set; }

        string SubCat_Active { get; set; }

        DateTime SubCat_Date_Active { get; set; }

        DateTime SubCat_Deactive_Date { get; set; }
        int CatId { get; set; }
    }
}

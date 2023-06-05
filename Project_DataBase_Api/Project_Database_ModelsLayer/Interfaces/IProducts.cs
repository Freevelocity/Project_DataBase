using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Project_Database_ModelsLayer.Interfaces
{
    public interface IProducts : ICommon
    {
        int ProdId { get; set; }

        string Prod_Name { get; set; }

        string Prod_Description { get; set; }

        string Prod_Active { get; set; }

        DateTime Prod_Deactive_Date { get; set; }

        int SubCatId { get; set; }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Project_Database_ModelsLayer.Interfaces
{
    public interface IProductitems : ICommon
    {

        int ProdItemId { get; set; }

        string ProdItem_Name { get; set; }

        string ProdItem_Description { get; set; }

        string ProdItem_Active { get; set; }

        DateTime ProdItem_Deactive_Date { get; set; }

        string ProdItem_Image { get; set; }
        int ProdId { get; set; }
    }
}

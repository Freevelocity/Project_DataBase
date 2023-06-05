using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Project_Database_ModelsLayer.Interfaces
{
    public interface ICategories : ICommon
    {
        int CatId { get; set; }

        string Cat_Name { get; set; }

        string Cat_Description {get; set; } 

        string Cat_Active { get; set; }

        DateTime Cat_Date_Active { get; set; }

        DateTime Cat_Deactive_Date { get; set; }

    }
}

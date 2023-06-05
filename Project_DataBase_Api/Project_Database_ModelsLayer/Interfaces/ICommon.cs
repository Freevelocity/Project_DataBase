using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Project_Database_ModelsLayer.Interfaces
{
    public interface ICommon
    {
        DateTime Create_date { get; set; }  
        string Create_by { get; set; }
        DateTime Create_Date { get; set; }

        string Effect_By { get; set; }    


    }
}



using System;

namespace Model_Layer.Interfaces
{
    public interface ICategory:ICommon
    {

        int CatId { get; set; }
        string Cat_Name { get; set; }
        string Cat_Description { get; set; }
        string Cat_Active { get; set; }
        DateTime? Cat_Date_Active { get; set; }
        DateTime? Cat_Deactive_Date { get; set; }

    }
}

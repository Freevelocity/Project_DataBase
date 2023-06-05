using System;


namespace Model_Layer.Interfaces
{
    public interface ICommon:IModel
    {
        DateTime Create_Date { get; set; }
        string Create_By { get; set; }
        DateTime? Effect_Date { get; set; }
        string? Effect_By { get; set; }

    }
}

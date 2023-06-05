using Project_DataBase.Model;
using Project_DataBase.Services;
using Project_DataBase.View;
using Project_DataBase.ViewModels;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Forms;

namespace Project_DataBase.ViewModel
{

    public partial class SubCategoryViewModel : BaseDataViewModel
    {
        // Private Members
        private int m_catId;
        private string m_subcategoryName;

        public SubCategoryService subCatService;

        public Command GetSubCatsCommand { get { return new Command(async () => await GetSubCatsAsyn()); } }
        public ObservableCollection<SubCategoryModel> SubCatagoryList { get; set; }

        public ICommand SelectedSubCatagoryChangedCommand => new Command(CatagoryChanged);
        public SubCategoryModel selectedSubCatagoryModel { get; set; }



        public SubCategoryViewModel(int catId,string subcategoryName)
        {
            this.m_catId = catId;
            this.m_subcategoryName = subcategoryName;

            subCatService = new SubCategoryService();
            SubCatagoryList = new ObservableCollection<SubCategoryModel>();
            Title = $"SubCatgory of {m_subcategoryName}";
        }


        public SubCategoryViewModel()
        {
      
        }


        async Task GetSubCatsAsyn()
        {
            IsBusy = true;
            try
            {
                SubCatagoryList.Clear();
                var CatValues = await subCatService.GetSubCats(m_catId);
                foreach (var cat in CatValues)
                {
                    SubCatagoryList.Add(cat);
                }
            }
            catch (Exception ex)
            {

            }
            finally
            {
                IsBusy = false;
            }
        }

        public void OnAppearing()
        {
            IsBusy = true;
            selectedSubCatagoryModel = null;
        }
        
        void CatagoryChanged()
        {
           
        }

       
        


    }


}

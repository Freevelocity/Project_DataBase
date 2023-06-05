using Project_DataBase.Interfaces;
using Project_DataBase.Model;
using Project_DataBase.Services;
using Project_DataBase.View;
using Project_DataBase.ViewModels;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Forms;

namespace Project_DataBase.ViewModel
{

    public partial class CategoryViewModel : BaseDataViewModel
    {
        private CategoriesService CatsService;

        public Command GetCatsCommand { get { return new Command(async () => await GetCatsAsyn()); } }

        public ObservableCollection<CategoriesModel> CatagoriesList { get; set; }
      
        public CategoriesModel SelectedCatagory { get; set; }
        public ICommand SelectedCatagoryChangedCommand => new Command(GoToSubCatagories);

        public NavigationPage navigationPage { get; set; }

        
        
        public CategoryViewModel()
        {
            CatsService = new CategoriesService();
            CatagoriesList = new ObservableCollection<CategoriesModel>();
            


        }

        async Task GetCatsAsyn()
        {
              IsBusy = true;
            try
            {
                CatagoriesList.Clear();
                var CatValues = await CatsService.GetCats();
                foreach(var cat in CatValues)
                {
                    CatagoriesList.Add(cat);    
                }
            }
            catch(Exception ex)
            {
                Debug.WriteLine(ex);
            }
            finally
            {
                IsBusy = false;
            }
        }

        public void OnAppearing()
        {
            IsBusy = true;
            SelectedCatagory = null;
        }
       

        async void GoToSubCatagories()
        {

            await Application.Current.MainPage.Navigation.PushAsync(new SubCatagoryView(SelectedCatagory.Cat_Name, SelectedCatagory.CatId));
            
        }

    

   


    }
}

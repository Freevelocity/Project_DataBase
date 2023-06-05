using Project_DataBase.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Project_DataBase.View
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class SubCatagoryView : ContentPage
    {
        SubCategoryViewModel model;
        public SubCatagoryView(string Catagoryname, int id)
        {
            InitializeComponent();
            this.BindingContext = model = new SubCategoryViewModel(id, Catagoryname);
            
        }
        public SubCatagoryView()
        {
            InitializeComponent();
            
        }
        protected override void OnAppearing()
        {
            base.OnAppearing();
            model.OnAppearing();
        }

    }
}
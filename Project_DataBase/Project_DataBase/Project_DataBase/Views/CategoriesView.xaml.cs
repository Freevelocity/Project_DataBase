using Project_DataBase.Model;
using Project_DataBase.ViewModel;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace Project_DataBase
{
    public partial class MainPage : ContentPage
    {
        CategoryViewModel model;
        public MainPage()
        {
            InitializeComponent();

            this.BindingContext = model = new CategoryViewModel();
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();
            model.OnAppearing();
        }
    }
}

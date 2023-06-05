using Project_DataBase.Interfaces;
using Project_DataBase.Services;
using Project_DataBase.View;
using Project_DataBase.ViewModel;
using System;
using System.Net;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Project_DataBase
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();

            MainPage = new NavigationPage(new MainPage());
            DependencyService.Register<CategoriesService>();
            DependencyService.Register<WebRequestService>();
    
            //Routing.RegisterRoute(nameof(SubCatagoryView), typeof(SubCatagoryView));
        }

        protected override void OnStart()
        {
        }

        protected override void OnSleep()
        {
        }

        protected override void OnResume()
        {
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Data_Access_Layer.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;

namespace Data_Access_Layer.Infrastructure
{
    public class DbAppContext : DbContext
    {

        

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {

                var config = new ConfigurationBuilder()
                    .AddJsonFile("appsettings.json")
                    .Build();
                string? sConn = config.GetConnectionString("Postgres");
                //ServerVersion oServVer = ServerVersion.AutoDetect(sConn);
                optionsBuilder
                    .UseNpgsql(sConn);
            }
            base.OnConfiguring(optionsBuilder);
        }


        public DbSet<DbCategoriesModel> categories { get; set; }
        public DbSet<DbSubCategoryModel> subcategories { get; set; }
        public DbSet<DbProductModel> products { get; set; }
        public DbSet<DbProductItemModel> productitems { get; set; } 



    }
}

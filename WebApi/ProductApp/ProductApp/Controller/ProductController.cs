using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

using ProductApp.Model;

namespace ProductApp.Controller
{
    public class ProductController : ApiController
    {
        ProductModel[] product = new ProductModel[]
       {
           new ProductModel{Id=1,Name="SunFeast",Category="Biscuits",Price=10},
           new ProductModel{Id=2,Name="Meggie",Category="nuddles",Price=10},
           new ProductModel{Id=3,Name="Rayben",Category="Brands",Price=1000},
           new ProductModel{Id=4,Name="Eclares",Category="Candies",Price=10},
           new ProductModel{Id=5,Name="yakOpak",Category="Bags",Price=900},
           new ProductModel{Id=6,Name="Dell",Category="Computers",Price=32878},

       };

        public IEnumerable<ProductModel> GetAllProducts()
        {
            return product;
        }

        public IHttpActionResult GetProduct(int id)
        {
            var Product = product.FirstOrDefault(p => p.Id == id);
            if(Product!=null)
            {
                return Ok(Product);
            }
            else
            {
                return NotFound();
            }
        }

    }
}

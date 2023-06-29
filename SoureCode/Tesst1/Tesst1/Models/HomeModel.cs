using System.Collections.Generic;

namespace Tesst1.Models
{
    public class HomeModel
    {
        public IEnumerable<Categories> CategoriesView { get; set; }
        public IEnumerable<Products> ProductsView { get; set; }
    }
}
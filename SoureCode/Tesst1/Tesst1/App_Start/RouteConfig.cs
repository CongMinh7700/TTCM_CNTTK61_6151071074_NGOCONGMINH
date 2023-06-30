using System.Web.Mvc;
using System.Web.Routing;

namespace Tesst1
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");
            routes.MapMvcAttributeRoutes();
            //Router Controller AdminProduct
            routes.MapRoute(
                 name: "IndexAdmin",
                 url: "Trang-Chu-Admin",
                 defaults: new { controller = "AdminProduct", action = "Index" },
                 namespaces: new string[] { "BaiTapLonWeb.Controllers" }
            );

            routes.MapRoute(
               name: "Chi Tiet Admin",
               url: "Chi-Tiet-San-Pham-Admin",
               defaults: new { controller = "AdminProduct", action = "Details", id = @"\d{1,20}" },
               namespaces: new string[] { "BaiTapLonWeb.Controllers" }
            );

            routes.MapRoute(
               name: "Sua San Pham Admin",
               url: "Sua-San-Pham-Admin",
               defaults: new { controller = "AdminProduct", action = "Edit" },
               namespaces: new string[] { "BaiTapLonWeb.Controllers" }
            );
            //Router Controller AdminUser
            //Router Controller WishList
            routes.MapRoute(
              name: "Show WL",
              url: "Danh-Sach-Yeu-Thich",
              defaults: new { controller = "WishList", action = "ShowToWishList" },
              namespaces: new string[] { "BaiTapLonWeb.Controllers" }
            );
            //Router Controller Login
            routes.MapRoute(
                name: "Register",
                url: "Đăng Ký",
                defaults: new { controller = "Login", action = "Register" },
                namespaces: new string[] { "BaiTapLonWeb.Controllers" }
            );
            routes.MapRoute(
                name: "Admin",
                url: "Admin",
                defaults: new { controller = "Login", action = "LoginAdmin" },
                namespaces: new string[] { "BaiTapLonWeb.Controllers" }
            );
            routes.MapRoute(
               name: "Show Information",
               url: "Thong-Tin/Khach-Hang/{userID}",
               defaults: new { controller = "Login", action = "Edit", userId = UrlParameter.Optional },
               namespaces: new string[] { "BaiTapLonWeb.Controllers" }
            );
            routes.MapRoute(
              name: "Index",
              url: "Dang-Nhap",
              defaults: new { controller = "Login", action = "Index" },
              namespaces: new string[] { "BaiTapLonWeb.Controllers" }
            );
            routes.MapRoute(
             name: "Show Order",
             url: "Don-Mua",
             defaults: new { controller = "Login", action = "ShowUserOrder" },
             namespaces: new string[] { "BaiTapLonWeb.Controllers" }
            );
            routes.MapRoute(
              name: "Show OrderDetails",
              url: "Chi-Tiet-Don-Mua",
              defaults: new { controller = "Login", action = "DetailsOrder" },
              namespaces: new string[] { "BaiTapLonWeb.Controllers" }
            );
            //Router Controller Cart
            routes.MapRoute(
                 name: "Show Cart",
                 url: "Gio-Hang",
                 defaults: new { controller = "Cart", action = "ShowToCart" },
                 namespaces: new string[] { "BaiTapLonWeb.Controllers" }
            );
            routes.MapRoute(
                name: "Check Out",
                url: "Thanh-Toan",
                defaults: new { controller = "Cart", action = "CheckOut" },
                namespaces: new string[] { "BaiTapLonWeb.Controllers" }
            );
            //Payment
            routes.MapRoute(
                name: "Success",
                url: "Cart/Success",
                defaults: new { controller = "Cart", action = "Success" }
            );

            routes.MapRoute(
                name: "Cancel",
                url: "Cart/Cancel",
                defaults: new { controller = "Cart", action = "Cancel" }
            );
            // Router Controller AdminOrder
            routes.MapRoute(
                 name: "Update",
                 url: "Cap-Nhat-Trang-Thai",
                 defaults: new { controller = "AdminOrder", action = "UpdateStatus" },
                 namespaces: new string[] { "BaiTapLonWeb.Controllers" }
            );

            routes.MapRoute(
               name: "Chi Tiet",
               url: "Chi-Tiet-Don-Hang",
               defaults: new { controller = "AdminOrder", action = "Details", id = @"\d{1,20}" },
               namespaces: new string[] { "BaiTapLonWeb.Controllers" }
            );

            routes.MapRoute(
               name: "DashBoardd",
               url: "Doanh-Thu",
               defaults: new { controller = "AdminOrder", action = "Dashboard" },
               namespaces: new string[] { "BaiTapLonWeb.Controllers" }
            );


            // Router Controller Home
            routes.MapRoute(
               name: "Show Details",
               url: "Chi-Tiet-San-Pham/{id}",
               defaults: new { controller = "Home", action = "Details", id = @"\d{1,20}" },
               namespaces: new string[] { "BaiTapLonWeb.Controllers" }
            );
            routes.MapRoute(
               name: "Search",
               url: "Tim-Kiem",
               defaults: new { controller = "Home", action = "Search" },
               namespaces: new string[] { "BaiTapLonWeb.Controllers" }
            );

            routes.MapRoute(
               name: "Category Detail",
               url: "Danh-Muc/{id}",
               defaults: new { controller = "Home", action = "CategoryDetails", id = @"\d{1,20}" },
               namespaces: new string[] { "BaiTapLonWeb.Controllers" }
            );
            //Default
            routes.MapRoute(
                name: "Trang-Chu",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional },
                namespaces: new string[] { "BaiTapLonWeb.Controllers" }
            );
        }
    }
}

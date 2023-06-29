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
            //Paymetn
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
            //Router Controller Cart
            routes.MapRoute(
         name: "Show Cart",
         url: "Gio-Hang",
         defaults: new { controller = "Cart", action = "ShowToCart" },
                namespaces: new string[] { "BaiTapLonWeb.Controllers" }
        );
            // Router Controller AdminOrder
            routes.MapRoute(
        name: "Update",
        url: "Cap-Nhat",
        defaults: new { controller = "AdminOrder", action = "UpdateStatus" },
                 namespaces: new string[] { "BaiTapLonWeb.Controllers" }
       );

            routes.MapRoute(
       name: "Chi Tiet",
       url: "Chi-Tiet-Don-Hang",
       defaults: new { controller = "AdminOrder", action = "Details", id = @"\d{1,20}" },
                namespaces: new string[] { "BaiTapLonWeb.Controllers" }
      ); routes.MapRoute(
       name: "Tao Don Hang",
       url: "Don-Hang",
       defaults: new { controller = "AdminOrder", action = "Create", id = @"\d{1,20}" },
                namespaces: new string[] { "BaiTapLonWeb.Controllers" }
      );

            // Router Controller Products
            routes.MapRoute(
         name: "Show Details",
         url: "Chi-Tiet-San-Pham/{id}",
         defaults: new { controller = "Home", action = "Details", id = @"\d{1,20}" },
         namespaces: new string[] { "BaiTapLonWeb.Controllers" }
        );
            routes.MapRoute(
            name: "Index",
            url: "Trang-Chu",
            defaults: new { controller = "Home", action = "Index" },
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
                name: "Đăng Nhập",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Login", action = "Index", id = UrlParameter.Optional },
                namespaces: new string[] { "BaiTapLonWeb.Controllers" }
            );
        }
    }
}

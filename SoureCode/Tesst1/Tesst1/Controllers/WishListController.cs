using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web.Mvc;
using Tesst1.Models;

namespace Tesst1.Controllers
{
    public class WishListController : Controller
    {
        // GET: WishList
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult AddToWishList(int id)
        {
            if (Session["UserID"] != null)
            {
                // Lấy UserID từ người dùng đã đăng nhập
                int userId = (int)Session["UserID"];

                // Kiểm tra xem sản phẩm đã tồn tại trong danh sách yêu thích chưa
                using (var dbContext = new WebsiteMuaSamEntities())
                {
                    bool isProductInWishList = dbContext.WishList.Any(w => w.UserID == userId && w.ProductID == id);

                    if (isProductInWishList)
                    {
                        TempData["InfoWish"] = "Sản phẩm đã có trong danh sách yêu thích.";
                        return RedirectToAction("Details", "Home"); 
                    }

                    // Tạo một đối tượng WishList mới
                    var wishListItem = new WishList
                    {
                        UserID = userId,
                        ProductID = id
                    };

                    // Lưu đối tượng WishList vào cơ sở dữ liệu
                    dbContext.WishList.Add(wishListItem);
                    dbContext.SaveChanges();
                }

                TempData["SuccessWishList"] = "Thêm sản phẩm thành công";
                return RedirectToAction("Details", "Home"); // Chuyển hướng đến trang chi tiết sản phẩm
            }
            else
            {
                
                TempData["ErrorWishList"] = "Vui lòng đăng nhập để thêm sản phẩm vào danh sách yêu thich";
                return RedirectToAction("Details", "Home");
            }
        }

        public ActionResult ShowToWishList()
        {
            if (Session["UserID"] != null)
            {
                int userId = (int)Session["UserID"];
                using (var dbContext = new WebsiteMuaSamEntities())
                {
                    var wishList = dbContext.WishList
                        .Where(w => w.UserID == userId)
                        .Include(w => w.Products)
                        .ToList();

                    return View(wishList);
                }
            }
            else
            {
                return View(new List<WishList>());
            }
        }
        public ActionResult RemoveFromWishList(int id)
        {
            // Lấy UserID từ người dùng đã đăng nhập
            int userId = (int)Session["UserID"];

            using (var dbContext = new WebsiteMuaSamEntities())
            {
                // Tìm sản phẩm trong danh sách yêu thích của người dùng
                var wishListItem = dbContext.WishList.FirstOrDefault(w => w.UserID == userId && w.ProductID == id);

                if (wishListItem != null)
                {
                    // Xóa sản phẩm khỏi danh sách yêu thích
                    dbContext.WishList.Remove(wishListItem);
                    dbContext.SaveChanges();
                    TempData["SuccessMess"] = "Xóa sản phẩm  thành công.";
                }
                else
                {
                    TempData["ErrorMess"] = "Không tìm thấy sản phẩm trong danh sách yêu thích.";
                }
            }

            return RedirectToAction("ShowToWishList");
        }
        public ActionResult ClearWishList()
        {
            // Lấy UserID từ người dùng đã đăng nhập
            int userId = (int)Session["UserID"];

            using (var dbContext = new WebsiteMuaSamEntities())
            {
                // Lấy danh sách các sản phẩm yêu thích của người dùng
                var wishListItems = dbContext.WishList.Where(w => w.UserID == userId).ToList();

                if (wishListItems.Count > 0)
                {
                    // Xóa tất cả các sản phẩm trong danh sách yêu thích
                    dbContext.WishList.RemoveRange(wishListItems);
                    dbContext.SaveChanges();
                    TempData["SuccessMess"] = "Xóa  sản phẩm  thành công.";
                }
                else
                {
                    TempData["ErrorMess"] = "Danh sách yêu thích rỗng.";
                }
            }

            return RedirectToAction("ShowToWishList");
        }


        private int GetWishListCount()
        {
            if (Session["UserID"] != null)
            {
                int userId = (int)Session["UserID"];
                using (var dbContext = new WebsiteMuaSamEntities())
                {
                    return dbContext.WishList.Count(w => w.UserID == userId);
                }
            }

            return 0;
        }
        public PartialViewResult BagWishList()
        {
            int total = GetWishListCount(); // Gọi hàm TotalAmount() để tính tổng số lượng

            // Kiểm tra giá trị null trước khi gán

            ViewBag.Total = total; // Đặt giá trị tổng số lượng vào ViewBag

            return PartialView("BagWishList");
        }



    }
}
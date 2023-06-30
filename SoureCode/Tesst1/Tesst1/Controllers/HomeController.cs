using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web.Mvc;
using Tesst1.Models;

namespace Tesst1.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public Categories cate = new Categories();
        public Products pro = new Products();
        private WebsiteMuaSamEntities db = new WebsiteMuaSamEntities();
     
        // GET: Products
        public ActionResult Index()
        {

            var products = db.Products.Include(p => p.Categories);
            var categories = db.Categories.Include(p => p.Products);

            HomeModel home = new HomeModel();
            home.ProductsView = products;
            home.CategoriesView = categories;
            return View(home);
        }

        // GET: Products/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }

            Products product = db.Products.Find(id);
            if (product == null)
            {
                return HttpNotFound();
            }

            var comments = db.Comment.Include(c => c.Users).Where(c => c.ProductID == id).ToList();

            foreach (var comment in comments)
            {
                if (string.IsNullOrEmpty(comment.UserNamess))
                {
                    var user = db.Users.FirstOrDefault(u => u.UserID == comment.UserID);
                    if (user != null)
                    {
                        comment.UserNamess = user.UserName;
                        comment.UserssImage = user.ImageUser;
                    }
                }
            }

            // Lọc những đánh giá có giá trị (Rating) khác null
            var ratedComments = comments.Where(c => c.Rating != null).ToList();

            // Tính tổng giá trị đánh giá
            double totalRating = ratedComments.Sum(c => c.Rating.Value);

            // Tính giá trị đánh giá trung bình
            double averageRating = ratedComments.Count > 0 ? totalRating / ratedComments.Count : 0;

            var model = new DetailsModel
            {
                ProductsView = new List<Products> { product },
                CommentView = comments,
                AverageRating = averageRating
            };

            return View(model);
        }


        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
        public ActionResult CategoryDetails(int? id)
        {

            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Categories cate1 = db.Categories.Find(id);
            if (cate1 == null)
            {
                return HttpNotFound();
            }
            //Lấy tên cate hiển thị trong Viewbag
            ViewBag.CategoryName = cate1.CategoryName;
            //Giống như diều kiện if so sánh và lấy giá trị thuộc danh mục
            var products = db.Products.Where(p => p.CategoryID == id).ToList();

            return View(products.ToList());

        }
        //Tìm kiếm
        public ActionResult Search(string searchTerm)
        {
            var products = db.Products.Include(p => p.Categories);

            if (!string.IsNullOrEmpty(searchTerm))
            {
                products = products.Where(p => p.ProductName.Contains(searchTerm));
            }
            ViewBag.SearchTerm = searchTerm;
            return View(products.ToList());
        }
        [HttpPost]
        public ActionResult CreateComment(Comment comment)
        {
            try
            {
                // Kiểm tra tính hợp lệ của dữ liệu nhập
                if (ModelState.IsValid)
                {
                    // Kiểm tra xem người dùng đã đăng nhập hay chưa
                    if (Session["UserID"] == null)
                    {
                        TempData["FailCM"] = "Bạn cần đăng nhập trước khi bình luận";
                        return RedirectToAction("Details", new { id = comment.ProductID });
                    }
                    else
                    {
                        // Lấy UserID từ session đã lưu khi đăng nhập
                        int rating = int.Parse(Request.Form["Rating"]);
                        int userID = (int)Session["UserID"];
                        // Gán thông tin bình luận và đánh giá
                        comment.UserID = userID;
                        comment.DateOrder = DateTime.Now;
                        comment.Rating = rating;

                        // Lưu bình luận vào cơ sở dữ liệu
                        db.Comment.Add(comment);
                        db.SaveChanges();
                        TempData["SuccessCM"] = "Bình luận thành công";
                        // Chuyển hướng người dùng đến trang chi tiết sản phẩm sau khi bình luận thành công
                        return RedirectToAction("Details", new { id = comment.ProductID });
                    }
                }
                else
                {
                    // Trả về kết quả không thành công với thông báo lỗi
                    var errors = ModelState.Values.SelectMany(v => v.Errors).Select(e => e.ErrorMessage);
                    TempData["ErrorMessage"] = string.Join("<br/>", errors);
                }
            }
            catch (Exception ex)
            {
                // Xử lý lỗi và trả về kết quả không thành công với thông báo lỗi
                TempData["ErrorMessage"] = ex.Message;
            }

            // Chuyển hướng người dùng đến trang chi tiết sản phẩm nếu có lỗi xảy ra
            return RedirectToAction("Details", new { id = comment.ProductID });
        }
        public List<Comment> GetCommentsFromDatabase(int productId)
        {
            // Logic để truy vấn và lấy các đánh giá từ cơ sở dữ liệu dựa trên productId
            // Ví dụ:
            using (var dbContext = new WebsiteMuaSamEntities())
            {
                var comments = dbContext.Comment.Where(c => c.ProductID == productId).ToList();
                return comments;
            }
        }


    }
}
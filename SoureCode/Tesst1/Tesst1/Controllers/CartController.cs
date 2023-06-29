using Microsoft.Ajax.Utilities;
using Stripe.Checkout;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web.Mvc;
using Tesst1.Models;

namespace Tesst1.Controllers
{
    public class CartController : Controller
    {
        // GET: Cart
        private WebsiteMuaSamEntities db = new WebsiteMuaSamEntities();
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult AddToCart(int id)
        {
            int quantity = 1;

            if (Session["UserID"] != null)
            {
                // User is logged in
                int userId = (int)Session["UserID"];

                using (var dbContext = new WebsiteMuaSamEntities())
                {
                    var existingCartItem = dbContext.Cart.FirstOrDefault(c => c.UserID == userId && c.ProductID == id);

                    if (existingCartItem != null)
                    {
                        // Item already exists in the cart, update the quantity and total money
                        existingCartItem.Quantity += quantity;
                        existingCartItem.TotalMoney = existingCartItem.Price * existingCartItem.Quantity;
                    }
                    else
                    {
                        // Item doesn't exist in the cart, create a new Cart object
                        var newCartItem = new Cart
                        {
                            UserID = userId,
                            ProductID = id,
                            Quantity = quantity
                        };

                        // Get the product price from the database
                        var product = dbContext.Products.FirstOrDefault(p => p.ProductID == id);
                        if (product != null)
                        {
                            newCartItem.Price = product.ProductPrice;
                            newCartItem.TotalMoney = product.ProductPrice * quantity;
                        }

                        dbContext.Cart.Add(newCartItem);
                    }

                    dbContext.SaveChanges();
                }

                TempData["SuccessCart"] = "Thêm sản phẩm vào giỏ hàng thành công";
                return RedirectToAction("Details", "Home");
            }
            else
            {
                // User is not logged in, display a message asking them to log in
                TempData["ErrorCart"] = "Vui lòng đăng nhập để thêm sản phẩm vào giỏ hàng";
                return RedirectToAction("Details", "Home");
            }
        }

        public ActionResult BuyNow(int id)
        {
            // Lấy UserID từ người dùng đã đăng nhập
            if (Session["UserID"] != null)
            {
                int userId = (int)Session["UserID"];
                int quantity = 1;
                using (var dbContext = new WebsiteMuaSamEntities())
                {
                    // Kiểm tra xem sản phẩm đã tồn tại trong giỏ hàng của người dùng chưa
                    var existingCartItem = dbContext.Cart.FirstOrDefault(c => c.UserID == userId && c.ProductID == id);

                    if (existingCartItem != null)
                    {
                        // Nếu sản phẩm đã tồn tại trong giỏ hàng, cập nhật số lượng và tổng tiền
                        existingCartItem.Quantity += quantity;
                        existingCartItem.TotalMoney = existingCartItem.Price * existingCartItem.Quantity;
                    }
                    else
                    {
                        // Nếu sản phẩm chưa tồn tại trong giỏ hàng, tạo một đối tượng Cart mới
                        var newCartItem = new Cart
                        {
                            UserID = userId,
                            ProductID = id,
                            Quantity = quantity
                        };

                        // Lấy giá sản phẩm từ cơ sở dữ liệu
                        var product = dbContext.Products.FirstOrDefault(p => p.ProductID == id);
                        if (product != null)
                        {
                            newCartItem.Price = product.ProductPrice;
                            newCartItem.TotalMoney = product.ProductPrice * quantity;
                        }

                        // Thêm đối tượng Cart mới vào cơ sở dữ liệu
                        dbContext.Cart.Add(newCartItem);
                    }

                    dbContext.SaveChanges();
                }

                TempData["SuccessBuyNow"] = "Thêm sản phẩm vào giỏ hàng thành công";
                return RedirectToAction("ShowToCart", "Cart");
            }
            else
            {
                // User is not logged in, display a message asking them to log in
                TempData["ErrorBuyNow"] = "Vui lòng đăng nhập để mua sản phẩm ";
                return RedirectToAction("Index", "Home");
            }
            }
        public ActionResult ShowToCart()
        {
          
            if (TempData.ContainsKey("SuccessPay"))
            {

                TempData["SuccessPay"] = "Thanh toán thành công";


            }
            if (TempData.ContainsKey("ErrorPayment"))
            {
                TempData["ErrorPayment"] = "Thanh toán đã bị hủy";
            }
            if (Session["UserID"] != null)
            {
                int userId = (int)Session["UserID"];
                using (var dbContext = new WebsiteMuaSamEntities())
                {
                    var cart = dbContext.Cart
                        .Where(w => w.UserID == userId)
                        .Include(w => w.Products)
                        .ToList();

                    return View(cart);
                }
            }
            else {
                return View(new List<Cart>());
            }
        }
        public ActionResult RemoveFromCart(int id)
        {
            // Lấy UserID từ người dùng đã đăng nhập
            int userId = (int)Session["UserID"];

            using (var dbContext = new WebsiteMuaSamEntities())
            {
                // Tìm sản phẩm trong danh sách yêu thích của người dùng
                var cart = dbContext.Cart.FirstOrDefault(w => w.UserID == userId && w.ProductID == id);

                if (cart != null)
                {
                    // Xóa sản phẩm khỏi danh sách yêu thích
                    dbContext.Cart.Remove(cart);
                    dbContext.SaveChanges();
                    TempData["SuccessRemove"] = "Xóa sản phẩm thành công";
                }
                else
                {
                    TempData["ErrorRemove"] = "Không tìm thấy sản phẩm nào.";
                }
            }

            return RedirectToAction("ShowToCart", "Cart");
        }
        public ActionResult ClearCart()
        {
            // Lấy UserID từ người dùng đã đăng nhập
            int userId = (int)Session["UserID"];

            using (var dbContext = new WebsiteMuaSamEntities())
            {
                // Lấy danh sách các sản phẩm yêu thích của người dùng
                var cart = dbContext.Cart.Where(w => w.UserID == userId).ToList();

                if (cart.Count > 0)
                {
                    // Xóa tất cả các sản phẩm trong danh sách yêu thích
                    dbContext.Cart.RemoveRange(cart);
                    dbContext.SaveChanges();
                    TempData["SuccessClear"] = "Xóa sản phẩm thành công";
                }
                else
                {
                    TempData["ErrorClear"] = "Giỏ hàng  rỗng";
                }
            }

            return RedirectToAction("ShowToCart", "Cart");
        }
        public ActionResult UpdateAmount(int cartId, int quantity)
        {
            using (var dbContext = new WebsiteMuaSamEntities())
            {
                // Lấy sản phẩm trong giỏ hàng dựa trên cartId
                var cartItem = dbContext.Cart.FirstOrDefault(c => c.CartID == cartId);

                if (cartItem != null)
                {
                    // Cập nhật số lượng và tổng tiền sản phẩm trong giỏ hàng
                    cartItem.Quantity = quantity;
                    cartItem.TotalMoney = cartItem.Price * quantity;
                    dbContext.SaveChanges();

                    TempData["SuccessAmount"] = "Cập nhật số lượng thành công";
                }
                else
                {
                    TempData["ErrorAmount"] = "Không tìm thấy sản phẩm trong giỏ hàng";
                }
            }

            return RedirectToAction("ShowToCart");
        }
        public int TotalAmount()
        {
            int totalAmount = 0;
            if (Session["UserID"] == null)
            {
                totalAmount = 0;
            }
            else { 
                int userId = (int)Session["UserID"];
        
            using (var dbContext = new WebsiteMuaSamEntities())
                {

                totalAmount = (int)dbContext.Cart
                          .Where(c => c.UserID == userId)
                          .Select(c => c.Quantity)
                          .DefaultIfEmpty(0)
                          .Sum();

            }
            }
            return totalAmount;

        }


        public PartialViewResult BagCart()
        {
            int totalAmountNullable = TotalAmount(); // Gọi hàm TotalAmount() để tính tổng số lượng

            int totalAmount = TotalAmount(); // Kiểm tra giá trị null trước khi gán

            ViewBag.TotalAmount = totalAmount; // Đặt giá trị tổng số lượng vào ViewBag

            return PartialView("BagCart");
        }

        public ActionResult CheckOut(int? userId)
        {
            WebsiteMuaSamEntities db = new WebsiteMuaSamEntities();
            userId = (int)Session["UserID"];
           
            Users user = db.Users.Find(userId);
            if (userId == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            if (user == null)
            {
                return HttpNotFound();
            }

            return View(user);
        }
        public ActionResult Partial_Item_CheckOut()
        {
           
                int userId = (int)Session["UserID"];
                using (var dbContext = new WebsiteMuaSamEntities())
                {
                    var cart = dbContext.Cart
                        .Where(w => w.UserID == userId)
                        .Include(w => w.Products)
                        .ToList();

                    return View(cart);
                }
            
        }

        public ActionResult Payment()
        {
            if (ModelState.IsValid)
            {
                int userId = (int)Session["UserID"];

                var cartItems = db.Cart.Where(c => c.UserID == userId).ToList();

                var options = new SessionCreateOptions
                {
                    PaymentMethodTypes = new List<string> { "card" },
                    LineItems = new List<SessionLineItemOptions>(),
                    Mode = "payment",
                    SuccessUrl = Url.Action("Success", "Cart", null, Request.Url.Scheme),
                    CancelUrl = Url.Action("Cancel", "Cart", null, Request.Url.Scheme),
                };

                foreach (var cartItem in cartItems)
                {
                    var productName = cartItem.Products.ProductName; // Retrieve the name of the product from the cartItem

                    options.LineItems.Add(new SessionLineItemOptions
                    {
                        PriceData = new SessionLineItemPriceDataOptions
                        {
                            Currency = "vnd",
                            UnitAmount = (long)(cartItem.Price),
                            ProductData = new SessionLineItemPriceDataProductDataOptions
                            {
                                Name = productName, // Use the product name from the cartItem
                            },
                        },
                        Quantity = cartItem.Quantity,
                    });
                }
             
                var service = new SessionService();
                Stripe.Checkout.Session session = service.Create(options);
                
                // Store the cart items in TempData for reference in the Success method
                TempData["CartItems"] = cartItems;
               
                return Redirect(session.Url);

            }
            
            return RedirectToAction("ShowToCart", "Cart");
        }


        public ActionResult Success(string session_id)
        {
            var cartItems = TempData["CartItems"] as List<Cart>;
            TempData["SuccessPay"] = "Thanh toán thành công";
            if (cartItems != null)
            {
                Orders order = new Orders();
                order.UserID = (int)Session["UserID"];

                foreach (var cartItem in cartItems)
                {
                    var productName = cartItem.Products.ProductName;

                    order.OrderDetails.Add(new OrderDetails
                    {
                        ProductID = cartItem.ProductID,
                        Amount = cartItem.Quantity,
                        Price = cartItem.Price
                    });
                }
             
                order.TotalMoney = cartItems.Sum(x => (x.Quantity * x.Price));
                order.DateOrder = DateTime.Now;
                order.StatusID = 1;

                db.Orders.Add(order);
                db.SaveChanges();

                ClearCart();
                db.SaveChanges();
                
                TempData["OrderID"] = order.OrderID; // Lưu OrderID vào TempData để sử dụng sau này
               
            }
         
            TempData.Remove("CartItems"); // Xóa thông tin sản phẩm trong TempData
            TempData["SuccessPay"] = "Thanh toán thành công";

            return RedirectToAction("ShowToCart", "Cart"); // Chuyển hướng đến trang hiển thị giỏ hàng
        }



        public ActionResult Cancel()
        {
            // Clear the CartItems from TempData
            TempData.Remove("CartItems");

            TempData["ErrorPayment"] = "Thanh toán đã bị hủy";

            // Redirect to the ShowToCart action
            return RedirectToAction("ShowToCart", "Cart");
        }











    }
}
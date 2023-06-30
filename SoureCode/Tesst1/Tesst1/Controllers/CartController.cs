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
        //Thêm vào giỏ hàng
        public ActionResult AddToCart(int id)
        {
            int quantity = 1;
            // Kiểm tra người dùng có đăng nhập không
            if (Session["UserID"] != null)
            {
              
                int userId = (int)Session["UserID"];

                using (var dbContext = new WebsiteMuaSamEntities())
                {
                    var existingCartItem = dbContext.Cart.FirstOrDefault(c => c.UserID == userId && c.ProductID == id);
                    //Nếu sản phẩm đã tồn tại thì tăng số lượng lên
                    if (existingCartItem != null)
                    {
                        
                        existingCartItem.Quantity += quantity;
                        existingCartItem.TotalMoney = existingCartItem.Price * existingCartItem.Quantity;
                    }
                    else
                    {
                        //Nếu chưa có sản phẩm trong giỏ hàng thì tạo mới một sản phẩm
                        var newCartItem = new Cart
                        {
                            UserID = userId,
                            ProductID = id,
                            Quantity = quantity
                        };

                        // Lấy giá sản phẩm từ database và tình tổng tiền
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
                // Nếu chưa đăng nhập thì quay lại trang hiện tại và thông báo đăng nhập 
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

                        // Thêm sản phẩm mới vào cơ sở dữ liệu
                        dbContext.Cart.Add(newCartItem);
                    }

                    dbContext.SaveChanges();
                }

                TempData["SuccessBuyNow"] = "Thêm sản phẩm vào giỏ hàng thành công";
                return RedirectToAction("ShowToCart", "Cart");
            }
            else
            {
                // Nếu chưa đăng nhập thì quay lại trang hiện tại và thông báo đăng nhập 
                TempData["ErrorBuyNow"] = "Vui lòng đăng nhập để mua sản phẩm ";
                return RedirectToAction("Index", "Home");
            }
        }
        //Xem giỏ hàng
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
            else
            {
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
                    // Xóa sản phẩm khỏi giỏ hàng
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
                    // Xóa tất cả các sản phẩm trong giỏ hàng
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
        //Tổng số lượng sản phẩm có trong giỏ hàng
        public int TotalAmount()
        {
            int totalAmount = 0;
           //Nếu người dùng chưa đăng nhập thì số lượng bằng 0
            if (Session["UserID"] == null)
            {
                totalAmount = 0;
            }
            else
            {
                int userId = (int)Session["UserID"];
                //Đã đăng nhập
                //Nếu chưa có sản phẩm thì bằng 0
                //Nếu đã có thì cập nhật lại tổng số lượng
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

        //Hiển thị tổng số lượng
        public PartialViewResult BagCart()
        {
           

            int totalAmount = TotalAmount(); 

            ViewBag.TotalAmount = totalAmount; 

            return PartialView("BagCart");
        }

        //Kiểm tra trước khi thanh toán
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
        //Hiển thị danh sách sản phẩm thu nhỏ
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
        //Thanh toán StripeApi
            public ActionResult Payment()
            {
                if (ModelState.IsValid)
                {
                    int userId = (int)Session["UserID"];
                //Lấy sản phẩm có trong giỏ hàng
                    var cartItems = db.Cart.Where(c => c.UserID == userId).ToList();

                    var options = new SessionCreateOptions
                    {
                        PaymentMethodTypes = new List<string> { "card" },
                        LineItems = new List<SessionLineItemOptions>(),
                        Mode = "payment",
                        SuccessUrl = Url.Action("Success", "Cart", null, Request.Url.Scheme),
                        CancelUrl = Url.Action("Cancel", "Cart", null, Request.Url.Scheme),
                    };
                //Duyệt và lấy danh sách sản phẩm
                    foreach (var cartItem in cartItems)
                    {
                        var productName = cartItem.Products.ProductName; 

                        options.LineItems.Add(new SessionLineItemOptions
                        {
                            PriceData = new SessionLineItemPriceDataOptions
                            {
                                Currency = "vnd",
                                UnitAmount = (long)(cartItem.Price),
                                ProductData = new SessionLineItemPriceDataProductDataOptions
                                {
                                    Name = productName, 
                                },
                            },
                            Quantity = cartItem.Quantity,
                        });
                    }
                    //Tạo phiên thanh toán StripeAPI
                    var service = new SessionService();
                    Stripe.Checkout.Session session = service.Create(options);

               //Lưu tạm giỏ hàng vào temp data 
                    TempData["CartItems"] = cartItems;
                //Tới trang thanh toán
               
                return Redirect(session.Url);

                }
          
            return RedirectToAction("ShowToCart", "Cart");
            }


        public ActionResult Success(string session_id)
        {
           
            var cartItems = TempData["CartItems"] as List<Cart>;
           
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

                TempData["OrderID"] = order.OrderID;
               
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
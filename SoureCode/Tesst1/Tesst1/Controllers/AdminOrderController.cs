using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Tesst1.Models;

namespace Tesst1.Controllers
{
    public class AdminOrderController : Controller
    {
        private WebsiteMuaSamEntities db = new WebsiteMuaSamEntities();

        // GET: AdminOrder
        public ActionResult Index()
        {

            return View(db.Orders.ToList());
        }
        public ActionResult Details(int? id)
        {

            var orderDetails = db.OrderDetails.Where(od => od.OrderID == id).ToList();
            ViewBag.StatusID = new SelectList(db.OrderStatus, "StatusID", "StatusName");
            return View(orderDetails);
        }
        public ActionResult Dashboard()
        {
            return View(db.Orders.ToList());
        }
        [HttpPost]
        public ActionResult UpdateStatus(int OrderID, int StatusID)
        {
            // Lấy order từ cơ sở dữ liệu theo orderId
            var order = db.Orders.Find(OrderID);

            if (order != null)
            {
                // Cập nhật trạng thái của order
                order.StatusID = StatusID;
                db.SaveChanges();

                // Thực hiện các hành động khác sau khi cập nhật thành công

                return RedirectToAction("Index", new { id = OrderID });
            }

            // Xử lý lỗi khi không tìm thấy order

            return RedirectToAction("Index", "AdminOrder");
        }
    }
}

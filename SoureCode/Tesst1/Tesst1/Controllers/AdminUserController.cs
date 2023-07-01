using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Net;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.Mvc;
using Tesst1.Models;

namespace Tesst1.Controllers
{
    public class AdminUserController : Controller
    {
        private WebsiteMuaSamEntities db = new WebsiteMuaSamEntities();

        // GET: AdminUser
        public ActionResult Index()
        {
            ViewBag.RoleID = new SelectList(db.UserRole, "RoleID", "RoleName");
            return View(db.Users.ToList());
        }

        // GET: AdminUser/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Users users = db.Users.Find(id);
            if (users == null)
            {
                return HttpNotFound();
            }
            return View(users);
        }

        // GET: AdminUser/Create
        public ActionResult Create()
        {
            ViewBag.RoleID = new SelectList(db.UserRole, "RoleID", "RoleName");
            return View();
        }

        // POST: AdminUser/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult Create([Bind(Include = "UserID,UserName,Email,PassWord,Address,PhoneNumber,ImageUser,RoleID")] Users users, HttpPostedFileBase ImageUser)
        {
            if (ModelState.IsValid)
            {
                try
                {



                    var check = db.Users.FirstOrDefault(s => s.Email == users.Email && s.UserID != users.UserID);
                    if (check != null)
                    {
                        ModelState.AddModelError("Email", "Email đã tồn tại ! Vui lòng sử dụng 1 email khác");
                        return View(users);
                    }
                    if (ImageUser != null && ImageUser.ContentLength > 0)
                    {
                        string _FileName = Path.GetFileName(ImageUser.FileName);
                        string _path = Path.Combine(Server.MapPath("~/public/images"), _FileName);
                        ImageUser.SaveAs(_path);
                        users.ImageUser = _FileName;
                    }
                    users.PassWord =HashPassword(users.PassWord);
                    users.PassWordComfirm = HashPassword(users.PassWord);
                    db.Users.Add(users);
                    db.SaveChanges();
                    return RedirectToAction("Index", "AdminUser");
                }
                catch
                {
                    ViewBag.Message = "Không Thành Công!";
                }
            }
            ViewBag.RoleID = new SelectList(db.UserRole, "RoleID", "RoleName", users.RoleID);
            return View(users);
        }

        // GET: AdminUser/Edit/5

        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Users users = db.Users.Find(id);
            if (users == null)
            {
                return HttpNotFound();
            }
            ViewBag.RoleID = new SelectList(db.UserRole, "RoleID", "RoleName");
            return View(users);
        }

        // POST: AdminUser/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult Edit([Bind(Include = "UserID,UserName,Email,PassWord,Address,PhoneNumber,ImageUser,RoleID")] Users users, HttpPostedFileBase ImageUser, FormCollection form)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    Users existingUser = db.Users.Find(users.UserID);

                    // Cập nhật thông tin người dùng
                    existingUser.UserName = users.UserName;
                    existingUser.Email = users.Email;
                    existingUser.Address = users.Address;
                    existingUser.PhoneNumber = users.PhoneNumber;
                    existingUser.RoleID = users.RoleID;
                    existingUser.PassWord =HashPassword(users.PassWord);
                    existingUser.PassWordComfirm = HashPassword(users.PassWord);


                    if (ImageUser != null)
                    {
                        string _FileName = Path.GetFileName(ImageUser.FileName);
                        string _path = Path.Combine(Server.MapPath("~/public/images"), _FileName);
                        ImageUser.SaveAs(_path);
                        existingUser.ImageUser = _FileName;
                        _path = Path.Combine(Server.MapPath("~/public/images"), form["oldimage"]);
                        if (System.IO.File.Exists(_path))
                            System.IO.File.Delete(_path);
                    }
                    else
                    {
                        if (!string.IsNullOrEmpty(HashPassword(users.PassWord)))
                        {
                            existingUser.PassWord = HashPassword(users.PassWord);
                        }
                        existingUser.ImageUser = form["oldimage"];
                    }

                    db.Entry(existingUser).State = EntityState.Modified;

                    db.SaveChanges();
                    return RedirectToAction("Index", "AdminUser");
                }
                catch
                {
                    ViewBag.Message = "Không Thành Công!";
                }
            }
            ViewBag.RoleID = new SelectList(db.UserRole, "RoleID", "RoleName", users.RoleID);
            return View(users);
        }


        // GET: AdminUser/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Users users = db.Users.Find(id);
            if (users == null)
            {
                return HttpNotFound();
            }
            return View(users);
        }

        // POST: AdminUser/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Users users = db.Users.Find(id);
            db.Users.Remove(users);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
        public string HashPassword(string password)
        {
            using (SHA256 sha256 = SHA256.Create())
            {
                byte[] bytes = Encoding.UTF8.GetBytes(password);
                byte[] hash = sha256.ComputeHash(bytes);

                StringBuilder builder = new StringBuilder();
                for (int i = 0; i < hash.Length; i++)
                {
                    builder.Append(hash[i].ToString("x2")); // Chuyển đổi thành chuỗi hexa
                }

                return builder.ToString();
            }
        }
    }
}

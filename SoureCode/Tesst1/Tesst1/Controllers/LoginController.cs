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
    public class LoginController : Controller
    {
        // GET: Login
        WebsiteMuaSamEntities db = new WebsiteMuaSamEntities();

        public ActionResult Index()
        {

            return View();
        }
        public ActionResult LoginAdmin()
        {

            return View();
        }
        [HttpPost]
        public ActionResult AuthenAdmin(Users user)
        {
            var check = db.Users.FirstOrDefault(s => s.Email == user.Email);
            if (string.IsNullOrEmpty(user.Email) || string.IsNullOrEmpty(user.PassWord))
            {

                return View("LoginAdmin", user);
            }
            else if (check == null)
            {
                ModelState.AddModelError("PassWord", "Mật khẩu không hợp lệ");
                return View("LoginAdmin", user);
            }
            else if (check.RoleID == 1 && check.RoleID != null)
            {
                string hashedPassword = HashPassword(user.PassWord);

                // So sánh mật khẩu đã mã hóa từ cơ sở dữ liệu với mật khẩu đã mã hóa từ người dùng nhập vào
                bool isPasswordMatched = hashedPassword == check.PassWord;

                if (isPasswordMatched)
                {
                    Session["UserID"] = check.UserID;
                    Session["Email"] = user.Email;
                    Session["UserName"] = user.UserName;
                    return RedirectToAction("Index", "AdminProduct");
                }
                else
                {
                    ModelState.AddModelError("PassWord", "Mật khẩu không hợp lệ");
                    return View("Index", user);
                }
                
            }
            else
            {
                Session["UserID"] = check.UserID;
                Session["Email"] = user.Email;
                Session["UserName"] = user.UserName;
                return RedirectToAction("Index", "Home");

            }

        }
        //Method Login
        [HttpPost]
        public ActionResult Authen(Users user)
        {
            var check = db.Users.FirstOrDefault(s => s.Email == user.Email);
            if (string.IsNullOrEmpty(user.Email) || string.IsNullOrEmpty(user.PassWord))
            {
                return View("Index", user);
            }
            else if (check == null)
            {
                ModelState.AddModelError("Email", "Email không tồn tại");
                return View("Index", user);
            }
            else
            {
                // Mã hóa mật khẩu người dùng nhập vào
                string hashedPassword = HashPassword(user.PassWord);

                // So sánh mật khẩu đã mã hóa từ cơ sở dữ liệu với mật khẩu đã mã hóa từ người dùng nhập vào
                bool isPasswordMatched = hashedPassword == check.PassWord;

                if (isPasswordMatched)
                {
                    Session["UserID"] = check.UserID;
                    Session["Email"] = user.Email;
                    return RedirectToAction("Index", "Home");
                }
                else
                {
                    ModelState.AddModelError("PassWord", "Mật khẩu không hợp lệ");
                    return View("Index", user);
                }
            }
        }


        [HttpGet]
        public ActionResult Register()
        {
            return View();
        }
        //method xử lý model
        [HttpPost]
        public ActionResult Register(Users users)
        {
            if (ModelState.IsValid)
            {
                var check = db.Users.FirstOrDefault(s => s.Email == users.Email);
                if (check != null)
                {
                    ModelState.AddModelError("Email", "Email đã tồn tại ! Vui lòng sử dụng 1 email khác");
                    return View();

                }
                else
                {
                    string hashedPassword = HashPassword(users.PassWord);
                    users.PassWord = hashedPassword;
                    users.PassWordComfirm= hashedPassword;
                    users.RoleID = 2;
                    db.Configuration.ValidateOnSaveEnabled = false;
                    db.Users.Add(users);
                    db.SaveChanges();
                    return RedirectToAction("Index", "Login");
                }
            }
            return View();
        }
        public ActionResult Logout()
        {
            Session.Clear();
            return RedirectToAction("Index", "Login");
        }
        public ActionResult LogoutAdmin()
        {
            Session.Abandon();
            return RedirectToAction("LoginAdmin", "Login");
        }

        public ActionResult Edit(int? userId)
        {
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


        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult Edit([Bind(Include = "UserID,UserName,Email,PassWord,Address,PhoneNumber,ImageUser,Role")] Users users, HttpPostedFileBase ImageUser, FormCollection form)
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
                    var check = db.Users.FirstOrDefault(s => s.Email == users.Email && s.UserID != users.UserID);
                    if (check != null)
                    {
                        ModelState.AddModelError("Email", "Email đã tồn tại ! Vui lòng sử dụng 1 email khác");
                        TempData["FailMessage"] = "Thêm sản phẩm thành công";
                        users.ImageUser = form["oldimage"];
                        return View(users);
                    }

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
                        if (!string.IsNullOrEmpty(users.PassWord))
                        {
                            existingUser.PassWord = users.PassWord;
                        }

                        existingUser.ImageUser = form["oldimage"];
                    }



                    db.Entry(existingUser).State = EntityState.Modified;
                    db.SaveChanges();
                    TempData["SuccessMessage"] = "Thêm sản phẩm thành công";
                    return RedirectToAction("Edit", "Login");

                }
                catch
                {
                    ViewBag.Message = "Không Thành Công!";
                }
            }

            return View(users);
        }
        public ActionResult EditAdmin(int? userId)
        {
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


        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult EditAdmin([Bind(Include = "UserID,UserName,Email,PassWord,Address,PhoneNumber,ImageUser,Role")] Users users, HttpPostedFileBase ImageUser, FormCollection form)
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
                    var check = db.Users.FirstOrDefault(s => s.Email == users.Email && s.UserID != users.UserID);
                    if (check != null)
                    {
                        ModelState.AddModelError("Email", "Email đã tồn tại ! Vui lòng sử dụng 1 email khác");
                        TempData["FailMessage"] = "Thêm sản phẩm thành công";
                        users.ImageUser = form["oldimage"];
                        return View(users);
                    }

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
                        if (!string.IsNullOrEmpty(users.PassWord))
                        {
                            existingUser.PassWord = users.PassWord;
                        }

                        existingUser.ImageUser = form["oldimage"];
                    }



                    db.Entry(existingUser).State = EntityState.Modified;
                    db.SaveChanges();
                    TempData["SuccessMessage"] = "Thêm sản phẩm thành công";
                    return RedirectToAction("Edit", "Login");

                }
                catch
                {
                    ViewBag.Message = "Không Thành Công!";
                }
            }

            return View(users);
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
        public bool VerifyPassword(string password, string hashedPassword)
        {
            string hashedInput = HashPassword(password);
            return string.Equals(hashedInput, hashedPassword);
        }
    }
}
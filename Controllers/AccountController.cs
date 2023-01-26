using MCF_TestCode.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MCF_TestCode.Controllers
{
    public class AccountController : Controller
    {
        Transaction_DBEntities objTransaction_DBEntities = new Transaction_DBEntities();
        // GET: Account
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Login()
        {
            UserModel objUserModel = new UserModel();
            return View(objUserModel);
        }

        [HttpPost]
        public ActionResult Login(UserModel objUserModel)
        {
            if (ModelState.IsValid)
            {
                if (objTransaction_DBEntities.ms_user.Where(m => m.user_name == objUserModel.user_name && m.password == objUserModel.password).FirstOrDefault() == null)
                {
                    ModelState.AddModelError("Error", "Invalid user name and password ");
                    return View();
                }
                else
                {
                    Session["user_name"] = objUserModel.user_name;
                    Session["user_type"] = objUserModel.user_type;
                    RedirectToAction("Index", "Home");
                }
            }
            return View();
        }

        public ActionResult Logout()
        {
            Session.Abandon();
            RedirectToAction("Login", "Account");
            return View("Login");
        }
    }
}
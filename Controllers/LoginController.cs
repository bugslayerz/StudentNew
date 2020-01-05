using StudentMonitor;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace StudentMonitor.Controllers
{
    public class LoginController : Controller
    {
        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Login(UserProfile objUser)
        {
            if (ModelState.IsValid)
            {
                using (StudentEntities1 db = new StudentEntities1())  
                {
                    
                    var obj = db.UserProfiles.Where(a => a.UserName.Equals(objUser.UserName) && a.Password.Equals(objUser.Password)).FirstOrDefault();
                    if (obj != null)
                    {
                        Session["UserID"] = obj.UserId.ToString();
                        Session["UserName"] = obj.UserName.ToString();
                        Session["Role"] = obj.Role.ToString();
                        return RedirectToAction("LandingPage");
                    }  
                }
            }
            return View(objUser);
        }
        public ActionResult LandingPage()
        {
            if (Session["UserID"] != null)
            {
               return View();
            }
            else
            {
                return RedirectToAction("Login");
            }
        }
    }
}
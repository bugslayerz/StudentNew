using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace StudentMonitor.Controllers
{
    public class StudentDetailsController : Controller
    {
        // GET: StudentDetails
        public ActionResult ViewStudent(STUDENT objstudent)
        {
            using (StudentEntities4 db4 = new StudentEntities4())
            {

                var obj = db4.UserProfiles.Where(a => a.UserName.Equals(objstudent.UserName) && a.Password.Equals(objUser.Password)).FirstOrDefault();
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

                return View();
        }


    }
}
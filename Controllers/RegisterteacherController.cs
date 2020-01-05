using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace StudentMonitor.Controllers
{
    public class RegisterteacherController : Controller
    {
        // GET: Registerteacher
        public ActionResult RegisterTeacher()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult RegisterTeacher(TEACHER obj)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    using (StudentEntities5 re = new StudentEntities5())
                    {
                        re.TEACHERS.Add(obj);
                        re.SaveChanges();
                        ModelState.Clear();
                        obj = null;
                        ViewBag.Message = "Success";
                    }

                }
            }
            catch (Exception ex)
            {
                return View("Error", new HandleErrorInfo(ex, "Student", "Index"));
            }

            return View(obj);
        }
    }
}



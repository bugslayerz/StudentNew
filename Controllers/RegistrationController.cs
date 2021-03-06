﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;



namespace StudentMonitor.Controllers
{
    public class RegistrationController : Controller
    {
        public ActionResult RegisterStudent()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult RegisterStudent(STUDENT obj)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    using (StudentEntities4 re = new StudentEntities4())
                    {
                        re.STUDENTS.Add(obj);
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




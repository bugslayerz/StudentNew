using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace StudentMonitor.Controllers
{
    public class TT3Controller : Controller
    {
        // GET: TT3
        public ActionResult TimeTable3()
        {
            StudentEntities8 tt = new StudentEntities8();
            var data = tt.sp_timetable3().ToList();
            ViewBag.timetables = data;
            return View();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace StudentMonitor.Controllers
{
    public class TT5Controller : Controller
    {
        // GET: TT5
        public ActionResult TimeTable5()
        {
            StudentEntities8 tt = new StudentEntities8();
            var data = tt.sp_timetable5().ToList();
            ViewBag.timetables = data;
            return View();
        }
    }
}
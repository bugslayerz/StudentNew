using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace StudentMonitor.Controllers
{
    public class TT4Controller : Controller
    {
        // GET: TT4
        public ActionResult TimeTable4()
        {
            StudentEntities8 tt = new StudentEntities8();
            var data = tt.sp_timetable4().ToList();
            ViewBag.timetables = data;
            return View();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace StudentMonitor.Controllers
{
    public class TT2Controller : Controller
    {
        // GET: TT2
        public ActionResult TimeTable2()
        {
            StudentEntities8 tt = new StudentEntities8();
            var data = tt.sp_timetable2().ToList();
            ViewBag.timetables = data;
            return View();
        }
    }
}
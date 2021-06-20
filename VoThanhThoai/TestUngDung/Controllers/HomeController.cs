using ModelsEF.Dao;
using ModelsEF.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TestUngDung.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
       
          private VoThoaiContext db = new VoThoaiContext();
        // GET: Homes
        public ActionResult Index(string searchString, int page = 1, int pageSize = 20)
        {
            var dao = new ProductDao();
            var model = dao.ListWhereAll(searchString, page, pageSize);
            ViewBag.SearchString = searchString;
            return View(model);
        }
    }
}
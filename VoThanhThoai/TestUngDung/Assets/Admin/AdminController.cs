using ModelsEF.Dao;
using ModelsEF.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TestUngDung.Assets.Admin
{
    public class AdminController : Controller
    {
        // GET: Admin
        public ActionResult Index(String SearchingString, int page=1, int pagesize= 5)
        {
            var UserAccount = new UserDao();
            var model = UserAccount.ListWhereAll(SearchingString, page, pagesize);
            ViewBag.SearchingString = SearchingString;
            return View(model);
        }
        public ActionResult Delete(string id)
        {
            var context = new VoThoaiContext();
            var deleting = context.UserAccount.Find(id);
            return View(deleting);
        }
        [HttpPost]
        public ActionResult Delete(String id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here
                var context = new VoThoaiContext();
                var deleting = context.UserAccount.Find(id);
                context.UserAccount.Remove(deleting);
                context.SaveChanges();
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
        // GET: Product

    }
}
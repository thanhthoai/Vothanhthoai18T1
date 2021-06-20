using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using TestUngDung.Common;

namespace TestUngDung.Assets.Admin
{
    public class BaseController : Controller
    {
        // GET: Base
        

        //protected override void OnActionExecuting(ActionExecutingContext filterContext)
        //{
        //    var session = (Product)Session[CommonConstants.USER_SESSION];
        //    if (session == null)
        //    {
        //        filterContext.Result = new RedirectToRouteResult(new
        //            RouteValueDictionary(new { controller = "Product", action = "Index", Area = "Product" }));
        //    }
        //    base.OnActionExecuting(filterContext);
        //}
        protected void SetAlert(string message, string type)
        {
            TempData["AlertMessage"] = message;
            if (type == "success")
            {
                TempData["AlertType"] = "alert-success";
            }
            else if (type == "warning")
            {
                TempData["AlertType"] = "alert-warning";
            }
            else if (type == "error")
            {
                TempData["AlertType"] = "alert-danger";
            }
        }

    }
}
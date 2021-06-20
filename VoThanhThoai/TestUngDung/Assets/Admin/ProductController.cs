using ModelsEF.Dao;
using ModelsEF.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace TestUngDung.Assets.Admin
{
    public class ProductController : BaseController
    {
        private VoThoaiContext db = new VoThoaiContext();
        // GET: Product
        public ActionResult Index(String SearchingString, int page = 1, int pagesize = 5)
        {
            var Product = new ProductDao();
            var model = Product.ListWhereAll(SearchingString, page, pagesize);
            ViewBag.SearchingString = SearchingString;
            return View(model);
        }
        public ActionResult Details(String id )
        {
            Product product = db.Product.Find(id);
            return View(product);
        }
        [HttpGet]
     
        public ActionResult Create(string id)
        {
            var dao = new ProductDao();
            var result = dao.Find(id);
           
            if(result !=null)
            {
                SetViewBag(result.Category_ID);
                return View(result);
            }
            SetViewBag();
            return View();
        }
      [HttpPost]
      public ActionResult Create (Product model)
        {
                if(ModelState.IsValid)
                {
                    var dao = new ProductDao();
                    string result ;
                    result = dao.Insert(model);
                    if(!string.IsNullOrEmpty(result))
                    {
                        SetAlert("Thêm sản phẩm thành công", "success");
                        return RedirectToAction("Index", "Product");
                    }
                    else
                    {
                        SetAlert("Thêm sản phẩm không thành công", "error");
                    }
                }
            SetViewBag(model.Category_ID);
            return View();
            }
        public void SetViewBag(long? selectedid = null)
        {
            var context = new VoThoaiContext();
            var Category_IDselect = new SelectList(context.ProductType, "ID", "Name");
            ViewBag.ID = Category_IDselect;
        }
        }
    }
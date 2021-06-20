using ModelsEF.Model;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ModelsEF.Dao
{
    public class ProductDao
    {
        VoThoaiContext db = null;
        public ProductDao()
        {
            db = new VoThoaiContext();
        }
        public List<Product> ListAll()
        {

            return db.Product.ToList();
        }
        public IEnumerable<Product> ListWhereAll(string keysearch, int page, int pagesize)
        {
            
            IQueryable<Product> model = db.Product.OrderBy(x=>x.Quanlity);
            if (!string.IsNullOrEmpty(keysearch))
            {
                model = model.Where(x => x.Name.Contains(keysearch));
            }
            return model.OrderBy(x => x.Quanlity).ToPagedList(page, pagesize);
        }
     public Product Find(string id)
        {
            return db.Product.Find(id);
        }
        public Product ViewDetail(string id)
        {
            return db.Product.Find(id);
        }
        public string Insert(Product entity)
        {
            var product = Find(entity.ID);
            if(product == null)
            {
                db.Product.Add(entity);
            }
            else
            {
                product.ID = entity.ID;
                product.Name = entity.Name;
                product.UnitCost = entity.UnitCost;
                product.Quanlity = entity.Quanlity;
                product.Category_ID = entity.Category_ID;
                product.Status = entity.Status;
            }
            db.SaveChanges();
            return entity.ID;
        }
       
    }
}
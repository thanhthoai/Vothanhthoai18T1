using ModelsEF.Model;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ModelsEF.Dao
{
    public class UserDao
    {
        private VoThoaiContext db;
        public UserDao()
        {
            db = new VoThoaiContext();
        }
        public IEnumerable<UserAccount> ListWhereAll(string keysearch, int page, int pagesize)
        {
            IQueryable<UserAccount> model = db.UserAccount;
            if (!string.IsNullOrEmpty(keysearch))
            {
                model=  model.Where(x => x.UserName.Contains(keysearch));
            }
            return model.OrderBy(x=>x.UserName).ToPagedList(page, pagesize);
        }
        public List<UserAccount> ListAll()
        {
            return db.UserAccount.ToList();
        }
    }
}
    

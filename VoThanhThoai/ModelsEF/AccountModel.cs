using ModelsEF.Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ModelsEF
{
    public class AccountModel
    {
        private VoThoaiContext context = null;
        public AccountModel()
        {
            context = new VoThoaiContext();
        }
        public bool Login(String UserName, string Password)
        {
            object[] sqlParams = 
            {
                new SqlParameter("@UserName", UserName),
                new SqlParameter("@Password",Password),
        };
            var res = context.Database.SqlQuery<bool>("Sp_UserAccount_login @UserName, @Password", sqlParams).SingleOrDefault();
            return res;
        }
    }
}

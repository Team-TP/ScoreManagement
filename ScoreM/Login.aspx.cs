using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ScoreM
{
    public partial class Login : System.Web.UI.Page
    {
        private ScoreManageDataContext db;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            db = new ScoreManageDataContext();
            string username = txtUser.Value;
            string password = txtPass.Value;
            var myquery = from i in db.Accounts
                          join j in db.Students on i.Username equals j.ID
                          where i.Username == username && i.Password == password
                          select new { i.Username, j.FirstName, j.LastName };
            if (myquery.Any())
            {
                string name = myquery.First().FirstName + myquery.First().LastName;
                
                Response.Redirect("SVHome.aspx");
            }
            else
            {
                var myquery2 = from i in db.Accounts
                               join j in db.Lecturers on i.Username equals j.ID
                               where i.Username == username && i.Password == password
                               select new { i.Username, j.FirstName, j.LastName };
                if (myquery2.Any())
                {
                    Session["id"] = myquery2.First().Username;
                    Session["username"] = myquery2.First().FirstName + " " + myquery2.First().LastName;
                    Response.Redirect("LopHocPhanGV.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Đăng nhập thất bại mời thử lại')</script>");
                }
            }
        }
    }
}
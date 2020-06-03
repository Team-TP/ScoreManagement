using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ScoreM
{
    public partial class PasswordGV : System.Web.UI.Page
    {
        private ScoreManageDataContext db;
        protected void Page_Load(object sender, EventArgs e)
        {       
        }

        protected void btnChange_Click(object sender, EventArgs e)
        {
            db = new ScoreManageDataContext();
            var query = from i in db.Accounts
                        join j in db.Lecturers on i.Username equals j.ID
                        where i.Username == "LEC02" && i.Password == txtoldPass.Text
                        select i;
            if(query.Any())
            {
                if (txtnewPass.Text == txtrePass.Text)
                {
                    Account myAcc = query.First();
                    myAcc.Password = txtnewPass.Text;
                    db.SubmitChanges();
                    Response.Write("<script>alert('Đổi mật khẩu thành công'); window.location.href = 'PasswordGV.aspx'</script>");
                    //Response.Redirect("PasswordGv.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Mật khẩu nhập lại không đúng');</script>");
                }
            }
            else 
            {
                Response.Write("<script>alert('Mật khẩu cũ sai!');</script>");
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ScoreM
{
    public partial class PasswordSV : System.Web.UI.Page
    {
        private ScoreManageDataContext db;
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = Session["username"].ToString();
            accname.Text = username;
        }

        protected void btnChange_Click(object sender, EventArgs e)
        {
            string id = Session["id"].ToString();
            db = new ScoreManageDataContext();
            var query = from i in db.Accounts                      
                        where i.Username == id && i.Password == txtPass.Text
                        select i;
            if(query.Any())
            {
                if (txtnewPass.Text == txtrePass.Text)
                {
                    Account myAcc = query.First();
                    myAcc.Password = txtnewPass.Text;
                    db.SubmitChanges();
                    Response.Write("<script>alert('Đổi mật khẩu thành công'); window.location.href = 'PasswordSV.aspx'</script>");
                    //Response.Redirect("PasswordGv.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Mật khẩu nhập lại không đúng');</script>");
                }
            }
            else 
            {
                Response.Write("<script>alert('Mật khẩu cũ sai!'); window.location.href = 'PasswordSV.aspx'</script>");
            }
        }
    }
}
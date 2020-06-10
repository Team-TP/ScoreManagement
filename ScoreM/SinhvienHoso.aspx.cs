using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ScoreM
{
    public partial class SinhvienHoso : System.Web.UI.Page
    {
        private ScoreManageDataContext db;
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Session["id"].ToString();
            string username = Session["username"].ToString();
            accname.Text = username;
            db = new ScoreManageDataContext();
            if (!IsPostBack)
            {
                var query = from l in db.Students
                            where l.ID == id
                            select new
                            {
                                l.ID,
                                l.FirstName,
                                l.LastName,
                                l.DateOfBirth,
                                l.Gender,
                                l.Address,
                                l.Phone
                            };
                txtMasv.Text = query.First().ID;
                txtFname.Text = query.First().FirstName;
                txtLname.Text = query.First().LastName;
                txtNgaysinh.Text = Convert.ToString(query.First().DateOfBirth);
                //txtGioitinh.SelectedValue.ToString();
                string Gioitinh = Convert.ToString(query.First().Gender);
                if(Gioitinh == "True")
                {
                    txtGioitinh.Text = "Nam";
                }
                else
                {
                    txtGioitinh.Text = "Nữ";
                }
                txtDiachi.Text = query.First().Address;
                txtDienthoai.Text = query.First().Phone;
                accname.Text = username;
            }
        }
        protected void btnCapnhat_Click(object sender, EventArgs e)
        {
            string id = Session["id"].ToString();
            db = new ScoreManageDataContext();
            var query = from l in db.Students
                        where l.ID == id
                        select l;
            Student myStu = query.First();
            myStu.FirstName = txtFname.Text;
            myStu.LastName = txtLname.Text;
            //myStu.Gender = txtGioitinh.SelectedValue.ToString();
            myStu.DateOfBirth = DateTime.Parse(txtNgaysinh.Text);
            if (txtGioitinh.Text == "Nam")
            {
                myStu.Gender = true;
            }
            else
            {
                myStu.Gender = false;
            }
            myStu.Address = txtDiachi.Text;
            myStu.Phone = txtDienthoai.Text;

            db.SubmitChanges();
            Response.Write("<script>alert('Cập nhật thành công'); window.location.href = 'SVHome.aspx';</script>");

        }

    }
}

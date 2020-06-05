using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ScoreM
{
    public partial class LopHocPhanGV : System.Web.UI.Page
    {
        private ScoreManageDataContext db;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                db = new ScoreManageDataContext();
                string id = Session["id"].ToString();
                string username = Session["username"].ToString();
                accname.Text = username;
                var query = from l in db.Lecturers
                            join en in db.Enrollments on l.ID equals en.IDLecturer
                            join sc in db.Scores on en.ID equals sc.IDEnrollment
                            join st in db.Students on sc.IDStudent equals st.ID
                            join t in db.Terms on en.IDTerm equals t.ID
                            where l.ID == id
                            select new { t.ID, t.Name };
                Dlist.DataSource = query.Distinct();
                Dlist.DataValueField = "ID";
                Dlist.DataTextField = "Name";
                Dlist.DataBind();
                Dlist_SelectedIndexChanged(sender, e);
            }
        }
        protected void Dlist_SelectedIndexChanged(object sender, EventArgs e)
        {
            string id = Session["id"].ToString();
            string username = Session["username"].ToString();
            string IDT = Dlist.SelectedValue.ToString();
            db = new ScoreManageDataContext();
            var query = from l in db.Lecturers
                        join en in db.Enrollments on l.ID equals en.IDLecturer
                        join sc in db.Scores on en.ID equals sc.IDEnrollment
                        join st in db.Students on sc.IDStudent equals st.ID
                        join t in db.Terms on en.IDTerm equals t.ID
                        where l.ID == id && t.ID == IDT
                        select new
                        {
                            st.FirstName,
                            st.LastName,
                            st.ID,
                            st.DateOfBirth
                        };
            GridView1.DataSource = query;
            GridView1.DataBind();

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int row = Convert.ToInt32(e.CommandArgument);
            if(e.CommandName == "btnXoa")
            {
                DeleteModal.Visible = true;
                svName.Text = GridView1.Rows[row].Cells[1].Text +" "+ GridView1.Rows[row].Cells[2].Text;
                svID.Text = GridView1.Rows[row].Cells[3].Text;
            }
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            db = new ScoreManageDataContext();
            
            DeleteModal.Visible = false;
            Response.Write("<script>alert('Xóa thành công'); window.location.href='LopHocPhanGV.aspx';</script>");
            
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            DeleteModal.Visible = false;
        }
    }
}
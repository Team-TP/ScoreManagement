using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ScoreM
{
    public partial class QLDiemGV : System.Web.UI.Page
    {
        private ScoreManageDataContext db;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                db = new ScoreManageDataContext();
                //string id = Session["id"].ToString();
                //string username = Session["username"].ToString();
                //accName.Text = "Cao thanh sơn";
                var query = from l in db.Lecturers
                            join en in db.Enrollments on l.ID equals en.IDLecturer
                            join sc in db.Scores on en.ID equals sc.IDEnrollment
                            join st in db.Students on sc.IDStudent equals st.ID
                            join t in db.Terms on en.IDTerm equals t.ID
                            where l.ID == "LEC01"
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
            string IDT = Dlist.SelectedValue.ToString();
            db = new ScoreManageDataContext();
            var query = from l in db.Lecturers
                        join en in db.Enrollments on l.ID equals en.IDLecturer
                        join sc in db.Scores on en.ID equals sc.IDEnrollment
                        join st in db.Students on sc.IDStudent equals st.ID
                        join t in db.Terms on en.IDTerm equals t.ID
                        where l.ID == "LEC01" && t.ID == IDT
                        select new { st.FirstName, st.LastName, st.ID, sc.Diligent, sc.Pratice, sc.MidTerm, sc.Exam };
            GridView1.DataSource = query;
            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int row = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "btnSua")
            {
                EditModal.Visible = true;
                txtHodem.Text = GridView1.Rows[row].Cells[0].Text;
                txtten.Text = GridView1.Rows[row].Cells[1].Text;
                txtmasv.Text = GridView1.Rows[row].Cells[2].Text;
                txtcc.Text = GridView1.Rows[row].Cells[3].Text;
                txtgk.Text = GridView1.Rows[row].Cells[4].Text;
                txtth.Text = GridView1.Rows[row].Cells[5].Text;
                txtthi.Text = GridView1.Rows[row].Cells[6].Text;
                
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            db = new ScoreManageDataContext();
            string IDT = Dlist.SelectedValue.ToString();
            var query = from l in db.Lecturers
                        join en in db.Enrollments on l.ID equals en.IDLecturer
                        join sc in db.Scores on en.ID equals sc.IDEnrollment
                        join st in db.Students on sc.IDStudent equals st.ID
                        join t in db.Terms on en.IDTerm equals t.ID
                        where l.ID == "LEC01" && t.ID == IDT && st.ID == txtmasv.Text
                        select sc;
            Score myscore = query.FirstOrDefault();
            myscore.Diligent = Convert.ToDouble(txtcc.Text);
            myscore.MidTerm = Convert.ToDouble(txtgk.Text);
            myscore.Pratice = Convert.ToDouble(txtth.Text);
            myscore.Exam = Convert.ToDouble(txtthi.Text);
            db.SubmitChanges();
            EditModal.Visible = false;
            Response.Redirect("QLDiemGV.aspx");
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            EditModal.Visible = false;
        }
    }
}
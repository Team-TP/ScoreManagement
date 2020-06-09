using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ScoreM
{
    public partial class SVDiemTonghop : System.Web.UI.Page
    {
        private ScoreManageDataContext db;
        protected void Page_Load(object sender, EventArgs e)
        {          

            if (!IsPostBack)
            {
                db = new ScoreManageDataContext();
                string id = Session["id"].ToString();
                string user = Session["username"].ToString();
                accname.Text = user;
                
                var namhoc = from i in db.SchoolTerms
                             select i.SchoolYear;
                DropNamhoc.DataSource = namhoc.Distinct();
                //DropNamhoc.DataTextField = "SchoolYear";
                DropNamhoc.DataBind();             

                var query = from en in db.Enrollments
                            join sc in db.Scores on en.ID equals sc.IDEnrollment
                            join st in db.Students on sc.IDStudent equals st.ID
                            join t in db.Terms on en.IDTerm equals t.ID
                            where st.ID == id
                            select new
                            {
                                t.Name,
                                sc.Diligent,
                                sc.MidTerm,
                                sc.Pratice,
                                sc.Exam,
                                Tongket = (((double)sc.Diligent * 0.1 + (double)sc.MidTerm * 0.2 + ((double)sc.Exam * 45 + (double)sc.Pratice * 15)) / 60).ToString().Substring(0, 4),  
                                Diemhe4 = (((((double)sc.Diligent * 0.1 + (double)sc.MidTerm * 0.2 + ((double)sc.Exam * 45 + (double)sc.Pratice * 15)) / 60)*4)/10).ToString().Substring(0,4)
                            };
                
                GridView1.DataSource = query;
                GridView1.DataBind();
            }
        }

        protected void btnXem_Click(object sender, EventArgs e)
        {
            db = new ScoreManageDataContext();
            string id = Session["id"].ToString();
            var namhoc = DropNamhoc.SelectedValue.ToString();
            var hocky = Convert.ToInt32(Drophocky.SelectedValue.ToString());
            var monhoc = DropMonhoc.SelectedValue.ToString();

            var query = from en in db.Enrollments
                        join sc in db.Scores on en.ID equals sc.IDEnrollment
                        join sct in db.SchoolTerms on en.IdSchoolTerm equals sct.ID
                        join st in db.Students on sc.IDStudent equals st.ID
                        join t in db.Terms on en.IDTerm equals t.ID
                        where st.ID == id && sct.SchoolYear == namhoc && t.Name == monhoc
                        select new
                        {
                            t.Name,
                            sc.Diligent,
                            sc.MidTerm,
                            sc.Pratice,
                            sc.Exam,
                            Tongket = (((double)sc.Diligent * 0.1 + (double)sc.MidTerm * 0.2 + ((double)sc.Exam * 45 + (double)sc.Pratice * 15)) / 60).ToString().Substring(0, 4),
                            Diemhe4 = (((((double)sc.Diligent * 0.1 + (double)sc.MidTerm * 0.2 + ((double)sc.Exam * 45 + (double)sc.Pratice * 15)) / 60) * 4) / 10).ToString().Substring(0, 4)
                        };
            GridView1.DataSource = query;
            GridView1.DataBind();
        }

        protected void DropNamhoc_SelectedIndexChanged(object sender, EventArgs e)
        {
            db = new ScoreManageDataContext();
            string id = Session["id"].ToString();
            var monhoc = from en in db.Enrollments
                         join sc in db.Scores on en.ID equals sc.IDEnrollment
                         join sct in db.SchoolTerms on en.IdSchoolTerm equals sct.ID
                         join st in db.Students on sc.IDStudent equals st.ID
                         join t in db.Terms on en.IDTerm equals t.ID
                         where st.ID == id && sct.SchoolYear == DropNamhoc.SelectedValue.ToString()
                         select new { t.Name };
            DropMonhoc.DataSource = monhoc;
            DropMonhoc.DataTextField = "Name";
            DropMonhoc.DataBind();
            Page_Load(sender, e);
        }
    }
}
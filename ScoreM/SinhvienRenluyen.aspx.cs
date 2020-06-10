using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ScoreM
{
    public partial class SinhvienProf : System.Web.UI.Page
    {
        private ScoreManageDataContext db;
        protected void Page_Load(object sender, EventArgs e)
        {
            db = new ScoreManageDataContext();
            string id = Session["id"].ToString();
            string user = Session["username"].ToString();
            accname.Text = user;

            var query = from st in db.Students
                        join c in db.Conducts on st.ID equals c.IDStudent
                        join sct in db.SchoolTerms on c.IDSchoolTerm equals sct.ID
                        where st.ID == id
                        select new { sct.SchoolYear, sct.Semester, c.ScoreOfConduct, c.Classification };           
            GridView1.DataSource = query;
            GridView1.DataBind();
        }
    }
}
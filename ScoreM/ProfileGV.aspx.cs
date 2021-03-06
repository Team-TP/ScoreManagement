﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ScoreM
{
    public partial class ProfileGV : System.Web.UI.Page
    {
        private ScoreManageDataContext db;
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Session["id"].ToString();
            string username = Session["username"].ToString();

            db = new ScoreManageDataContext();
            if (!IsPostBack)
            {

                var query = from l in db.Lecturers
                            join s in db.Specializes on l.IdSpecialize equals s.ID
                            join m in db.Majors on s.IdMajors equals m.ID
                            join d in db.Departments on m.IDDepartment equals d.ID
                            where l.ID == id
                            select new
                            {
                                l.ID,
                                l.FirstName,
                                l.LastName,
                                l.Degree,
                                l.Position,
                                l.Phone,
                                l.Email,
                                s.SpecializeName,
                                mName = m.Name,
                                dName = d.Name,
                            };
                txtMagv.Text = query.First().ID;
                txtFname.Text = query.First().FirstName;
                txtLname.Text = query.First().LastName;
                txtTrinhdo.Text = query.First().Degree;
                txtChucvu.Text = query.First().Position;
                txtDienthoai.Text = query.First().Phone;
                txtEmail.Text = query.First().Email;
                txtChuyennganh.Text = query.First().SpecializeName;
                txtNganh.Text = query.First().mName;
                txtKhoa.Text = query.First().dName;
                accName.Text = username;
            }
        }

        protected void btnCapnhat_Click(object sender, EventArgs e)
        {
            string id = Session["id"].ToString();
            db = new ScoreManageDataContext();
            var query = from l in db.Lecturers
                        join s in db.Specializes on l.IdSpecialize equals s.ID
                        join m in db.Majors on s.IdMajors equals m.ID
                        join d in db.Departments on m.IDDepartment equals d.ID
                        where l.ID == id
                        select l;
            Lecturer myLec = query.First();
            myLec.FirstName = txtFname.Text;
            myLec.LastName = txtLname.Text;
            myLec.Degree = txtTrinhdo.Text;
            myLec.Position = txtChucvu.Text;
            myLec.Phone = txtDienthoai.Text;
            myLec.Email = txtEmail.Text;
            db.SubmitChanges();
            Response.Write("<script>alert('Cập nhật thành công'); window.location.href = 'ProfileGV.aspx';</script>");
            
        }
    }
}
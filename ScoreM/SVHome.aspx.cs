﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ScoreM
{
    public partial class SVHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = Session["username"].ToString();
            accname.Text = username;
        }
    }
}
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETSample01
{
    public partial class pRequest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string s = Request.QueryString["s"];
            Response.Write(s);
            Response.Write(Request.Path+ "<BR>");
            Response.Write(Request.PhysicalPath + "<BR>");
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            Response.Write(Request.Form["txt"]);
            


        }
    }
}
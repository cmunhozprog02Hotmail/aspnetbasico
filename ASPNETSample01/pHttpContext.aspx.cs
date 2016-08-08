﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETSample01
{
    public partial class pHttpContext : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            StringBuilder sb = new StringBuilder();
            Exception[] ex = System.Web.HttpContext.Current.AllErrors;
            sb.Append(HttpContext.Current.Server.MachineName);
            Response.Write(sb);
             
        }

        protected void btnOk_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Session["VALOR"]=txtValor.Text;
            Response.Write(HttpContext.Current.Session["VALOR"]);

        }
    }
}
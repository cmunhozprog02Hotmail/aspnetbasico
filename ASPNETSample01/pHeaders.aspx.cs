using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETSample01
{
    public partial class pHeaders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)

        {
            Response.Write("<BR> Headers <BR>");
            foreach (string header in Request.Headers)
            {
                Response.Write(header + " - " + Request.Headers[header] +  "<BR>");
            }

            Response.Write("<BR> Server Variables <BR>");
            foreach (string sv in Request.ServerVariables)
            {
                Response.Write(sv + " - " + Request.ServerVariables[sv] + "<BR>");
            }
        }
    }
}
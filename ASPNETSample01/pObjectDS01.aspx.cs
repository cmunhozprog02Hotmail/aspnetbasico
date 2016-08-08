using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETSample01
{
    public partial class pObjectDS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_OnClick(object sender, EventArgs e)
        {
            ObjectDataSource1.DataBind();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETSample01
{
    public partial class pLinqDS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            LinqDataSource1.DataBind();
        }

        protected void LinqDataSource1_Load(object sender, EventArgs e)
        {
            throw new NotImplementedException();
        }
    }
}
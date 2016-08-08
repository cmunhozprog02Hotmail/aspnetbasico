using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETSample01
{
    public partial class pObjectDSa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            
            ODS01.DataBind();
        }

        protected void GridView1_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            fvPessoas.ChangeMode(FormViewMode.Edit);
            fvPessoas.DataBind();
        }

        protected void fvPessoas_OnItemUpdated(object sender, FormViewUpdatedEventArgs e)
        {
            gvPessoa.DataBind();
        }

        protected void fvPessoas_OnItemInserted(object sender, FormViewInsertedEventArgs e)
        {
            gvPessoa.DataBind();
        }
    }
}
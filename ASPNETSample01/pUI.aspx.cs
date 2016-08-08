using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Linq.Expressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETSample01
{
    public partial class pUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ListItem li = new ListItem("Amarelo", "4");
                ddlCores.Items.Add(li);
                Literal1.Text = hdValor.Value;
            }
        }

        protected void btnComponente_Click(object sender, EventArgs e)
        {
            txtCompomente.Enabled = false;
            //btnComponente.Enabled = false;
            ((Button) sender).Enabled = false;
        }

        protected void txtCompomente_TextChanged(object sender, EventArgs e)
        {
            lblMsg.Text = txtCompomente.Text;
        }

        protected void ckbConfirma_CheckedChanged(object sender, EventArgs e)
        {
            lblCkb.Text = ckbConfirma.Checked.ToString();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

            lblCores.Text = ddlCores.SelectedItem.Value + " - " +
                ddlCores.SelectedItem.Text;
            if (ddlCores.SelectedItem.Value == "1")
            {
                lblCores.BackColor = Color.Red;
            }else if (ddlCores.SelectedItem.Value == "2")
            {
                lblCores.BackColor = Color.Blue;
            }
            else if (ddlCores.SelectedItem.Value == "3")
            {
                lblCores.BackColor = Color.Green;
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtDate.Text = Calendar1.SelectedDate.ToString("dd/MM/yyyy"); 
        }

        protected void Calendar1_VisibleMonthChanged(object sender, MonthChangedEventArgs e)
        {
            txtDate.Text = String.Empty;
        }
           
        }
    
}
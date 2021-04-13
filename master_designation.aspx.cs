using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EventManager
{
    public partial class master_designation : System.Web.UI.Page
    {
        DMLHelper dml = new DMLHelper();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            System.Data.DataTable dt = dml.filldatatable(" insert into designation(desig_sl,desig_name,active) " +
               "values('" + 2 + "  ' ,' " + TextBox1.Text + " ',' " + DropDownList1.Text + "' )  ");
        }

        protected void reset_Click(object sender, EventArgs e)
        {

            TextBox1.Text = string.Empty;
            TextBox1.Focus();

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
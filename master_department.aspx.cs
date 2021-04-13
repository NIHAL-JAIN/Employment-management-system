using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace EventManager
{
    public partial class event_master : System.Web.UI.Page
    {
        DMLHelper dml = new DMLHelper();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            System.Data.DataTable dt = dml.filldatatable(" insert into department(dept_sl,dept_name,active) " +
                "values('" +5+"  ' ,' " + TextBox1.Text + " ',' " + DropDownList1.Text + "' )  ");

         

        }

        protected void reset_Click(object sender, EventArgs e)
        {
            TextBox1.Text = string.Empty;
            TextBox1.Focus();
            


        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }
    }
}
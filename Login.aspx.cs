using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace EventManager
{

    public partial class Login : System.Web.UI.Page
    {

        DMLHelper dml = new DMLHelper();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        { 
            System.Data.DataTable dt = dml.filldatatable("select * from employee where emp_id = '" + txtname.Text + "' and emp_pass = '" + txtpass.Text + "' ");
            if (dt.Rows.Count != 0)
            {
                Session["User"] = txtname.Text;
                Response.Redirect("~/dashboard.aspx");
            }
            else
            {
                Response.Write("Your user name and password is wrong");
            }

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin1.aspx");
        }
    }
}
    
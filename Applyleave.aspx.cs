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
    public partial class Applyleave : System.Web.UI.Page
    {
        DMLHelper dml = new DMLHelper();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            System.Data.DataTable dt = dml.filldatatable(" insert into applyleavefinal(emp_id,emp_email,leave_category,start_date,end_date,reason) " +
               "values('" + TextBox4.Text + "','" + TextBox1.Text + "','" + DropDownList1.Text + "','" + Label1.Text + "','" +Label2.Text + "',' " + TextBox3.Text +"')");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label1.Text = string.Empty;
            Label2.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox4.Text = string.Empty;
            TextBox1.Text = string.Empty;
            Label1.Focus();

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            Label1.Text = Calendar1.SelectedDate.Date.ToString("yyyy-MM-dd");
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            Label2.Text = Calendar1.SelectedDate.Date.ToString("yyyy-MM-dd");
        }
    }
}
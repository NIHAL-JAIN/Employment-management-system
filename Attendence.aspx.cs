using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace EventManager
{
    public partial class Attendence : System.Web.UI.Page
    {
        DMLHelper dml = new DMLHelper();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                Back.Visible = false;
                DataTable dt = dml.filldatatable("select * from attendence_status where emp_id='" + Session["User"].ToString() + "' and attendence_date='" + DateTime.Now.Date.ToShortDateString() + "'");
                if (dt.Rows.Count > 0)
                {
                    if (dt.Rows[0].ItemArray[3].ToString() == "")
                    {
                        Button5.Enabled = false;
                        Label1.Enabled = true;
                        Button2.Enabled = true;
                       
                    }
                    else
                    {
                        Button5.Enabled = false;
                        Button2.Enabled = false;
                        Label1.Enabled= true;
                        Label2.Enabled = true;

                    }
                }
                else
                {
                    Button5.Enabled = true;
                    Button2.Enabled = false;
                    Label1.Enabled = true;
                }

            }
        }
        

        

        protected void Button5_Click(object sender, EventArgs e)
        {
            if (dml.ExecuteDML("insert into attendence_status(emp_id,attendence_date,login_time) values('" + Session["User"].ToString() + "','" + DateTime.Now.Date.ToString() + "','" + DateTime.Now.ToShortTimeString() + "')") > 0)
            {
                Label1.Text = DateTime.Now.ToShortTimeString();
                Button5.Enabled = false;
                Button2.Enabled = false;
                Back.Visible = true;
                Label1.Enabled = true;

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (dml.ExecuteDML("update attendence_status set logout_time='" + DateTime.Now.ToShortTimeString() + "' where emp_id='" + Session["User"].ToString() + "' and attendence_date='" + DateTime.Now.Date.ToString() + "'") > 0)
            {
                Label2.Text = DateTime.Now.ToShortTimeString();
                Button5.Enabled = false;
                Button2.Enabled = false;
                Back.Visible = true;
                Label2.Enabled = true;
            }
        }
        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("dashboard.aspx");
            Label1.Enabled = true;
        }
    }
}
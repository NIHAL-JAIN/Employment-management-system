using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace EventManager
{
    public partial class test1 : System.Web.UI.Page
    {
        DMLHelper dml = new DMLHelper();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Button3.Visible = false;
                DataTable dt = dml.filldatatable("select * from attendence_status where emp_id='" + Session["User"].ToString() + "' and attendence_date='" + DateTime.Now.Date.ToShortDateString () +"'");
                if (dt.Rows.Count > 0)
                {
                    if (dt.Rows[0].ItemArray[3].ToString() == "")
                    {
                        Button1.Enabled = false;
                        Button2.Enabled = true;
                    }
                    else
                    {
                        Button1.Enabled = false;
                        Button2.Enabled = false;

                    }
                }
                else
                {
                    Button1.Enabled = true;
                    Button2.Enabled = false;
                }


            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (dml.ExecuteDML("insert into attendence_status(emp_id,attendence_date,login_time) values('" + Session["User"].ToString() + "','" + DateTime.Now.Date.ToString() + "','" + DateTime.Now.ToShortTimeString() + "')") > 0)
            {
                Label1.Text = "Check In Over Back to Home page ";
                Button1.Enabled = false;
                Button2.Enabled = false;
                Button3.Visible = true;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (dml.ExecuteDML("update attendence_status set logout_time='" + DateTime.Now.ToShortTimeString() + "' where emp_id='" + Session["User"].ToString() + "' and attendence_date='" + DateTime.Now.Date.ToString() + "'") > 0)
            {
                Label1.Text = "Check Out Over Back to Home page ";
                Button1.Enabled = false;
                Button2.Enabled = false;
                Button3.Visible = true;
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("dashboard.aspx");
        }
    }
}
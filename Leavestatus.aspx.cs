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
    public partial class Leavestatus : System.Web.UI.Page
    {
        DataRow dr;
        DMLHelper dml = new DMLHelper();
        protected void Page_Load(object sender, EventArgs e)
        {


            if (!IsPostBack)
            {
                GridView1.Visible = true;
                DataTable dt = dml.filldatatable("select * from applyleavefinal where emp_id='" + Session["User"].ToString() + "'");
                

                GridView1.DataSource = dt;
                GridView1.DataBind();
                

            }
            else
            {
                Label2.Text = "Not Approved";
            }
        }

       
    }
}

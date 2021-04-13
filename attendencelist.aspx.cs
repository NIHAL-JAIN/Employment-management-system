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
    public partial class attendencelist : System.Web.UI.Page
    {
        DMLHelper dml = new DMLHelper();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                SqlConnection sc = new SqlConnection(@"Data Source=DESKTOP-CKK6JR1;Initial Catalog=Tmu_login;Integrated Security=True");
                sc.Open();
              


                SqlDataAdapter sd = new SqlDataAdapter("select emp_id from employee ", sc);

                DataSet ds = new DataSet();
                sd.Fill(ds, "employee");
                DropDownList1.SelectedIndex = 0;
                sc.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection sc = new SqlConnection(@"Data Source=DESKTOP-CKK6JR1;Initial Catalog=Tmu_login;Integrated Security=True");
            sc.Open();
            var test = DropDownList1.SelectedValue;
            var test1 = TextBox1.ToString();
            var test2 = TextBox2.ToString();
            string selectedValue = (this.DropDownList1.SelectedValue);
            string selectedValue1 = (this.TextBox1.Text);
            string selectedValue2 = (this.TextBox2.Text);
            SqlDataAdapter sd = new SqlDataAdapter("select * from attendencestatus where emp_id =" + "'" + selectedValue+  "'", sc);
            //           
            DataSet ds = new DataSet();
            sd.Fill(ds, "attendencestatus");
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
            sc.Close();
            DropDownList1.DataTextField = "emp_id";
            DropDownList1.DataValueField = "emp_id";
        }

       
    }
}
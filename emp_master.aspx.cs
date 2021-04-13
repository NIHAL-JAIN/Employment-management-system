using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace EventManager
{
    public partial class emp_master : System.Web.UI.Page
    {
        DMLHelper dml = new DMLHelper();
        protected void Page_Load(object sender, EventArgs e)
        {
           
 
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            System.Data.DataTable dt = dml.filldatatable(" insert into employee(emp_sl,emp_id,emp_name,emp_add,emp_age,emp_doj,emp_pass,dept_name,desig_name,emp_level)" +
               "values('" + Convert.ToInt32(TextBox5.Text) + "  ' ,' " + TextBox1.Text + " ','" + TextBox2.Text + "  ','" + TextBox3.Text + " ','" + Convert.ToInt32(TextBox6.Text) + "  ','" + Convert.ToDateTime(TextBox4.Text) + "  ','" + TextBox7.Text + " ',' " + DropDownList1.Text + "'," +
               "' " + DropDownList2.Text + "','" + TextBox8.Text +  "')");
        }

        protected void reset_Click(object sender, EventArgs e)
        {
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox4.Text = string.Empty;
            TextBox5.Text = string.Empty;
            TextBox6.Text = string.Empty;
            TextBox7.Text = string.Empty;
            TextBox8.Text = string.Empty;
            
            TextBox5.Focus();
        }

        protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            
            DropDownList1.Items.Clear();
            DropDownList1.Items.Add("");
            System.Data.DataTable dt = dml.filldatatable("Select dept_sl from department where dept_name='" + DropDownList1.Text + "'");
            for (int i = 0; i <=dt.Rows.Count - 1; i++)
            {
                DropDownList1.Items.Add((ListItem)dt.Rows[i]["dept_name"]);
            }
        }

        protected void DropDownList2_SelectedIndexChanged1(object sender, EventArgs e)
        {
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add(DropDownList2.Text);
            System.Data.DataTable dt = dml.filldatatable("Select desig_sl from designation where desig_name='" + DropDownList2.Text + "'");
            for (int i = 0; i <=dt.Rows.Count - 1; i++)
            {
                DropDownList2.Items.Add((ListItem)dt.Rows[i]["desig_name"]);
            }
        }
    }
    }

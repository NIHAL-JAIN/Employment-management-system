using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EventManager
{
    public partial class SignUp : System.Web.UI.Page
    {
        DMLHelper dml = new DMLHelper();
        protected void Page_Load(object sender, EventArgs e)
        {
           
           
        }
        protected void Btn_Signup(object sender, EventArgs e)
        {
            if(txtuser.Text=="")
            {
                Response.Write("Username not be blank");
            }
            if(txtemail.Text=="")
            {
                Response.Write("textmail cannnot be blank");
            }
            if(txtpass.Text=="")
            {
                Response.Write("txtpas cannot be blank");
            }

            var i = dml.ExecuteDML("INSERT INTO LOGIN(EMAIL,PASSWORD,username) VALUES('" + txtemail.Text + "','" + txtpass.Text + "','" + txtuser.Text + "')");
            if(i !=0)
            {
                
                Response.Redirect("Login.aspx");
            }
            else
            {
                Response.Write("Something is wrong!!!");
            }
        }

        protected void btnsignup_Click(object sender, EventArgs e)
        {

        }
    }
     
}
        
      
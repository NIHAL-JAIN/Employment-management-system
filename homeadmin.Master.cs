using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EventManager
{
    public partial class homeadmin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["User"] != null)
            {
                lbluser.Text = Session["User"].ToString();
                lbluser1.Text = Session["User"].ToString();
                lbluser2.Text = Session["User"].ToString();
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.Text;

namespace EventManager
{
    public partial class applyleavelist : System.Web.UI.Page
    {
        DMLHelper dml = new DMLHelper();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void updaterow(String empid, String Approved)
        {
            System.Data.DataTable dt = dml.filldatatable(" Update applyleavefinal set Approval ='" + Approved + "' where emp_id='" + empid + "'");

            Label1.Text = "Approved";
            GridView1.DataBind();


        }
         private void updaterow1(String empid, String Denied)
        {
            System.Data.DataTable dt = dml.filldatatable(" Update applyleavefinal set Approval ='" + Denied + "' where emp_id='" + empid + "'");
            
            Label1.Text = "Denied";
            GridView1.DataBind();


        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Approved")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = GridView1.Rows[rowIndex];

                   
                    string empid = (row.Cells[0].Text);
                    string emp_email = (row.Cells[1].Text);
                    string start_date = (row.Cells[3].Text);
                    string end_date = (row.Cells[4].Text);


                updaterow(empid, "Approved");
                    
                    try
                    {

                        MailMessage msgobj = new MailMessage();
                        msgobj.To.Add(emp_email);
                        msgobj.From = new MailAddress("nihal.tca1609071@tmu.ac.in");
                        msgobj.Subject = "Regarding leave Approval";
                        msgobj.Body = "Hello, Your Leave Reqest is  Approved from Admin for date " + start_date + " To " + end_date + "Thankyou";

                    SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
                        client.EnableSsl = true;
                        client.UseDefaultCredentials = true;
                        client.Credentials = new NetworkCredential("nihal.tca1609071@tmu.ac.in", "Nihal@123456");
                        client.Port = 587;

                        client.Send(msgobj);
                        Response.Write("Message has been send successfully");
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('message has been send successfully');", true);
                    }

                    catch (Exception ex)
                    {
                        Response.Write("could not send mail" + ex.Message);
                    }
                }
            else if (e.CommandName == "Denied")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = GridView1.Rows[rowIndex];


                string empid = (row.Cells[0].Text);
                string emp_email = (row.Cells[1].Text);

                updaterow1(empid, "Denied");

                try
                {

                    MailMessage msgobj = new MailMessage();
                    msgobj.To.Add(emp_email);
                    msgobj.From = new MailAddress("nihal.tca1609071@tmu.ac.in");
                    msgobj.Subject = "Regarding leave Approval";
                    msgobj.Body = "Hello, Your Leave Reqest is  Not Approved from Admin ";

                    SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
                    client.EnableSsl = true;
                    client.UseDefaultCredentials = true;
                    client.Credentials = new NetworkCredential("nihal.tca1609071@tmu.ac.in", "Nihal@123456");
                    client.Port = 587;

                    client.Send(msgobj);
                    Response.Write("Message has been send successfully");
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('message has been send successfully');", true);
                }

                catch (Exception ex)
                {
                    Response.Write("could not send mail" + ex.Message);
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
 }



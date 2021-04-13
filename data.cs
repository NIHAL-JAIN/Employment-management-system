using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace EventManager
{
    public class DMLHelper
    {
        public string connectionstring = ConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        public SqlConnection conn()
        {
            SqlConnection con = new SqlConnection(connectionstring);
            return con;
        }
        public DataTable filldatatable(string query)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter asd = new SqlDataAdapter(query, conn());
            asd.Fill(dt);
            return dt;

        }

        internal object ExecuteDML(object p)
        {
            throw new NotImplementedException();
        }

        public int ExecuteDML(string query)
        {
            using (SqlConnection con = new SqlConnection(connectionstring))
            {
                try
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.ExecuteNonQuery();
                    return 1;
                }
                catch
                {
                    return 0;
                }
            }
        }
    }
   
}
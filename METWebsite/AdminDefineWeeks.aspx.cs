using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace METWebsite
{
    public partial class AdminDefineWeeks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void addWeek(object sender, EventArgs e)
        {
            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            //create new sqlconnection and connection to database by using connection string from web.config file  
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("insertWeek", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            String start = startDate.Value.ToString();
            String end = endDate.Value.ToString();

            cmd.Parameters.Add(new SqlParameter("@startDate", start));
            cmd.Parameters.Add(new SqlParameter("@endDate", end));

            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}
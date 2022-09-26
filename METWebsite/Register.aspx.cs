using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace METWebsite
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            ////create new sqlconnection and connection to database by using connection string from web.config file  
            //SqlConnection con = new SqlConnection(strcon);
            //con.Open();
            //int InstructorID = (int)Session["id"];
            //SqlCommand getInstructornameCmd = new SqlCommand("select name from Instructors where id = @InstId;", con);
            //getInstructornameCmd.Parameters.AddWithValue("InstId", InstructorID);
            //SqlDataReader reader = getInstructornameCmd.ExecuteReader();
            //String InstName = "Welcome!";
            //if (reader.Read())
            //    InstName = "Welcome " + reader.GetValue(0).ToString() + ", Let’s Set up your profile!!";
            //reader.Close();
            //Welcome_label.InnerHtml = InstName;

        }
        protected void logOut_click(object sender, EventArgs e)
        {
            Session["id"] = null;
            Response.Redirect("Login.aspx");


        }
    }
}
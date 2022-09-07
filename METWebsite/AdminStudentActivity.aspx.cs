
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;


namespace METWebsite
{
   
    public partial class AdminStudentActivity : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addStudentActivity(object sender, EventArgs e)
        {
            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            //create new sqlconnection and connection to database by using connection string from web.config file  
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("addStudentActivity", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            String titleClub = title.Value.ToString();
            String typeClub = type.Value.ToString();
            String aboutClub = about.Value.ToString();
            String facebookLinkClub = facebook.Value.ToString();
            String instagramLinkClub = instagram.Value.ToString();

            cmd.Parameters.Add(new SqlParameter("@title", titleClub));
            cmd.Parameters.Add(new SqlParameter("@type", typeClub));
            cmd.Parameters.Add(new SqlParameter("@about", aboutClub));
            cmd.Parameters.Add(new SqlParameter("@facebook", facebookLinkClub));
            cmd.Parameters.Add(new SqlParameter("@instagram", instagramLinkClub));

            if (color1.Style["width"] == "25px"){
                cmd.Parameters.Add(new SqlParameter("@gradient", "linear-gradient(to right,rgba(0, 0, 0, 1),rgba(237, 28, 36, 0.9))"));
            }
            else if (color2.Style["width"] == "25px")
            {
                cmd.Parameters.Add(new SqlParameter("@gradient", "linear-gradient(to left,rgba(22, 160, 93, 1),rgba(79, 141, 245, 1),rgba(22, 160, 93, 1))"));
            }
            else if (color3.Style["width"] == "25px")
            {
                cmd.Parameters.Add(new SqlParameter("@gradient", "linear-gradient(to left,rgba(10, 71, 152, 0.5),rgba(10, 71, 152, 1))"));
            }
            else if (color4.Style["width"] == "25px")
            {
                cmd.Parameters.Add(new SqlParameter("@gradient", "linear-gradient(to right,RGBA(27,51,124,100),RGBA(237,28,36,90))"));
            }
            else if (color5.Style["width"] == "25px")
            {
                cmd.Parameters.Add(new SqlParameter("@gradient", "linear-gradient(to right,rgba(51, 102, 187, 1),rgba(51, 102, 187, 1),rgba(37, 175, 68, 1))"));
            }
            cmd.ExecuteNonQuery();
            con.Close();


            con.Open();
            SqlCommand cmd2 = new SqlCommand("addTrackToStudentActivity", con);
            cmd2.CommandType = System.Data.CommandType.StoredProcedure;

            foreach (HtmlGenericControl c in hidden.Controls)
            {

                if (c.InnerHtml != null)
                {
                    Response.Write(c.InnerHtml);
                    Response.Write(c.Attributes["value"]);
                    cmd2.Parameters.Add(new SqlParameter("@track", c.InnerHtml));
                }
            }
            cmd2.ExecuteNonQuery();
            con.Close();
            
        }
    }

}
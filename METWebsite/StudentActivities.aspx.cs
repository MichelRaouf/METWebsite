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
    public partial class temp6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            //create new sqlconnection and connection to database by using connection string from web.config file  
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("getIcon", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            SqlDataReader reader = cmd.ExecuteReader();
            string id = ""; string icon = "";
            while (reader.Read())
            {
                id = reader.GetValue(0).ToString();
                icon = reader.GetValue(1).ToString();
                var clubDiv = new HtmlGenericControl("div");
                clubDiv.Attributes.Add("class", "clubDiv");
                ImageButton clubIcon = new ImageButton();
                clubIcon.ID = id;
                clubIcon.Attributes.Add("class", "image");
                clubIcon.Attributes.Add("src", icon);
                clubIcon.Attributes.Add("OnClick", "clubProfile");
                clubIcon.Attributes.Add("runat", "server");
                clubIcon.Click += clubProfile;
                clubDiv.Controls.Add(clubIcon);
                studentActivity.Controls.Add(clubDiv);
            }
            con.Close();
        }
        protected void clubProfile(object sender, EventArgs e)
        {
            Session["clubId"] = ((Control)sender).ID;
            Response.Redirect("studentActivityProfile.aspx");
        }
        protected void toLogin(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
        protected void toHome(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
        protected void toCourses(object sender, EventArgs e)
        {
            Response.Redirect("CourseHomePage.aspx");
        }
        protected void toStaff(object sender, EventArgs e)
        {
            Response.Redirect("StaffHomePage.aspx");
        }
        protected void toStudentActiv(object sender, EventArgs e)
        {
            Response.Redirect("StudentActivities.aspx");
        }
        protected void toAlumni(object sender, EventArgs e)
        {
            Response.Redirect("AlumniPage.aspx");
        }
        protected void toAbout(object sender, EventArgs e)
        {
            Response.Redirect("AboutUsPage.aspx");
        }
    }
}
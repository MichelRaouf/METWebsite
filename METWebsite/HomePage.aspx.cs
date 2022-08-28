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
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            //create new sqlconnection and connection to database by using connection string from web.config file  
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from News",con);
            SqlDataReader reader = cmd.ExecuteReader();
            int count = 0;
            while (count<3 && reader.Read())
            {
                String description = reader.GetValue(2).ToString();
                String title = reader.GetValue(1).ToString();
                String url = reader.GetValue(4).ToString();
                var div = new HtmlGenericControl("div");
                var section = new HtmlGenericControl("section");
                section.Attributes.Add("class", "whitebox");
                var label = new HtmlGenericControl("label");
                label.Attributes.Add("class", "newsitemlabel");
                label.InnerHtml = title;
                section.Controls.Add(label);
                var img = new HtmlGenericControl("img");
                img.Attributes.Add("class", "newsimage");
                img.Attributes.Add("description", description);
                img.Attributes.Add("onmouseenter", "ShowHover()");
                img.Attributes.Add("src", url);
                div.Controls.Add(section);
                div.Controls.Add(img);
                newsdiv.Controls.Add(div);
                count++;
            }
           
            con.Close();
        }

        protected void loginButton_Click(object sender, EventArgs e)
        {

        }

        protected void homeButton_Click(object sender, EventArgs e)
        {

        }

        protected void coursesButton_Click(object sender, EventArgs e)
        {

        }

        protected void staffButton_Click(object sender, EventArgs e)
        {

        }

        protected void studentActivitiesButton_Click(object sender, EventArgs e)
        {

        }

        protected void alumniButton_Click(object sender, EventArgs e)
        {

        }

        protected void aboutUsButton_Click(object sender, EventArgs e)
        {

        }

        protected void readMoreButton_Click(object sender, EventArgs e)
        {

        }

        protected void viewCoursesButton_Click(object sender, EventArgs e)
        {

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
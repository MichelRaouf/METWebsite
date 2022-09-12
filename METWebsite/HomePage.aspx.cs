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
    public partial class temp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            //create new sqlconnection and connection to database by using connection string from web.config file  
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from News", con);
            SqlDataReader reader = cmd.ExecuteReader();
            int count = 0;
            while (count < 3 && reader.Read())
            {
                String title = reader.GetValue(1).ToString();
                String description = reader.GetValue(2).ToString();
                String url = reader.GetValue(4).ToString();
                var div = new HtmlGenericControl("div");
                var section = new HtmlGenericControl("section");
                section.Attributes.Add("class", "whiteBox");
                var label = new HtmlGenericControl("label");
                label.Attributes.Add("class", "newsItemLabel");
                label.InnerHtml = title;
                section.Controls.Add(label);
                var img = new HtmlGenericControl("img");
                img.Attributes.Add("class", "newsImage");
                img.Attributes.Add("description", description);
                img.Attributes.Add("onmouseenter", "ShowHover()");
                img.Attributes.Add("src", url);
                div.Controls.Add(section);
                div.Controls.Add(img);

                newsDiv.Controls.Add(div);
                count++;
            }
            count = 0;
            reader.Close();

            SqlCommand cmd2 = new SqlCommand("Select * from Honors", con);
            SqlDataReader reader2 = cmd2.ExecuteReader();
            while (count < 3 && reader2.Read())
            {
                String name = reader2.GetValue(1).ToString();
                String description = reader2.GetValue(2).ToString();
                String url = reader2.GetValue(3).ToString();
                var div = new HtmlGenericControl("div");
                var profimg = new HtmlGenericControl("img");
                profimg.Attributes.Add("class", "alumniImage");
                profimg.Attributes.Add("src", url);
                var div2 = new HtmlGenericControl("div");
                div2.Attributes.Add("class", "alumniinfo");
                var label = new HtmlGenericControl("label");
                label.InnerHtml = name;
                label.Attributes.Add("class", "name");
                var br = new HtmlGenericControl("br");
                var label2 = new HtmlGenericControl("label");
                label2.InnerHtml = description;
                label2.Attributes.Add("class", "description");
                div.Controls.Add(profimg);
                div2.Controls.Add(label);
                div2.Controls.Add(br);
                div2.Controls.Add(label2);
                div.Controls.Add(div2);
                gucianinfodiv.Controls.Add(div);
                var imgdiv = new HtmlGenericControl("div");
                var bar = new HtmlGenericControl("img");
                bar.Attributes.Add("class", "whiteVerBar");
                bar.Attributes.Add("src", "./images/homePageImages/verticalbarwhite.svg");
                imgdiv.Controls.Add(bar);
                if (count != 2)
                {
                    gucianinfodiv.Controls.Add(imgdiv);
                }
                count++;
            }


            con.Close();

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
        protected void readMoreButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("AboutUsPage.aspx");
        }

        protected void viewCoursesButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("CourseHomePage.aspx");
        }

        protected void showMoreButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("AlumniPage.aspx");
        }
    }
}
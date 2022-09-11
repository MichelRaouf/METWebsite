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
    public partial class temp4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            //create new sqlconnection and connection to database by using connection string from web.config file  
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd2 = new SqlCommand("select count(*) from Honors", con);
            int x = (int)cmd2.ExecuteScalar();
            SqlCommand cmd = new SqlCommand("getAllAlumni", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            SqlDataReader reader = cmd.ExecuteReader();
            
            int count = 1;
            while (reader.Read())
            {
                String name = reader.GetValue(0).ToString();
                String description = reader.GetValue(1).ToString();
                var div = new HtmlGenericControl("div");
                div.Attributes.Add("class", "honorsProfile");
                var profimg = new HtmlGenericControl("img");
                profimg.Attributes.Add("class", "img");
                profimg.Attributes.Add("src", "images/alumniPageImages/image 6.png");
                var infodiv = new HtmlGenericControl("div");
                infodiv.Attributes.Add("class", "profileTextContainer");
                var h4 = new HtmlGenericControl("h4");
                h4.Attributes.Add("class", "honorName");
                h4.InnerHtml = name;
                var p = new HtmlGenericControl("p");
                p.Attributes.Add("class", "honorParagraph");
                p.InnerHtml = description;
                div.Controls.Add(profimg);
                infodiv.Controls.Add(h4);
                infodiv.Controls.Add(p);
                div.Controls.Add(infodiv);
                honorDiv.Controls.Add(div);
                if (count != x && count % 3 != 0)
                {
                    var whiteBar = new HtmlGenericControl("div");
                    whiteBar.Attributes.Add("class", "whiteBar");
                    honorDiv.Controls.Add(whiteBar);
                }
                count++;
            }
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
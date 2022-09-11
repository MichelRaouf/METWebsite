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
    public partial class LecturersSearchRes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            //create new sqlconnection and connection to database by using connection string from web.config file  
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            String nameTA = (string)Session["searchInput"];
            SqlCommand cmd = new SqlCommand("getLecturerSearch", con);
            cmd.Parameters.Add(new SqlParameter("@lecturerName", nameTA));
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                String id = reader.GetValue(0).ToString();
                String name = reader.GetValue(3).ToString();
                String mail = reader.GetValue(1).ToString();
                String office = reader.GetValue(4).ToString();
                var div = new HtmlGenericControl("div");
                div.Attributes.Add("class", "profileData");
                var profimg = new HtmlGenericControl("img");
                profimg.Attributes.Add("src", "images/staff/Haytham.png");
                profimg.Attributes.Add("class", "profilePicture");
                var br = new HtmlGenericControl("br");
                var namediv = new HtmlGenericControl("div");
                namediv.Attributes.Add("class", "name");
                namediv.InnerHtml = name;
                var maildiv = new HtmlGenericControl("div");
                maildiv.Attributes.Add("class", "mailContainer");
                var mailimg = new HtmlGenericControl("img");
                mailimg.Attributes.Add("src", "./images/staff/email.png");
                maildiv.InnerHtml = mail;
                var officediv = new HtmlGenericControl("div");
                officediv.Attributes.Add("class", "officeContainer");
                var officeimg = new HtmlGenericControl("img");
                officeimg.Attributes.Add("src", "images/staff/workplace.png");
                officediv.InnerHtml = office;
                Button b = new Button();
                b.ID = id;
                b.Attributes.Add("class", "viewProfile");
                b.Attributes.Add("runat", "server");
                b.Text = "View Profile";
                b.Attributes.Add("OnClick", "ViewProfileClick");
                b.Click += ViewProfileClick;
                div.Controls.Add(profimg);
                div.Controls.Add(namediv);
                div.Controls.Add(maildiv);
                div.Controls.Add(officediv);
                div.Controls.Add(b);
                lecturerDiv.Controls.Add(div);
            }
        }
        private void ViewProfileClick(object sender, EventArgs e)
        {
            Session["instructorid"] = ((Control)sender).ID;
            Response.Redirect("StaffProfile.aspx");
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
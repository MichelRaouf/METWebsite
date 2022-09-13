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
    public partial class temp2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            //create new sqlconnection and connection to database by using connection string from web.config file  
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd1 = new SqlCommand("getLecturerInfo", con);
            cmd1.Parameters.Add(new SqlParameter("@position", "Dean"));
            cmd1.CommandType = System.Data.CommandType.StoredProcedure;
            SqlDataReader reader1 = cmd1.ExecuteReader();
            reader1.Read();
            String id1 = reader1.GetValue(0).ToString();
            String name1 = reader1.GetValue(1).ToString();
            String mail1 = reader1.GetValue(2).ToString();
            String office1 = reader1.GetValue(3).ToString();
            String title1 = reader1.GetValue(4).ToString();
            reader1.Close();
            var div1 = new HtmlGenericControl("div");
            div1.Attributes.Add("class", "profileData");
            var profimg1 = new HtmlGenericControl("img");
            profimg1.Attributes.Add("src", "images/staff/Haytham.png");
            profimg1.Attributes.Add("class", "profilePicture");
            var br1 = new HtmlGenericControl("br");
            var namediv1 = new HtmlGenericControl("div");
            namediv1.Attributes.Add("class", "name");
            namediv1.InnerHtml = title1 + " " + name1;
            var maildiv1 = new HtmlGenericControl("div");
            maildiv1.Attributes.Add("class", "mailContainer");
            var mailimg1 = new HtmlGenericControl("img");
            mailimg1.Attributes.Add("src", "./images/staff/email.png");
            maildiv1.InnerHtml = mail1;
            var officediv1 = new HtmlGenericControl("div");
            officediv1.Attributes.Add("class", "officeContainer");
            var officeimg1 = new HtmlGenericControl("img");
            officeimg1.Attributes.Add("src", "images/staff/workplace.png");
            officediv1.InnerHtml = office1;
            Button b1 = new Button();
            b1.ID = id1;
            b1.Attributes.Add("class", "viewProfile");
            b1.Attributes.Add("runat", "server");
            b1.Text = "View Profile";
            b1.Attributes.Add("OnClick", "ViewProfileClick");
            b1.Click += ViewProfileClick;
            div1.Controls.Add(profimg1);
            div1.Controls.Add(namediv1);
            div1.Controls.Add(maildiv1);
            div1.Controls.Add(officediv1);
            div1.Controls.Add(b1);
            deanDiv.Controls.Add(div1);

            SqlCommand cmd2 = new SqlCommand("getLecturerInfo", con);
            cmd2.CommandType = System.Data.CommandType.StoredProcedure;
            cmd2.Parameters.Add(new SqlParameter("@position", "ViceDean"));
            SqlDataReader reader2 = cmd2.ExecuteReader();
            while (reader2.Read())
            {
                String id2 = reader2.GetValue(0).ToString();
                String name2 = reader2.GetValue(1).ToString();
                String mail2 = reader2.GetValue(2).ToString();
                String office2 = reader2.GetValue(3).ToString();
                String title2 = reader1.GetValue(4).ToString();
                var div2 = new HtmlGenericControl("div");
                div2.Attributes.Add("class", "profileData");
                var profimg2 = new HtmlGenericControl("img");
                profimg2.Attributes.Add("src", "images/staff/Haytham.png");
                profimg2.Attributes.Add("class", "profilePicture");
                var br2 = new HtmlGenericControl("br");
                var namediv2 = new HtmlGenericControl("div");
                namediv2.Attributes.Add("class", "name");
                namediv2.InnerHtml = title2 + " " + name2;
                var maildiv2 = new HtmlGenericControl("div");
                maildiv2.Attributes.Add("class", "mailContainer");
                var mailimg2 = new HtmlGenericControl("img");
                mailimg2.Attributes.Add("src", "./images/staff/email.png");
                maildiv2.InnerHtml = mail2;
                var officediv2 = new HtmlGenericControl("div");
                officediv2.Attributes.Add("class", "officeContainer");
                var officeimg2 = new HtmlGenericControl("img");
                officeimg2.Attributes.Add("src", "images/staff/workplace.png");
                officediv2.InnerHtml = office2;
                Button b2 = new Button();
                b2.ID = id2;
                b2.Attributes.Add("class", "viewProfile");
                b2.Attributes.Add("runat", "server");
                b2.Text = "View Profile";
                b2.Attributes.Add("OnClick", "ViewProfileClick");
                b2.Click += ViewProfileClick;
                div2.Controls.Add(profimg2);
                div2.Controls.Add(namediv2);
                div2.Controls.Add(maildiv2);
                div2.Controls.Add(officediv2);
                div2.Controls.Add(b2);
                viceDiv.Controls.Add(div2);
            }
            reader2.Close();

            SqlCommand cmd3 = new SqlCommand("getLecturerInfo", con);
            cmd3.Parameters.Add(new SqlParameter("@position", "lecturer"));
            cmd3.CommandType = System.Data.CommandType.StoredProcedure;
            SqlDataReader reader3 = cmd3.ExecuteReader();
            while (reader3.Read())
            {

                String id3 = reader3.GetValue(0).ToString();
                String name3 = reader3.GetValue(1).ToString();
                String mail3 = reader3.GetValue(2).ToString();
                String office3 = reader3.GetValue(3).ToString();
                String title3 = reader1.GetValue(4).ToString();
                var div3 = new HtmlGenericControl("div");
                div3.Attributes.Add("class", "profileData");
                var profimg3 = new HtmlGenericControl("img");
                profimg3.Attributes.Add("src", "images/staff/Haytham.png");
                profimg3.Attributes.Add("class", "profilePicture");
                var br3 = new HtmlGenericControl("br");
                var namediv3 = new HtmlGenericControl("div");
                namediv3.Attributes.Add("class", "name");
                namediv3.InnerHtml = title3 + " " + name3;
                var maildiv3 = new HtmlGenericControl("div");
                maildiv3.Attributes.Add("class", "mailContainer");
                var mailimg3 = new HtmlGenericControl("img");
                mailimg3.Attributes.Add("src", "./images/staff/email.png");
                maildiv3.InnerHtml = mail3;
                var officediv3 = new HtmlGenericControl("div");
                officediv3.Attributes.Add("class", "officeContainer");
                var officeimg3 = new HtmlGenericControl("img");
                officeimg3.Attributes.Add("src", "images/staff/workplace.png");
                officediv3.InnerHtml = office3;
                Button b3 = new Button();
                b3.ID = id3;
                b3.Attributes.Add("class", "viewProfile");
                b3.Attributes.Add("runat", "server");
                b3.Text = "View Profile";
                b3.Attributes.Add("OnClick", "ViewProfileClick");
                b3.Click += ViewProfileClick;
                div3.Controls.Add(profimg3);
                div3.Controls.Add(namediv3);
                div3.Controls.Add(maildiv3);
                div3.Controls.Add(officediv3);
                div3.Controls.Add(b3);
                lecturerDiv.Controls.Add(div3);
            }
            reader3.Close();
        }
        protected void toSearchRes(object sender, EventArgs e)
        {
            String search = searchInput.Text;
            Session["searchInput"] = search;
            Response.Redirect("LecturersSearchRes.aspx");
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
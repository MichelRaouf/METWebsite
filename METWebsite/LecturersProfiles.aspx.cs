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
    public partial class LecturersProfiles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            //create new sqlconnection and connection to database by using connection string from web.config file  
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd1 = new SqlCommand("getLecturerInfo",con);
            cmd1.Parameters.Add(new SqlParameter("@position", "DEAN"));
            cmd1.CommandType = System.Data.CommandType.StoredProcedure;
            SqlDataReader reader1 = cmd1.ExecuteReader();
            reader1.Read();
            String id = reader1.GetValue(0).ToString();
            String name= reader1.GetValue(1).ToString();
            String mail=reader1.GetValue(2).ToString();
            String office=reader1.GetValue(3).ToString();
            reader1.Close();
            var div = new HtmlGenericControl("div");
            div.Attributes.Add("class", "profileData");
            var profimg = new HtmlGenericControl("img");
            profimg.Attributes.Add("src", "images/staff/Haytham.png");
            profimg.Attributes.Add("style", "width:16.276041666666668vw");
            var br = new HtmlGenericControl("br");
            var namediv = new HtmlGenericControl("div");
            namediv.Attributes.Add("class", "Name");
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
            deandiv.Controls.Add(div);
            SqlCommand cmd2 = new SqlCommand("getLecturerInfo", con);
            cmd2.CommandType = System.Data.CommandType.StoredProcedure;
            cmd2.Parameters.Add(new SqlParameter("@position", "ViceDean"));
            SqlDataReader reader2 = cmd2.ExecuteReader();
            while (reader2.Read())
            {
                String id1 = reader2.GetValue(0).ToString();
                String name1 = reader2.GetValue(1).ToString();
                String mail1 = reader2.GetValue(2).ToString();
                String office1 = reader2.GetValue(3).ToString();
                var div1 = new HtmlGenericControl("div");
                div1.Attributes.Add("class", "profileData");
                var profimg1 = new HtmlGenericControl("img");
                profimg1.Attributes.Add("src", "images/staff/Haytham.png");
                profimg1.Attributes.Add("style", "width:16.276041666666668vw");
                var br1 = new HtmlGenericControl("br");
                var namediv1 = new HtmlGenericControl("div");
                namediv1.Attributes.Add("class", "Name");
                namediv1.InnerHtml = name1;
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
                b1.ID = id;

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
                vicediv.Controls.Add(div1);

            }
            reader2.Close();
            SqlCommand cmd3 = new SqlCommand("getLecturerInfo", con);
            cmd3.Parameters.Add(new SqlParameter("@position", "lecturer"));
            cmd3.CommandType = System.Data.CommandType.StoredProcedure;
            SqlDataReader reader3 = cmd3.ExecuteReader();
            while (reader3.Read())
            {

                String id2 = reader3.GetValue(0).ToString();
                String name2 = reader3.GetValue(1).ToString();
                String mail2 = reader3.GetValue(2).ToString();
                String office2 = reader3.GetValue(3).ToString();
                var div2 = new HtmlGenericControl("div");
                div2.Attributes.Add("class", "profileData");
                var profimg2 = new HtmlGenericControl("img");
                profimg2.Attributes.Add("src", "images/staff/Haytham.png");
                profimg2.Attributes.Add("style", "width:16.276041666666668vw");
                var br2 = new HtmlGenericControl("br");
                var namediv2 = new HtmlGenericControl("div");
                namediv2.Attributes.Add("class", "Name");
                namediv2.InnerHtml = name2;
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
                b2.ID = id;

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
                lecturerdiv.Controls.Add(div2);

            }
            reader3.Close();

            

        }
        protected void ViewProfileClick(object sender,EventArgs e)
        {
            Session["instructorid"] = ((Control)sender).ID;
            Response.Redirect("StaffProfile.aspx");
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
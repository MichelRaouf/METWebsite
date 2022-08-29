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
    public partial class StaffProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write(Session["instructorid"]);
            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            //create new sqlconnection and connection to database by using connection string from web.config file  
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Instructors", con);
            SqlDataReader reader = cmd.ExecuteReader();
            int c = 0;
            string email="";string office=""; string office_hours="";
            string name=""; string tele = ""; string fax = "";string country=""; string city =""; string dep = ""; string dob = ""; 
            string nation = ""; string stat = ""; string lang = "";

          

            while (reader.Read() & c < 1)
            {
                email = reader.GetValue(1).ToString();
                name = reader.GetValue(3).ToString();
                office = reader.GetValue(4).ToString();
                office_hours = reader.GetValue(5).ToString();
                dep = reader.GetValue(6).ToString();
                tele = reader.GetValue(7).ToString();
                fax = reader.GetValue(8).ToString();
                country = reader.GetValue(9).ToString();
                dob = reader.GetValue(10).ToString();
                nation = reader.GetValue(11).ToString();
                stat = reader.GetValue(12).ToString();
                lang = reader.GetValue(13).ToString();
                c++;
            }
            con.Close();


            var img = new HtmlGenericControl("img");
            img.Attributes.Add("class", "profileImage");
            img.Attributes.Add("src", "images/profile/Haythem.svg");
            var imgdiv = new HtmlGenericControl("div");
            imgdiv.Attributes.Add("class", "profileImageDiv");
            imgdiv.Controls.Add(img);

            var namelabel = new HtmlGenericControl("label");
            namelabel.Attributes.Add("class", "name");
            namelabel.InnerHtml = name;

            var title = new HtmlGenericControl("label");
            title.Attributes.Add("class", "title");
            title.InnerHtml = dep;

            var titleDiv = new HtmlGenericControl("div");
            titleDiv.Attributes.Add("class", "titleDiv");
            titleDiv.Controls.Add(title);

            var seconddiv = new HtmlGenericControl("div");
            seconddiv.Controls.Add(namelabel);
            seconddiv.Controls.Add(titleDiv);


            var thirddiv = new HtmlGenericControl("div");



            var iconlabel1 = new HtmlGenericControl("div");
            iconlabel1.Attributes.Add("class", "info");
            var img1 = new HtmlGenericControl("img");
            img1.Attributes.Add("class", "icon");
            img1.Attributes.Add("src", "images/Profile/officeIcon.svg");
            var imagediv1 = new HtmlGenericControl("div");
            imagediv1.Controls.Add(img1);
            var label1 = new HtmlGenericControl("label");
            label1.Attributes.Add("class", "iconLabel");
            label1.InnerHtml = office;
            var labeldiv1 = new HtmlGenericControl("label");
            labeldiv1.Controls.Add(label1);
            iconlabel1.Controls.Add(imagediv1);
            iconlabel1.Controls.Add(labeldiv1);

            var iconlabel2 = new HtmlGenericControl("div");
            iconlabel2.Attributes.Add("class", "info");
            var img2 = new HtmlGenericControl("img");
            img2.Attributes.Add("class", "icon");
            img2.Attributes.Add("src", "images/Profile/emailIcon.svg");
            var imagediv2 = new HtmlGenericControl("div");
            imagediv2.Controls.Add(img2);
            var label2 = new HtmlGenericControl("label");
            label2.Attributes.Add("class", "iconLabel");
            label2.InnerHtml = email;
            var labeldiv2 = new HtmlGenericControl("label");
            labeldiv2.Controls.Add(label2);
            iconlabel2.Controls.Add(imagediv2);
            iconlabel2.Controls.Add(labeldiv2);

            var iconlabel3 = new HtmlGenericControl("div");
            iconlabel3.Attributes.Add("class", "info");
            var img3 = new HtmlGenericControl("img");
            img3.Attributes.Add("class", "icon");
            img3.Attributes.Add("src", "images/Profile/faxIcon.svg");
            var imagediv3 = new HtmlGenericControl("div");
            imagediv3.Controls.Add(img3);
            var label3 = new HtmlGenericControl("label");
            label3.Attributes.Add("class", "iconLabel");
            label3.InnerHtml = fax;
            var labeldiv3 = new HtmlGenericControl("label");
            labeldiv3.Controls.Add(label3);
            iconlabel3.Controls.Add(imagediv3);
            iconlabel3.Controls.Add(labeldiv3);

            var iconlabel4 = new HtmlGenericControl("div");
            iconlabel4.Attributes.Add("class", "info");
            var img4 = new HtmlGenericControl("img");
            img4.Attributes.Add("class", "icon");
            img4.Attributes.Add("src","images/Profile/phoneIcon.svg");
            var imagediv4 = new HtmlGenericControl("div");
            imagediv4.Controls.Add(img4);
            var label4 = new HtmlGenericControl("label");
            label4.Attributes.Add("class", "iconLabel");
            label4.InnerHtml = tele;
            var labeldiv4 = new HtmlGenericControl("label");
            labeldiv4.Controls.Add(label4);
            iconlabel4.Controls.Add(imagediv4);
            iconlabel4.Controls.Add(labeldiv4);

            thirddiv.Controls.Add(iconlabel1);
            thirddiv.Controls.Add(iconlabel2);
            thirddiv.Controls.Add(iconlabel3);
            thirddiv.Controls.Add(iconlabel4);

            ProfileHeader.Controls.Add(imgdiv);
            ProfileHeader.Controls.Add(seconddiv);
            ProfileHeader.Controls.Add(thirddiv);





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
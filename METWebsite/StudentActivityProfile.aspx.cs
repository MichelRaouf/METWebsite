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
    public partial class ACM : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            //create new sqlconnection and connection to database by using connection string from web.config file  
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("getStudentActivity", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter club = new SqlParameter("@id", Session["clubId"]);
            cmd.Parameters.Add(club);

            SqlDataReader reader = cmd.ExecuteReader();
            string title = ""; string type = ""; string icon = ""; string gradient = ""; string about = "";
            string facebook = ""; string instagram = ""; string track = "";

            var trackUl = new HtmlGenericControl("ul");
            trackUl.Attributes.Add("class", "item");
            trackUl.Style.Add("margin-top", "0");
            trackUl.Style.Add("font-family", "Montserrat, sans-serif");
            trackUl.Style.Add("font-size", "1.9vw");
            trackUl.Style.Add("margin-left", "0");

            while (reader.Read())
            {
                title = reader.GetValue(1).ToString().ToUpper();
                type = reader.GetValue(2).ToString().ToLower();
                icon = reader.GetValue(3).ToString();
                gradient = reader.GetValue(4).ToString();
                about = reader.GetValue(5).ToString();
                facebook = reader.GetValue(6).ToString();
                instagram = reader.GetValue(7).ToString();
                track = reader.GetValue(9).ToString();

                var trackLi = new HtmlGenericControl("li");
                trackLi.InnerHtml = track;
                trackUl.Controls.Add(trackLi);
            }
            listDiv.Controls.Add(trackUl);
            con.Close();

            var titleLabel = new HtmlGenericControl("label");
            titleLabel.Attributes.Add("class", "title");
            titleLabel.InnerHtml = title;
            titleDiv.Controls.Add(titleLabel);

            var typeLabel = new HtmlGenericControl("label");
            typeLabel.Attributes.Add("class", "type");
            typeLabel.InnerHtml = type;
            if (type == "club")
                typeLabel.Style.Add("width", "4.5893719806763285vw");
            else
                typeLabel.Style.Add("width", "9.3vw");

            typeLabel.Style.Add("background", gradient);
            typeLabel.Style.Add("-webkit-background-clip", "text");
            typeLabel.Style.Add("-webkit-text-fill-color", "transparent");
            typeDiv.Controls.Add(typeLabel);

            var iconImg = new HtmlGenericControl("img");
            iconImg.Attributes.Add("class", "Icon");
            iconImg.Attributes.Add("src", icon);
            iconDiv.Controls.Add(iconImg);

            var aboutLabel = new HtmlGenericControl("label");
            aboutLabel.Attributes.Add("class", "titleInfo");
            aboutLabel.InnerHtml = about;
            aboutDiv.Controls.Add(aboutLabel);

            Header.Style.Add("background", gradient);

            subTitleAbout.Style.Add("background", gradient);
            subTitleAbout.Style.Add("-webkit-background-clip", "text");
            subTitleAbout.Style.Add("-webkit-text-fill-color", "transparent");

            subTitleTracks.Style.Add("background", gradient);
            subTitleTracks.Style.Add("-webkit-background-clip", "text");
            subTitleTracks.Style.Add("-webkit-text-fill-color", "transparent");

            subTitleSocials.Style.Add("background", gradient);
            subTitleSocials.Style.Add("-webkit-background-clip", "text");
            subTitleSocials.Style.Add("-webkit-text-fill-color", "transparent");


            if (facebook != "")
            {
                var facebookA = new HtmlGenericControl("a");
                facebookA.Attributes.Add("href", facebook);
                var facebookImg = new HtmlGenericControl("img");
                facebookImg.Attributes.Add("class", "facebook");
                facebookImg.Attributes.Add("alt", "facebook");
                facebookImg.Attributes.Add("src", "./images/stActivitiesPageImages/facebook.svg");
                facebookImg.Style.Add("width", "4.428341384863124vw");
                facebookImg.Style.Add("height", "4.428341384863124vw");
                facebookA.Controls.Add(facebookImg);
                socialIcons.Controls.Add(facebookA);
            }

            if (instagram != "")
            {
                var instagramA = new HtmlGenericControl("a");
                instagramA.Attributes.Add("href", instagram);
                var instagramImg = new HtmlGenericControl("img");
                instagramImg.Attributes.Add("class", "instagram");
                instagramImg.Attributes.Add("alt", "instagram");
                instagramImg.Attributes.Add("src", "./images/stActivitiesPageImages/instagram.png");
                instagramImg.Style.Add("width", "4.428341384863124vw");
                instagramImg.Style.Add("height", "4.428341384863124vw");
                instagramA.Controls.Add(instagramImg);
                socialIcons.Controls.Add(instagramA);
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
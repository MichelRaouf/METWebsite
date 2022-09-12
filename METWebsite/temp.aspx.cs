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
	public partial class temp7 : System.Web.UI.Page
	{
        protected void Page_Load(object sender, EventArgs e)
        {
            //int id = (int) Session["instructorid"];
            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            //create new sqlconnection and connection to database by using connection string from web.config file  
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("getInstructor", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter inst = new SqlParameter("@instID", 1);
            cmd.Parameters.Add(inst);
            SqlDataReader reader = cmd.ExecuteReader();
            String photoUrl = "";
            String title = "";
            String name = "";
            String position = "";
            String office = "";
            String email = "";
            String fax = "";
            String phone = "";
            String city = "";
            String country = "";
            String dob = "";
            String nationality = "";
            String status = "";
            String languages = "";
            reader.Read();
            photoUrl = "images/profile/Haythem.svg";
            title = reader.GetValue(15).ToString();
            name = reader.GetValue(3).ToString();
            position = reader.GetValue(16).ToString();
            office = reader.GetValue(4).ToString();
            email = reader.GetValue(1).ToString();
            fax = reader.GetValue(8).ToString();
            phone = reader.GetValue(7).ToString();
            city = reader.GetValue(9).ToString();
            country = reader.GetValue(10).ToString();
            dob = reader.GetValue(11).ToString();
            nationality = reader.GetValue(12).ToString();
            status = reader.GetValue(13).ToString();
            languages = reader.GetValue(14).ToString();
            con.Close();
            String titleName = title + " " + name;
            var img = new HtmlGenericControl("img");
            img.Attributes.Add("class", "profileImage");
            img.Attributes.Add("src", photoUrl);
            profileImageDiv.Controls.Add(img);
            var nameTitleLabel = new HtmlGenericControl("label");
            nameTitleLabel.Attributes.Add("class", "name");
            nameTitleLabel.InnerHtml = titleName;
            var br = new HtmlGenericControl("br");
            var positionP = new HtmlGenericControl("p");
            positionP.Attributes.Add("class", "position");
            positionP.InnerHtml = position;
            namePosition.Controls.Add(nameTitleLabel);
            namePosition.Controls.Add(br);
            namePosition.Controls.Add(positionP);
            var officeLabel = new HtmlGenericControl("label");
            officeLabel.Attributes.Add("class", "iconLabelNoPhone");
            officeLabel.InnerHtml = office;
            officeDiv.Controls.Add(officeLabel);
            var emailLabel = new HtmlGenericControl("label");
            emailLabel.Attributes.Add("class", "iconLabelNoPhone");
            emailLabel.InnerHtml = email;
            emailDiv.Controls.Add(emailLabel);
            var faxLabel = new HtmlGenericControl("label");
            faxLabel.Attributes.Add("class", "iconLabelNoPhone");
            faxLabel.InnerHtml = fax;
            faxDiv.Controls.Add(faxLabel);
            var phoneLabel = new HtmlGenericControl("label");
            phoneLabel.Attributes.Add("class", "iconLabelPhone");
            phoneLabel.InnerHtml = phone;
            phoneDiv.Controls.Add(phoneLabel);
            String li1 = "";
            if (city != "" && country != "" && dob != "")
            {
                li1 = "Born in " + city + ", " + country + "on " + dob;
            }
            else if (city != "" && country != "" && dob == "")
            {
                li1 = "Born in " + city + ", " + country;
            }
            else if (city != "" && country == "" && dob != "")
            {
                li1 = "Born in " + city + ", " + "on " + dob;
            }
            else if (city == "" && country != "" && dob != "")
            {
                li1 = "Born in " + country + ", " + "on " + dob;
            }
            else if (city == "" && country == "" && dob != "")
            {
                li1 = "Born on " + dob;
            }
            else if (city == "" && country != "" && dob == "")
            {
                li1 = "Born in " + country;
            }
            else if (city != "" && country == "" && dob == "")
            {
                li1 = "Born in " + city;
            }
            if (li1 != "")
            {
                var birthInfo = new HtmlGenericControl("li");
                birthInfo.InnerHtml = li1;
                personalList.Controls.Add(birthInfo);
            }
            if (nationality != "")
            {
                String li2 = "Nationality: " + nationality;
                var nationLi = new HtmlGenericControl("li");
                nationLi.InnerHtml = li2;
                personalList.Controls.Add(nationLi);
            }
            if (status != "")
            {
                var statusLi = new HtmlGenericControl("li");
                statusLi.InnerHtml = status;
                personalList.Controls.Add(statusLi);
            }
            if (languages != "")
            {
                String li4 = "Languages: " + languages;
                var langLi = new HtmlGenericControl("li");
                langLi.InnerHtml = li4;
                personalList.Controls.Add(langLi);
            }
            //////////////////////////////////////////////////////////
            con.Open();
            SqlCommand cmd1 = new SqlCommand("getEducation", con);
            cmd1.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter instEd = new SqlParameter("@instID", 1);
            cmd1.Parameters.Add(instEd);
            SqlDataReader reader1 = cmd1.ExecuteReader();
            string educMonth = "";
            string educYear = "";
            string educTitle = "";
            string educPlace = "";
            string educField = "";
            while (reader1.Read())
            {
                educMonth = reader1.GetValue(5).ToString();
                educYear = reader1.GetValue(6).ToString();
                educTitle = reader1.GetValue(3).ToString();
                educPlace = reader1.GetValue(2).ToString();
                educField = reader1.GetValue(4).ToString();
                String educDate = educMonth + ", " + educYear;
                var dateLabel = new HtmlGenericControl("label");
                dateLabel.Attributes.Add("class", "date");
                dateLabel.InnerHtml = educDate;
                var dateDiv = new HtmlGenericControl("div");
                dateDiv.Attributes.Add("class", "dateDiv");
                dateDiv.Controls.Add(dateLabel);
                var infoItem = new HtmlGenericControl("div");
                infoItem.Attributes.Add("class", "infoItem");
                infoItem.Controls.Add(dateDiv);
                var vertical = new HtmlGenericControl("div");
                vertical.Attributes.Add("class", "vertical");
                infoItem.Controls.Add(vertical);
                var titleLabel = new HtmlGenericControl("label");
                titleLabel.InnerHtml = educTitle;
                var titleDiv = new HtmlGenericControl("div");
                titleDiv.Attributes.Add("class", "degreeTitle");
                titleDiv.Controls.Add(titleLabel);
                var placeLabel = new HtmlGenericControl("label");
                placeLabel.InnerHtml = educPlace;
                var placeDiv = new HtmlGenericControl("div");
                placeDiv.Attributes.Add("class", "university");
                placeDiv.Controls.Add(placeLabel);
                var fieldLabel = new HtmlGenericControl("label");
                fieldLabel.InnerHtml = educField;
                var fieldDiv = new HtmlGenericControl("div");
                fieldDiv.Attributes.Add("class", "description");
                fieldDiv.Controls.Add(fieldLabel);
                var textDiv = new HtmlGenericControl("div");
                textDiv.Attributes.Add("class", "text");
                textDiv.Controls.Add(titleDiv);
                textDiv.Controls.Add(placeDiv);
                textDiv.Controls.Add(fieldDiv);
                var horizontal = new HtmlGenericControl("div");
                horizontal.Attributes.Add("class", "horizontal");
                textDiv.Controls.Add(horizontal);
                infoItem.Controls.Add(textDiv);
                educationSection.Controls.Add(infoItem);
            }
            con.Close();
            //////////////////////////////////////////////////////////
            con.Open();
            SqlCommand cmd2 = new SqlCommand("getEmployment", con);
            cmd2.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter instEm = new SqlParameter("@instID", 1);
            cmd2.Parameters.Add(instEm);
            SqlDataReader reader2 = cmd2.ExecuteReader();
            string empStartMonth = "";
            string empStartYear = "";
            string empEndMonth = "";
            string empEndYear = "";
            string empTitle = "";
            string empField = "";
            string empPlace = "";
            int count = 3;
            while (reader2.Read())
            {
                count--;
                empStartMonth = reader2.GetValue(5).ToString();
                empStartYear = reader2.GetValue(6).ToString();
                empEndMonth = reader2.GetValue(7).ToString();
                empEndYear = reader2.GetValue(8).ToString();
                empPlace = reader2.GetValue(3).ToString();
                empTitle = reader2.GetValue(2).ToString();
                empField = reader2.GetValue(4).ToString();
                String startDate = empStartMonth + ", " + empStartYear;
                String endDate = "";
                if (empEndMonth == "" && empEndYear == "")
                {
                    endDate = "Still Running";
                }
                else
                {
                    endDate = empEndMonth + ", " + empEndYear;
                }
                var startLabel = new HtmlGenericControl("label");
                startLabel.Attributes.Add("class", "date");
                startLabel.InnerHtml = startDate;
                var toLabel = new HtmlGenericControl("label");
                toLabel.Attributes.Add("class", "date");
                toLabel.InnerHtml = "to";
                var endLabel = new HtmlGenericControl("label");
                endLabel.Attributes.Add("class", "date");
                endLabel.InnerHtml = endDate;
                var dateDiv = new HtmlGenericControl("div");
                dateDiv.Attributes.Add("class", "dateDiv");
                dateDiv.Controls.Add(startLabel);
                dateDiv.Controls.Add(toLabel);
                dateDiv.Controls.Add(endLabel);
                var infoItemEmp = new HtmlGenericControl("div");
                infoItemEmp.Attributes.Add("class", "infoItem");
                infoItemEmp.Controls.Add(dateDiv);
                var vertical = new HtmlGenericControl("div");
                vertical.Attributes.Add("class", "vertical");
                infoItemEmp.Controls.Add(vertical);
                var titleLabel = new HtmlGenericControl("label");
                titleLabel.InnerHtml = empTitle;
                var titleDiv = new HtmlGenericControl("div");
                titleDiv.Attributes.Add("class", "degreeTitle");
                titleDiv.Controls.Add(titleLabel);
                var placeLabel = new HtmlGenericControl("label");
                placeLabel.InnerHtml = empPlace;
                var placeDiv = new HtmlGenericControl("div");
                placeDiv.Attributes.Add("class", "university");
                placeDiv.Controls.Add(placeLabel);
                var fieldLabel = new HtmlGenericControl("label");
                fieldLabel.InnerHtml = empField;
                var fieldDiv = new HtmlGenericControl("div");
                fieldDiv.Attributes.Add("class", "description");
                fieldDiv.Controls.Add(fieldLabel);
                var horizontalEmp = new HtmlGenericControl("div");
                horizontalEmp.Attributes.Add("class", "horizontal");
                var textDivEmp = new HtmlGenericControl("div");
                textDivEmp.Attributes.Add("class", "text");
                textDivEmp.Controls.Add(titleDiv);
                textDivEmp.Controls.Add(placeDiv);
                textDivEmp.Controls.Add(fieldDiv);
                textDivEmp.Controls.Add(horizontalEmp);
                infoItemEmp.Controls.Add(textDivEmp);
                employmentSection.Controls.Add(infoItemEmp);
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
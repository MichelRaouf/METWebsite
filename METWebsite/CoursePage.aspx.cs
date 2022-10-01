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
    public partial class temp8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int ser = Int32.Parse(Request.QueryString["id"]);
            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("coursedetails", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter serial = new SqlParameter("@course_id", ser);
            cmd.Parameters.Add(serial);
            SqlDataReader reader = cmd.ExecuteReader();
            String courseCode = "";
            String courseName = "";
            String courseDescription = "";
            String courseCredit = "";
            String courseNumLectures = "";
            String courseNumTuts = "";
            String courseNumLabs = "";
            reader.Read();
            courseCode = reader.GetValue(1).ToString();
            courseName = reader.GetValue(2).ToString();
            courseDescription = reader.GetValue(3).ToString();
            courseCredit = reader.GetValue(4).ToString();
            courseNumLectures = reader.GetValue(6).ToString();
            courseNumTuts = reader.GetValue(7).ToString();
            courseNumLabs = reader.GetValue(8).ToString();
            con.Close();
            String courseTitle = "(" + courseCode + ") " + courseName;
            var titleLabel = new HtmlGenericControl("label");
            titleLabel.Attributes.Add("class", "courseTitle");
            titleLabel.InnerHtml = courseTitle;
            courseTitleDiv.Controls.Add(titleLabel);
            var courseCreditLabel = new HtmlGenericControl("label");
            courseCreditLabel.Attributes.Add("class", "iconLabelNoTut");
            courseCreditLabel.InnerHtml = courseCredit + " Credit Hours";
            creditDiv.Controls.Add(courseCreditLabel);
            var courseLecturesNumLabel = new HtmlGenericControl("label");
            courseLecturesNumLabel.Attributes.Add("class", "iconLabelNoTut");
            courseLecturesNumLabel.InnerHtml = courseNumLectures + " Lectures";
            lectureDiv.Controls.Add(courseLecturesNumLabel);
            var courseTutsNumLabel = new HtmlGenericControl("label");
            courseTutsNumLabel.Attributes.Add("class", "iconLabelTut");
            courseTutsNumLabel.InnerHtml = courseNumTuts + " Tutorials";
            tutDiv.Controls.Add(courseTutsNumLabel);
            var courseLabsNumLabel = new HtmlGenericControl("label");
            courseLabsNumLabel.Attributes.Add("class", "iconLabelNoTut");
            courseLabsNumLabel.InnerHtml = courseNumLabs + " Labs";
            labDiv.Controls.Add(courseLabsNumLabel);
            var courseDescriptionLabel = new HtmlGenericControl("label");
            courseDescriptionLabel.Attributes.Add("class", "descriptionText");
            courseDescriptionLabel.InnerHtml = courseDescription;
            textDiv.Controls.Add(courseDescriptionLabel);
            //////////////////////////////////////////////////////////
            con.Open();
            SqlCommand cmd1 = new SqlCommand("courseUpdates", con);
            cmd1.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter serial1 = new SqlParameter("@course_id", ser);
            cmd1.Parameters.Add(serial1);
            SqlDataReader reader1 = cmd1.ExecuteReader();
            String updatesItem = "";
            while (reader1.Read())
            {
                updatesItem = reader1.GetValue(0).ToString();
                var updatesItemLI = new HtmlGenericControl("li");
                updatesItemLI.Attributes.Add("class", "updateItem");
                updatesItemLI.InnerHtml = updatesItem;
                updatesList.Controls.Add(updatesItemLI);
            }
            con.Close();
            //////////////////////////////////////////////////////////
            con.Open();
            SqlCommand cmd2 = new SqlCommand("coursePrerequistes", con);
            cmd2.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter serial2 = new SqlParameter("@course_id", ser);
            cmd2.Parameters.Add(serial2);
            SqlDataReader reader2 = cmd2.ExecuteReader();
            String courseCodePre = "";
            String courseNamePre = "";
            while (reader2.Read())
            {
                courseCodePre = reader2.GetValue(0).ToString();
                courseNamePre = reader2.GetValue(1).ToString();
                int courseSerialPre = Int32.Parse(reader2.GetValue(2).ToString());
                String courseTitlePre = "(" + courseCodePre + ") " + courseNamePre;
                var courseTitleLabelPre = new HtmlGenericControl("a");
                courseTitleLabelPre.Attributes.Add("href", "CoursePage.aspx?id=" + courseSerialPre);
                courseTitleLabelPre.InnerHtml = courseTitlePre;
                var courseLIPre = new HtmlGenericControl("li");
                courseLIPre.Attributes.Add("class", "courseItem");
                courseLIPre.Controls.Add(courseTitleLabelPre);
                prereqList.Controls.Add(courseLIPre);
            }
            con.Close();
            //////////////////////////////////////////////////////////
            //////////////////////////////////////////////////////////
            //////////////////////////////////////////////////////////
            //////////////////////////////////////////////////////////
            //////////////////////////////////////////////////////////
            con.Open();
            SqlCommand cmd3 = new SqlCommand("getCourseWeekInfo", con);
            cmd3.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter serial3 = new SqlParameter("@course_id", ser);
            cmd3.Parameters.Add(serial3);
            SqlDataReader reader3 = cmd3.ExecuteReader();
            int weekCount = 1;
            List<String> weekDateList = new List<String>();
            List<String> weekTitleList = new List<String>();
            List<String> weekInfoList = new List<String>();
            List<int> weekSerialList = new List<int>();
            while (reader3.Read())
            {
                weekDateList.Add((reader3.GetValue(0).ToString()).Split(' ')[0]);
                weekTitleList.Add(reader3.GetValue(1).ToString());
                weekInfoList.Add(reader3.GetValue(2).ToString());
                weekSerialList.Add(Int32.Parse(reader3.GetValue(3).ToString()));
            }
            con.Close();
            int countH = 3;
            int j = 0;
            while (j < weekDateList.Count)
            {
                var weekLabel = new HtmlGenericControl("label");
                weekLabel.Attributes.Add("class", "weekLabel");
                weekLabel.InnerHtml = "Week";
                var weekDiv = new HtmlGenericControl("div");
                weekDiv.Attributes.Add("class", "week");
                weekDiv.Controls.Add(weekLabel);
                var weekNoLabel = new HtmlGenericControl("label");
                weekNoLabel.Attributes.Add("class", "weekNoLabel");
                weekNoLabel.InnerHtml = weekCount.ToString();
                weekCount++;
                var weekNoDiv = new HtmlGenericControl("div");
                weekNoDiv.Attributes.Add("class", "weekNo");
                weekNoDiv.Controls.Add(weekNoLabel);
                var weekDateLabel = new HtmlGenericControl("div");
                weekDateLabel.Attributes.Add("class", "weekDateLabel");
                weekDateLabel.InnerHtml = weekDateList.ElementAt(j);
                var weekDateDiv = new HtmlGenericControl("div");
                weekDateDiv.Attributes.Add("class", "weekDate");
                weekDateDiv.Controls.Add(weekDateLabel);
                var sideInfoDiv = new HtmlGenericControl("div");
                sideInfoDiv.Attributes.Add("class", "sideInfo");
                sideInfoDiv.Controls.Add(weekDiv);
                sideInfoDiv.Controls.Add(weekNoDiv);
                sideInfoDiv.Controls.Add(weekDateDiv);
                var vertical = new HtmlGenericControl("div");
                vertical.Attributes.Add("class", "vertical");
                sideInfoDiv.Controls.Add(vertical);
                var weekTitleLabel = new HtmlGenericControl("label");
                weekTitleLabel.Attributes.Add("class", "weekTitleLabel");
                weekTitleLabel.InnerHtml = weekTitleList.ElementAt(j);
                var weekTitleDiv = new HtmlGenericControl("div");
                weekTitleDiv.Attributes.Add("class", "weekTitle");
                weekTitleDiv.Controls.Add(weekTitleLabel);
                var weekDescriptionLabel = new HtmlGenericControl("label");
                weekDescriptionLabel.Attributes.Add("class", "weekDescriptionLabel");
                weekDescriptionLabel.InnerHtml = weekInfoList.ElementAt(j);
                var weekDescriptionDiv = new HtmlGenericControl("div");
                weekDescriptionDiv.Attributes.Add("class", "weekDescription");
                weekDescriptionDiv.Controls.Add(weekDescriptionLabel);
                var detailsDiv = new HtmlGenericControl("div");
                detailsDiv.Attributes.Add("class", "details");
                detailsDiv.Controls.Add(weekTitleDiv);
                detailsDiv.Controls.Add(weekDescriptionDiv);
                var upperDiv = new HtmlGenericControl("div");
                upperDiv.Attributes.Add("class", "upper");
                upperDiv.Controls.Add(sideInfoDiv);
                upperDiv.Controls.Add(vertical);
                upperDiv.Controls.Add(detailsDiv);
                var horizontalDiv = new HtmlGenericControl("div");
                horizontalDiv.Attributes.Add("class", "horizontal");
                var itemDiv = new HtmlGenericControl("div");
                itemDiv.Attributes.Add("class", "itemDiv");
                itemDiv.Controls.Add(upperDiv);
                itemDiv.Controls.Add(horizontalDiv);
                var lowerDiv = new HtmlGenericControl("div");
                lowerDiv.Attributes.Add("class", "lower");
                con.Open();
                SqlCommand cmd33 = new SqlCommand("getMaterialWeek", con);
                cmd33.CommandType = System.Data.CommandType.StoredProcedure;
                SqlParameter serial33 = new SqlParameter("@week_serial", weekSerialList.ElementAt(j));
                cmd33.Parameters.Add(serial33);
                SqlDataReader reader33 = cmd33.ExecuteReader();
                String name3 = "";
                String fileLink = "";
                while (reader33.Read())
                {
                    name3 = reader33.GetValue(0).ToString();
                    fileLink = reader33.GetValue(1).ToString();
                    var materialItem = new HtmlGenericControl("a");
                    materialItem.Attributes.Add("class", "materialItem");
                    materialItem.Attributes.Add("href", fileLink + "");
                    materialItem.Attributes.Add("download", name3);
                    materialItem.InnerHtml = name3;
                    var materialItemDiv = new HtmlGenericControl("div");
                    materialItemDiv.Attributes.Add("class", "materialItemDiv");
                    materialItemDiv.Controls.Add(materialItem);
                    lowerDiv.Controls.Add(materialItemDiv);
                }
                itemDiv.Controls.Add(lowerDiv);
                var horizontal2 = new HtmlGenericControl("div");
                horizontal2.Attributes.Add("class", "horizontal2");
                itemDiv.Controls.Add(horizontal2);
                if (countH > 0)
                {
                    syllabus.Controls.Add(itemDiv);
                }
                else
                {
                    more3.Controls.Add(itemDiv);
                    syllabus.Controls.Add(more3);
                }
                countH--;
                j++;
                con.Close();
            }
            if (countH == 0 || countH > 0)
                syllabus.Controls.Remove(buttonMore3);
            if (countH < 0)
            {
                syllabus.Controls.Add(buttonMore3);
            }
            //////////////////////////////////////////////////////////
            con.Open();
            SqlCommand cmd4 = new SqlCommand("courseProfs", con);
            cmd4.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter serial4 = new SqlParameter("@course_id", ser);
            cmd4.Parameters.Add(serial4);
            SqlDataReader reader4 = cmd4.ExecuteReader();
            String title = "";
            String name = "";
            while (reader4.Read())
            {
                title = reader4.GetValue(0).ToString();
                name = reader4.GetValue(1).ToString();
                var lecturerATag = new HtmlGenericControl("a");
                lecturerATag.Attributes.Add("class", "staffName");
                lecturerATag.InnerHtml = title + " " + name;
                var lecturerItem = new HtmlGenericControl("li");
                lecturerItem.Attributes.Add("class", "instructorItem");
                lecturerItem.Controls.Add(lecturerATag);
                lecturersList.Controls.Add(lecturerItem);
            }
            con.Close();

            con.Open();
            SqlCommand cmd44 = new SqlCommand("courseTas", con);
            cmd44.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter serial44 = new SqlParameter("@course_id", ser);
            cmd44.Parameters.Add(serial44);
            SqlDataReader reader44 = cmd44.ExecuteReader();
            String title1 = "";
            String name1 = "";
            while (reader44.Read())
            {
                title1 = reader44.GetValue(0).ToString();
                name1 = reader44.GetValue(1).ToString();
                var taATag = new HtmlGenericControl("a");
                taATag.Attributes.Add("class", "staffName");
                taATag.InnerHtml = title1 + " " + name1;
                var taItem = new HtmlGenericControl("li");
                taItem.Attributes.Add("class", "instructorItem");
                taItem.Controls.Add(taATag);
                tasList.Controls.Add(taItem);
            }
            con.Close();
            //////////////////////////////////////////////////////////
            con.Open();
            SqlCommand cmd5 = new SqlCommand("courseResources", con);
            cmd5.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter serial5 = new SqlParameter("@course_id", ser);
            cmd5.Parameters.Add(serial5);
            SqlDataReader reader5 = cmd5.ExecuteReader();
            String resDescrip = "";
            String resLink = "";
            while (reader5.Read())
            {
                resDescrip = reader5.GetValue(0).ToString();
                resLink = reader5.GetValue(1).ToString();
                var linkImage = new HtmlGenericControl("img");
                linkImage.Attributes.Add("class", "linkImage");
                linkImage.Attributes.Add("src", "./images/coursePageImages/link.svg");
                var resourceATag = new HtmlGenericControl("a");
                resourceATag.Attributes.Add("class", "resourceLink");
                resourceATag.Attributes.Add("href", "resLink");
                resourceATag.InnerHtml = resDescrip;
                var resourceItemDiv = new HtmlGenericControl("div");
                resourceItemDiv.Attributes.Add("class", "resourcsItem");
                resourceItemDiv.Controls.Add(linkImage);
                resourceItemDiv.Controls.Add(resourceATag);
                resources.Controls.Add(resourceItemDiv);
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
    }
}
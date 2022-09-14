using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace METWebsite
{
    public partial class CourePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            int ser=Int32.Parse(Request.QueryString["id"]);
            Response.Write(ser);
            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            //create new sqlconnection and connection to database by using connection string from web.config file  
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand course_title = new SqlCommand("courseTitle", con);
            course_title.CommandType = System.Data.CommandType.StoredProcedure;
            course_title.Parameters.Add(new SqlParameter("@course_id", ser));
            SqlParameter title = course_title.Parameters.Add("@course_title", System.Data.SqlDbType.VarChar, 100);
            SqlParameter code = course_title.Parameters.Add("@course_code", System.Data.SqlDbType.VarChar, 100);

            title.Direction = ParameterDirection.Output;
            code.Direction = ParameterDirection.Output;


            con.Open();
            course_title.ExecuteNonQuery();
            con.Close();

            ctitle.InnerHtml = "(" + code.Value.ToString() + ") " + title.Value.ToString();

            SqlCommand course_details = new SqlCommand("coursedetails", con);
            course_details.CommandType = System.Data.CommandType.StoredProcedure;
            course_details.Parameters.Add(new SqlParameter("@course_id", ser));
            SqlParameter credits = course_details.Parameters.Add("@course_credits", System.Data.SqlDbType.Int);
            credits.Direction = ParameterDirection.Output;
            SqlParameter lectures = course_details.Parameters.Add("@courseLecs", System.Data.SqlDbType.Int);
            lectures.Direction = ParameterDirection.Output;
            SqlParameter tutorials = course_details.Parameters.Add("@coursetuts", System.Data.SqlDbType.Int);
            tutorials.Direction = ParameterDirection.Output;
            SqlParameter labs = course_details.Parameters.Add("@courseLabs", System.Data.SqlDbType.Int);
            labs.Direction = ParameterDirection.Output;

            con.Open();
            course_details.ExecuteNonQuery();
            con.Close();

            ccredits.InnerHtml = "&nbsp;&nbsp;" + credits.Value.ToString() + " Credits Hours";
            clecs.InnerHtml = "&nbsp;&nbsp;" + lectures.Value.ToString() + " Lectures";
            ctuts.InnerHtml = "&nbsp;&nbsp;" + tutorials.Value.ToString() + " Tutorials";
            clabs.InnerHtml = "&nbsp;&nbsp;" + labs.Value.ToString() + " Labs";

            SqlCommand course_updates = new SqlCommand("courseUpdates", con);
            course_updates.CommandType = System.Data.CommandType.StoredProcedure;
            course_updates.Parameters.Add(new SqlParameter("@course_id", 2));

            con.Open();
            course_updates.ExecuteNonQuery();

            SqlDataReader reader = course_updates.ExecuteReader();
            while (reader.Read())
            {
                cupdates.InnerHtml += "<li>" + reader.GetValue(0).ToString() + "</li>";
            }

            con.Close();

            SqlCommand course_description = new SqlCommand("coursedescription", con);
            course_description.CommandType = System.Data.CommandType.StoredProcedure;
            course_description.Parameters.Add(new SqlParameter("@course_id", 3));
            SqlParameter description = course_description.Parameters.Add("@course_description", System.Data.SqlDbType.VarChar, 1000);
            description.Direction = ParameterDirection.Output;

            con.Open();
            course_description.ExecuteNonQuery();
            con.Close();

            cdescription.InnerHtml = description.Value.ToString();

            SqlCommand course_pre = new SqlCommand("coursePrerequistes", con);
            course_pre.CommandType = System.Data.CommandType.StoredProcedure;
            course_pre.Parameters.Add(new SqlParameter("@course_id", 3));

            con.Open();
            course_pre.ExecuteNonQuery();

            SqlDataReader readerpre = course_pre.ExecuteReader();
            cpre.InnerHtml = "";
            while (readerpre.Read())
            {
                cpre.InnerHtml += "<li>" + readerpre.GetValue(0).ToString() + "</li>";
            }

            con.Close();

            SqlCommand course_prof = new SqlCommand("courseProfs", con);
            course_prof.CommandType = System.Data.CommandType.StoredProcedure;
            course_prof.Parameters.Add(new SqlParameter("@course_id", 3));

            con.Open();
            course_prof.ExecuteNonQuery();

            SqlDataReader readerprof = course_prof.ExecuteReader();
            cprof.InnerHtml = "";
            while (readerprof.Read())
            {
                cprof.InnerHtml += "<li>" + readerprof.GetValue(0).ToString() + "</li>";
            }

            con.Close();

            SqlCommand course_ta = new SqlCommand("courseTas", con);
            course_ta.CommandType = System.Data.CommandType.StoredProcedure;
            course_ta.Parameters.Add(new SqlParameter("@course_id", 3));

            con.Open();
            course_ta.ExecuteNonQuery();

            SqlDataReader readerta = course_ta.ExecuteReader();
            cta.InnerHtml = "";
            while (readerta.Read())
            {
                cta.InnerHtml += "<li>" + readerta.GetValue(0).ToString() + "</li>";
            }

            con.Close();

            SqlCommand course_res = new SqlCommand("courseResources", con);
            course_res.CommandType = System.Data.CommandType.StoredProcedure;
            course_res.Parameters.Add(new SqlParameter("@course_id", 3));

            con.Open();
            course_res.ExecuteNonQuery();

            SqlDataReader readerres = course_res.ExecuteReader();
            cres.InnerHtml = "";
            while (readerres.Read())
            {
                cres.InnerHtml += "<img class=\"navimg\" src=\"./images/coursePageImages/link.svg\" />";
                cres.InnerHtml += "<span>&nbsp;&nbsp;</span>";
                cres.InnerHtml += "<a class=\"resources\" href=";
                cres.InnerHtml += readerres.GetValue(1).ToString() + ">";
                cres.InnerHtml += readerres.GetValue(0).ToString() + "</a>" + "<br />";
            }

            con.Close();

            SqlCommand course_syll = new SqlCommand("weekDetails", con);
            course_syll.CommandType = System.Data.CommandType.StoredProcedure;
            course_syll.Parameters.Add(new SqlParameter("@course_id", 3));

            con.Open();
            course_syll.ExecuteNonQuery();

            SqlDataReader readersyll = course_syll.ExecuteReader();
            List<List<String>> weeks = new List<List<String>>();
            while (readersyll.Read())
            {
                List<String> list = new List<string>();
                list.Add(readersyll.GetValue(0).ToString());
                list.Add(readersyll.GetValue(1).ToString());
                list.Add(readersyll.GetValue(2).ToString());
                list.Add(readersyll.GetValue(3).ToString());
                weeks.Add(list);
            }
            con.Close();

            csyllabus.InnerHtml = "";
            int c = 0;
            while (c < 3 && c < weeks.Count)
            {
                csyllabus.InnerHtml += "<div class=\"flex-container-2\">\r\n" +
                    "<div class=\"flex-child\">\r\n" +
                    "<p class=\"syllabus-title\">Week</p>\r\n" +
                    "<p class=\"week-number\">" + weeks[c][0] + "</p>\r\n\r\n</div>";
                csyllabus.InnerHtml += "   <div class=\"flex-child\">\r\n" +
                    " <p class=\"syllabus-title\">" + weeks[c][1] + "</p>\r\n  " +
                    " <p class=\"syllabus-description\">\r\n" +
                    weeks[c][2] + "</p>\r\n </div>\r\n </div>";

                //Materials
                csyllabus.InnerHtml += "            <ul class=\"materials\">\r\n";

                SqlCommand weekMaterials = new SqlCommand("weekMaterials", con);
                weekMaterials.CommandType = System.Data.CommandType.StoredProcedure;
                int temp = Int32.Parse(weeks[c][3]);
                weekMaterials.Parameters.Add(new SqlParameter("@weekSerial", temp));
                con.Open();
                weekMaterials.ExecuteNonQuery();
                SqlDataReader materialsReader = weekMaterials.ExecuteReader();

                while (materialsReader.Read())
                {
                    csyllabus.InnerHtml += " <li>";
                    csyllabus.InnerHtml += "<a href=\" " + materialsReader.GetValue(1).ToString() + "\">";
                    csyllabus.InnerHtml += materialsReader.GetValue(0).ToString() + "</a></li>";

                }
                csyllabus.InnerHtml += "</ul>";
                con.Close();

                if (c < 2)
                {
                    csyllabus.InnerHtml += "<img class=\"syllabus-line\" src=\"./images/coursePageImages/line.svg\" />\r\n";
                }

                c++;
            }

            csyllabus2.InnerHtml = "";
            csyllabus2.InnerHtml += "<img class=\"syllabus-line\" src=\"./images/coursePageImages/line.svg\" />\r\n";

            while (c < weeks.Count)
            {
                csyllabus2.InnerHtml += "<div class=\"flex-container-2\">\r\n" +
                    "<div class=\"flex-child\">\r\n" +
                    "<p class=\"syllabus-title\">Week</p>\r\n" +
                    "<p class=\"week-number\">" + weeks[c][0] + "</p>\r\n\r\n</div>";
                csyllabus2.InnerHtml += "   <div class=\"flex-child\">\r\n" +
                    " <p class=\"syllabus-title\">" + weeks[c][1] + "</p>\r\n  " +
                    " <p class=\"syllabus-description\">\r\n" +
                    weeks[c][2] + "</p>\r\n </div>\r\n </div>";

                //Materials
                csyllabus2.InnerHtml += "            <ul class=\"materials\">\r\n";

                SqlCommand weekMaterials = new SqlCommand("weekMaterials", con);
                weekMaterials.CommandType = System.Data.CommandType.StoredProcedure;
                int temp = Int32.Parse(weeks[c][3]);
                weekMaterials.Parameters.Add(new SqlParameter("@weekSerial", temp));
                con.Open();
                weekMaterials.ExecuteNonQuery();
                SqlDataReader materialsReader = weekMaterials.ExecuteReader();

                while (materialsReader.Read())
                {
                    csyllabus2.InnerHtml += " <li>";
                    csyllabus2.InnerHtml += "<a href=\" " + materialsReader.GetValue(1).ToString() + "\">";
                    csyllabus2.InnerHtml += materialsReader.GetValue(0).ToString() + "</a></li>";

                }
                csyllabus2.InnerHtml += "</ul>";
                con.Close();

                csyllabus2.InnerHtml += "<img class=\"syllabus-line\" src=\"./images/coursePageImages/line.svg\" />\r\n";

                c++;
            }



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
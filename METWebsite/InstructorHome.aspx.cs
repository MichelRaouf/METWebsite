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
    public partial class InstructorHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            //create new sqlconnection and connection to database by using connection string from web.config file  
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            int InstructorID = (int) Session["id"];
            SqlCommand getInstructornameCmd = new SqlCommand("select name from Instructors where id = @InstId;", con);
            getInstructornameCmd.Parameters.AddWithValue("InstId", InstructorID);
            SqlDataReader reader = getInstructornameCmd.ExecuteReader();
            String InstName = "Welcome!";
            if (reader.Read()) 
                InstName ="Welcome, " + reader.GetValue(0).ToString()+"!";
            reader.Close();
            Welcome_label.InnerHtml = InstName;
            SqlCommand getcurrentSemester = new SqlCommand("select sem.season,sem.year from settings s,Semester sem where s.semester_serial = sem.serial;", con);
            SqlDataReader reader1 = getcurrentSemester.ExecuteReader();
            String season = "";
            if (reader1.Read())
            {
                season = reader1.GetValue(0).ToString() + " " + reader1.GetValue(1).ToString();
            }
            reader1.Close();
            currentSemester.InnerHtml = season;
            
            SqlCommand getInstructorsCurrentCourses = new SqlCommand("getInstructorsCurrentCourses", con);
            getInstructorsCurrentCourses.CommandType = System.Data.CommandType.StoredProcedure;
            getInstructorsCurrentCourses.Parameters.Add(new SqlParameter("@InstructorID", InstructorID));
            SqlDataReader reader2 = getInstructorsCurrentCourses.ExecuteReader();
            while (reader2.Read())
            {
                int courseSerial = (int)reader2.GetValue(0);
                String courseCode = reader2.GetValue(1).ToString();
                String courseName = reader2.GetValue(2).ToString();

                var tr = new HtmlTableRow();
                var td1 = new HtmlTableCell();
                var CourseNameLabel = new HtmlGenericControl("label");
                CourseNameLabel.Attributes.Add("class", "courseTitle");
                CourseNameLabel.InnerHtml = courseCode.ToUpper() +" "+ courseName;
                td1.Controls.Add(CourseNameLabel);
                var td2 = new HtmlTableCell();
                var button = new Button { Text = "View Course" ,CssClass= "viewCourse" };
                button.Click += (object sender1, EventArgs e1) => {
                    Response.Redirect("InstructorViewCourse.aspx?IdString=" + courseSerial.ToString());
                };
                td2.Controls.Add(button);
                tr.Controls.Add(td1);
                tr.Controls.Add(td2);
                coursesTable.Controls.Add(tr);
            }
            con.Close();


        }
        protected void logOut_click(object sender, EventArgs e)
        {
            Session["id"] = null;
            Response.Redirect("Login.aspx");


        }
        protected void viewProfile_click(object sender, EventArgs e)
        {

        }
    }
}
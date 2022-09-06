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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            //create new sqlconnection and connection to database by using connection string from web.config file  
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("getSemCourseID", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
           
            int i = 1;
            while (i <= 10)
            {
                var butSem = new HtmlGenericControl("button");
                butSem.Attributes.Add("class", "collapsible");
                butSem.InnerHtml = "Semester" + i;
                var SemDiv = new HtmlGenericControl("div");
                SemDiv.Attributes.Add("class", "content");
                var uList = new HtmlGenericControl("ul");

                SqlParameter SemNumber = new SqlParameter("@semNo", i);
                cmd.Parameters.Add(SemNumber);
                SqlDataReader reader = cmd.ExecuteReader();
         
                string serial = ""; string name = ""; string code = ""; 
      /*         while (reader.Read())
                {
                    
                    serial=reader.GetValue(0).ToString();
                    Response.Write(serial);
                    name=reader.GetValue(1).ToString();
                    code=reader.GetValue(2).ToString();

                    var an = new HtmlGenericControl("a");
                    an.Attributes.Add("href", "CoursePage.aspx");
                    an.Attributes.Add("id", serial);
                    an.InnerHtml = "[" + " " + code + " " + "]" + name;
                    var item = new HtmlGenericControl("li");
                    item.Controls.Add(an);
                    uList.Controls.Add(item);


                }
        */      
                SemDiv.Controls.Add(uList);
                Semesters.Controls.Add(butSem);
                Semesters.Controls.Add(SemDiv);
                i++;
                con.Close();
            }













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
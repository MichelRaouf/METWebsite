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
           
            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            //create new sqlconnection and connection to database by using connection string from web.config file  
            SqlConnection con = new SqlConnection(strcon);
            for(int i = 1; i <= 10; i++)
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("getSemCourseID", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                SqlParameter SemNumber = new SqlParameter("@semNo", i);
                var butSem = new HtmlGenericControl("button");
                butSem.Attributes.Add("class", "collapsible");
                butSem.InnerHtml = "Semester" + i;
                var SemDiv = new HtmlGenericControl("div");
                SemDiv.Attributes.Add("class", "content");
                var uList = new HtmlGenericControl("ul");
                cmd.Parameters.Add(SemNumber);
                SqlDataReader reader = cmd.ExecuteReader();
                string serial = ""; string name = ""; string code = "";
                while (reader.Read())
                {

                    serial = reader.GetValue(0).ToString();
                    name = reader.GetValue(1).ToString();
                    code = reader.GetValue(2).ToString();
                    var an = new HtmlGenericControl("button");
                    an.Attributes.Add("onclick", "redirect()");
                    an.Attributes.Add("class", "coursebtn");
                    an.Attributes.Add("id",serial);
                    an.InnerHtml = "[" + " " + code + " " + "]" + name;
                   
                    var item = new HtmlGenericControl("li");
                    item.Controls.Add(an);
                    uList.Controls.Add(item);


                }

                SemDiv.Controls.Add(uList);
                Semesters.Controls.Add(butSem);
                Semesters.Controls.Add(SemDiv);
                con.Close();
            }
            
               

        }

        private void An_Click(object sender, EventArgs e)
        {
            Response.Redirect("CoursePage.aspx?id=((Control)sender).ID" );
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
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace METWebsite
{
    public partial class StudentActivities : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            
        }
        protected void incubator(object sender, EventArgs e)
        {
            Response.Redirect("Incubator.aspx");
        }
        protected void GucBrain(object sender, EventArgs e)
        {
            Response.Redirect("GucBrain.aspx");
        }
        protected void ACM(object sender, EventArgs e)
        {
            Response.Redirect("ACM.aspx");
        }
        protected void GDG(object sender, EventArgs e)
        {
            Response.Redirect("GDG.aspx");
        }
        protected void IEEE(object sender, EventArgs e)
        {
            Response.Redirect("IEEE.aspx");
        }
        protected void Savvy(object sender, EventArgs e)
        {
            Response.Redirect("Savvy.aspx");
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
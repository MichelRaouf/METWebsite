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
    }
}
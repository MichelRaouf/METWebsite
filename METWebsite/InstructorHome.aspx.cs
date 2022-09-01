using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
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
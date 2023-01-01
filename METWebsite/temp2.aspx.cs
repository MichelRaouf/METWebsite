using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace METWebsite
{
    public partial class temp21 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Write(fileAdded.InnerText);
            }
            catch(Exception ex)
            {

            }
        }
        protected void x_click(object sender, EventArgs e)
        {
            Response.Redirect("AdminAlumni.aspx");
        }
    }
}
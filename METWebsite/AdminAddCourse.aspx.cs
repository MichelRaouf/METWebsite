using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace METWebsite
{
    public partial class AdminAddCourse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addCourse_Click(object sender, EventArgs e)
        {
            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            //SqlCommand course_title = new SqlCommand("courseTitle", con);
            String ctitle = titleInput.ToString();
            String ccode = codeInput.ToString();
            int clecs = Int16.Parse(lectureInput.ToString());
            int ctuts = Int16.Parse(tutorialInput.ToString());
            int clabs = Int16.Parse(labsInput.ToString());

            string cdescription = descriptionInput.ToString();
            if (csen.Checked)
            {
                // Do something when CheckBox is checked  
            }
            else
            {
                // Do something here when CheckBox is not checked  
            }




        }
    }
}
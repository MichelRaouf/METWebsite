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
    public partial class AdminRemoveCourse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            //create new sqlconnection and connection to database by using connection string from web.config file  
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            //SqlCommand cmd1 = new SqlCommand("select * from course", con);
            SqlCommand getCourses = new SqlCommand("getAllCourses", con);
            getCourses.CommandType = System.Data.CommandType.StoredProcedure;
            SqlDataReader reader1 = getCourses.ExecuteReader();
            while (reader1.Read())
            {
                var coursediv = new HtmlGenericControl("div");
                var line = new HtmlGenericControl("br");
                coursediv.Attributes.Add("class", "course");
                var name = new HtmlGenericControl("p");
                name.Attributes.Add("class", "coursename");
                name.InnerHtml = reader1.GetValue(0).ToString() + " " + reader1.GetValue(1).ToString();
                coursediv.Controls.Add(name);
                courseremove.Controls.Add(coursediv);
                courseremove.Controls.Add(line);
            }
        }
    }
}
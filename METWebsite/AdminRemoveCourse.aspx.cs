using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Remoting.Messaging;
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
                var id = reader1.GetValue(2).ToString();
                var name = reader1.GetValue(0).ToString()+" " +reader1.GetValue(1).ToString();
                var item = new HtmlGenericControl("div");
                item.Attributes.Add("class", "alumniItem");

                var labelDiv = new HtmlGenericControl("div");
                labelDiv.Attributes.Add("class", "alumniLabelDiv");

                var label = new HtmlGenericControl("label");
                label.Attributes.Add("class", "alumniLabel");
                label.InnerText = name;

                labelDiv.Controls.Add(label);
                //var coursediv = new HtmlGenericControl("div");
                //var line = new HtmlGenericControl("br");
                //coursediv.Attributes.Add("class", "course");
                //var name2 = new HtmlGenericControl("p");
                //name2.Attributes.Add("class", "coursename");
                //name2.InnerHtml = name;
                //Button delete = new Button();
                //delete.ID = id;
                //delete.Attributes.Add("Class", "delete");
                //delete.Text = "Delete";
                //delete.Attributes.Add("runat", "server");
                //delete.Click += deleteCourse;
                //coursediv.Controls.Add(name2);
                //courseremove.Controls.Add(coursediv);
                //courseremove.Controls.Add(line);
            }
        }
        protected void deleteCourse(object sender, EventArgs e)
        {

        }

    }
}
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
    public partial class ARemoveC : System.Web.UI.Page
    {
        string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            //string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
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
                var name = reader1.GetValue(0).ToString() + " " + reader1.GetValue(1).ToString();
                var item = new HtmlGenericControl("div");
                item.Attributes.Add("class", "alumniItem");
                var labelDiv = new HtmlGenericControl("div");
                labelDiv.Attributes.Add("class", "alumniLabelDiv");
                var label = new HtmlGenericControl("label");
                label.Attributes.Add("class", "alumniLabel");
                label.InnerText = name;
                labelDiv.Controls.Add(label);
                Button delete = new Button();
                delete.ID = id;
                delete.Attributes.Add("Class", "delete");
                delete.Text = "Delete";
                delete.Attributes.Add("runat", "server");
                delete.Click += deleteCourse;

                item.Controls.Add(labelDiv);
                item.Controls.Add(delete);
                alumniList.Controls.Add(item);
            }

        }
        protected void deleteCourse(object sender, EventArgs e)
        {
            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            //create new sqlconnection and connection to database by using connection string from web.config file  
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd2 = new SqlCommand("deleteCourseS", con);
            cmd2.CommandType = System.Data.CommandType.StoredProcedure;
            cmd2.Parameters.Add(new SqlParameter("@id", ((Control)sender).ID));
            cmd2.ExecuteNonQuery();
            con.Close();

            Response.Redirect("ARemoveC.aspx");
        }

        protected void toSearchRes(object sender, ImageClickEventArgs e)
        {
            alumniList.InnerHtml = "";
            //string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            //create new sqlconnection and connection to database by using connection string from web.config file  
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand searchCourses = new SqlCommand("searchCourses", con);
            searchCourses.CommandType = System.Data.CommandType.StoredProcedure;
            String search = searchInput.Text;
            searchCourses.Parameters.Add(new SqlParameter("@name", search));

            SqlDataReader reader1 = searchCourses.ExecuteReader();
            while (reader1.Read())
            {
                var id = reader1.GetValue(2).ToString();
                var name = reader1.GetValue(0).ToString() + " " + reader1.GetValue(1).ToString();
                var item = new HtmlGenericControl("div");
                item.Attributes.Add("class", "alumniItem");
                var labelDiv = new HtmlGenericControl("div");
                labelDiv.Attributes.Add("class", "alumniLabelDiv");
                var label = new HtmlGenericControl("label");
                label.Attributes.Add("class", "alumniLabel");
                label.InnerText = name;
                labelDiv.Controls.Add(label);
                Button delete = new Button();
                delete.ID = id;
                delete.Attributes.Add("Class", "delete");
                delete.Text = "Delete";
                delete.Attributes.Add("runat", "server");
                delete.Click += deleteCourse;

                item.Controls.Add(labelDiv);
                item.Controls.Add(delete);
                alumniList.Controls.Add(item);
            }

        }
    }
}
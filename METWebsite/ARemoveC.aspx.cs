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
        Button yes = new Button();
        Button no = new Button();
        protected void Page_Load(object sender, EventArgs e)
        {
            yes.Click += Yes_Click;
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
            //string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            ////create new sqlconnection and connection to database by using connection string from web.config file  
            //SqlConnection con = new SqlConnection(strcon);

            var div = new HtmlGenericControl("div");
            var div2 = new HtmlGenericControl("div");
            var label = new HtmlGenericControl("label");
            var div3 = new HtmlGenericControl("div");
            //yes.Text = "Yes";
            //no.Text = "No";
            //yes.Attributes.Add("class", "yesnobtn");
            //yes.Attributes.Add("runat", "server");
            //no.Attributes.Add("class", "yesnobtn");
            //yes.Click += Yes_Click;

            div.Attributes.Add("class", "confirmationOverlay");
            div2.Attributes.Add("class", "confirmationBox");
            div3.Attributes.Add("class", "confirmationButtons");
            label.Attributes.Add("class", "confirmationLabel");
            div.Controls.Add(div2);
            div2.Controls.Add(label);
            div2.Controls.Add(div3);
            div3.Controls.Add(button2);
            div3.Controls.Add(button3);
            label.InnerHtml = "Are You Sure you want to delete this course ?";
            form2.Controls.Add(div);
            button2.Visible = true;
            button3.Visible = true;
            Session["id"]= ((Control)sender).ID;
            //Response.Redirect("ARemoveC.aspx");
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
        protected void Yes_Click(object sender, EventArgs e)
        {
            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            //create new sqlconnection and connection to database by using connection string from web.config file  
            SqlConnection con = new SqlConnection(strcon);
            try
            {
                con.Open();
                SqlCommand cmd2 = new SqlCommand("deleteCourseS", con);
                cmd2.CommandType = System.Data.CommandType.StoredProcedure;
                cmd2.Parameters.Add(new SqlParameter("@id", Session["id"]));
                cmd2.ExecuteNonQuery();
                con.Close();
                var div = new HtmlGenericControl("div");
                var div2 = new HtmlGenericControl("div");
                var div3 = new HtmlGenericControl("div");
                var button = new HtmlGenericControl("button");
                var img = new HtmlGenericControl("img");
                var label = new HtmlGenericControl("label");
                var span = new HtmlGenericControl("span");
                div.Attributes.Add("class", "successOverlay");
                div.Attributes.Add("id", "successOverlay");
                div2.Attributes.Add("class", "successBox");
                div3.Attributes.Add("class", "successMessage");
                button.Attributes.Add("class", "closeButton");
                button.Attributes.Add("onclick", "confirmAlumni()");
                label.Attributes.Add("class", "successLabel");
                span.InnerHtml = "x";
                label.InnerHtml = "Course sucessfully deleted";
                img.Attributes.Add("src", "./images/yes.svg");
                div3.Controls.Add(img);
                div3.Controls.Add(label);
                button.Controls.Add(span);
                div2.Controls.Add(button);
                div2.Controls.Add(div3);
                div.Controls.Add(div2);
                form2.Controls.Add(div);

            }
            catch (Exception ex)
            {
                button2.Visible = false;
                button3.Visible = false;
                var div = new HtmlGenericControl("div");
                var div2 = new HtmlGenericControl("div");
                var div3 = new HtmlGenericControl("div");
                var button = new HtmlGenericControl("button");
                var img = new HtmlGenericControl("img");
                var label = new HtmlGenericControl("label");
                var span = new HtmlGenericControl("span");
                div.Attributes.Add("class", "successOverlay");
                div.Attributes.Add("id", "successOverlay");
                div2.Attributes.Add("class", "successBox");
                div3.Attributes.Add("class", "successMessage");
                button.Attributes.Add("class", "closeButton");
                button.Attributes.Add("onclick", "confirmAlumni()");
                label.Attributes.Add("class", "successLabel");
                span.InnerHtml = "x";
                label.InnerHtml = "Course deletetion failed";
                img.Attributes.Add("src", "./images/ErrorIcon.png");
                div3.Controls.Add(img);
                div3.Controls.Add(label);
                button.Controls.Add(span);
                div2.Controls.Add(button);
                div2.Controls.Add(div3);
                div.Controls.Add(div2);
                form2.Controls.Add(div);
            }




        }
    }
}
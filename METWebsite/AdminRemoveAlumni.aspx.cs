using AjaxControlToolkit;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace METWebsite
{
    public partial class AdminRemoveAlumni : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            //create new sqlconnection and connection to database by using connection string from web.config file  
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("getAlumniName", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            SqlDataReader reader = cmd.ExecuteReader();
            string id = ""; string name = "";
            while (reader.Read())
            {
                id = reader.GetValue(0).ToString();
                name = reader.GetValue(1).ToString();

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
                delete.Text = "Select";
                delete.Attributes.Add("runat", "server");
                delete.Click += deleteAlumni;

                item.Controls.Add(labelDiv);
                item.Controls.Add(delete);

                alumniList.Controls.Add(item);
            }
            con.Close();
        }

        protected void deleteAlumni(object sender, EventArgs e)
        {
            var div = new HtmlGenericControl("div");
            var div2 = new HtmlGenericControl("div");
            var label = new HtmlGenericControl("label");
            var div3 = new HtmlGenericControl("div");

            div.Attributes.Add("class", "confirmationOverlay");
            div2.Attributes.Add("class", "confirmationBox");
            div3.Attributes.Add("class", "confirmationButtons");
            label.Attributes.Add("class", "confirmationLabel");
            div.Controls.Add(div2);
            div2.Controls.Add(label);
            div2.Controls.Add(div3);
            div3.Controls.Add(button2);
            div3.Controls.Add(button3);

            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            //create new sqlconnection and connection to database by using connection string from web.config file  
            SqlConnection con = new SqlConnection(strcon);

            SqlCommand AlumniName = new SqlCommand("searchAlumniName", con);
            AlumniName.CommandType = System.Data.CommandType.StoredProcedure;
            AlumniName.Parameters.Add(new SqlParameter("@id", ((Control)sender).ID));
            SqlParameter name = AlumniName.Parameters.Add("@name", System.Data.SqlDbType.VarChar, 100);
            name.Direction = ParameterDirection.Output;
            con.Open();
            AlumniName.ExecuteNonQuery();
            con.Close();
            label.InnerHtml = "Are You Sure That You Want To delete \"" + name.Value.ToString() + "\" from Alumni Table ?";
            form1.Controls.Add(div);
            button2.Visible = true;
            button3.Visible = true;
            Session["id"] = ((Control)sender).ID;

        }


        protected void Yes_Click(object sender, EventArgs e)
        {

            try
            {
                string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
                //create new sqlconnection and connection to database by using connection string from web.config file  
                SqlConnection con = new SqlConnection(strcon);
                con.Open();
                SqlCommand cmd2 = new SqlCommand("deleteAlumni", con);
                cmd2.CommandType = System.Data.CommandType.StoredProcedure;
                cmd2.Parameters.Add(new SqlParameter("@id", Session["id"]));
                cmd2.ExecuteNonQuery();
                con.Close();

                button2.Visible = false;
                button3.Visible = false;
                var div = new HtmlGenericControl("div");
                var div2 = new HtmlGenericControl("div");
                var div3 = new HtmlGenericControl("div");
                Button button = new Button();
                button.Click += x_click;
                button.Attributes.Add("runat", "server");
                button.Text = "X";

                var img = new HtmlGenericControl("img");
                var label = new HtmlGenericControl("label");
                div.Attributes.Add("class", "successOverlay");
                div.Attributes.Add("id", "successOverlay");
                div2.Attributes.Add("class", "successBox");
                div3.Attributes.Add("class", "successMessage");
                button.Attributes.Add("class", "closeButton");
                label.Attributes.Add("class", "successLabel");
                label.InnerHtml = "Alumni Is Deleted Successfully";
                img.Attributes.Add("src", "./images/yes.svg");
                div3.Controls.Add(img);
                div3.Controls.Add(label);
                div2.Controls.Add(button);
                div2.Controls.Add(div3);
                div.Controls.Add(div2);
                form1.Controls.Add(div);
            }
            catch (Exception ex)
            {
                button2.Visible = false;
                button3.Visible = false;
                var div = new HtmlGenericControl("div");
                var div2 = new HtmlGenericControl("div");
                var div3 = new HtmlGenericControl("div");

                Button button = new Button();
                button.Click += x_click;
                button.Attributes.Add("runat", "server");
                button.Text = "x";

                var img = new HtmlGenericControl("img");
                var label = new HtmlGenericControl("label");
                var span = new HtmlGenericControl("span");
                div.Attributes.Add("class", "successOverlay");
                div.Attributes.Add("id", "successOverlay");
                div2.Attributes.Add("class", "successBox");
                div3.Attributes.Add("class", "successMessage");
                button.Attributes.Add("class", "closeButton");
                label.Attributes.Add("class", "successLabel");
                label.InnerHtml = "Error Adding The Alumni To The Database!";
                img.Attributes.Add("src", "./images/ErrorIcon.png");
                div3.Controls.Add(img);
                div3.Controls.Add(label);
                div2.Controls.Add(button);
                div2.Controls.Add(div3);
                div.Controls.Add(div2);
                form1.Controls.Add(div);
            }
        }

        protected void x_click(object sender, EventArgs e)
        {

            Response.Redirect("AdminRemoveAlumni.aspx");
        }


        protected void toSearchRes(object sender, ImageClickEventArgs e)
        {
            alumniList.InnerHtml = "";

            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            //create new sqlconnection and connection to database by using connection string from web.config file  
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("searchAlumni", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            String search = searchInput.Text;
            cmd.Parameters.Add(new SqlParameter("@name", search));

            SqlDataReader reader = cmd.ExecuteReader();
            string id = ""; string name = "";
            while (reader.Read())
            {
                id = reader.GetValue(0).ToString();
                name = reader.GetValue(1).ToString();

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
                delete.Click += deleteAlumni;

                item.Controls.Add(labelDiv);
                item.Controls.Add(delete);

                alumniList.Controls.Add(item);
            }
            con.Close();
        }
    }
}
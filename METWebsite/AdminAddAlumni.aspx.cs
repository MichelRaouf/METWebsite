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
    public partial class AdminAddAlumni : System.Web.UI.Page
    {
        Button yes = new Button();
        Button no = new Button();
        protected void Page_Load(object sender, EventArgs e)
        {
            yes.Click += Yes_Click;
        }

       protected void button1_Click(object sender, EventArgs e)
        {
            //var div = document.createElement("div");
            //var label = document.createElement("label");
            //label.innerHTML = "Are you sure that you want to add " + document.getElementById("nameInput").nodeValue;
            //div.setAttribute("class", "confirmdiv");
            //document.getElementById("form1").appendChild(div); 

            var div = new HtmlGenericControl("div");
            var div2 = new HtmlGenericControl("div");
            var label = new HtmlGenericControl("label");
            var div3 = new HtmlGenericControl("div");
            
            yes.ID = "1";
            
            yes.Text = "Yes";
            no.Text = "No";
            yes.Attributes.Add("class", "yesnobtn");
            yes.Attributes.Add("runat", "server");
            no.Attributes.Add("class", "yesnobtn");
            yes.Click += Yes_Click;

            div.Attributes.Add("class", "confirmationOverlay");
            div2.Attributes.Add("class", "confirmationBox");
            div3.Attributes.Add("class", "confirmationButtons");
            label.Attributes.Add("class", "confirmationLabel"); 
            div.Controls.Add(div2);
            div2.Controls.Add(label);
            div2.Controls.Add(div3);
            div3.Controls.Add(button2);
            div3.Controls.Add(button3);
            label.InnerHtml = "Are You Sure That You Want To Add \"" + nameInput.Value + "\" As A New Alumni ?";
            form1.Controls.Add(div);
            button2.Visible = true;
            button3.Visible = true;






        }
      

        protected void Yes_Click(object sender, EventArgs e)
        {
            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            //create new sqlconnection and connection to database by using connection string from web.config file  
            SqlConnection con = new SqlConnection(strcon);
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("AdminAddAlumni", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@name", nameInput.Value));
                cmd.Parameters.Add(new SqlParameter("@description", aboutInput.Value));
                cmd.Parameters.Add(new SqlParameter("@image_url", "aa"));
                cmd.ExecuteNonQuery();
                con.Close();
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
                label.InnerHtml = "Alumni Is Added Successfully";
                img.Attributes.Add("src", "./images/yes.svg");
                div3.Controls.Add(img);
                div3.Controls.Add(label);
                button.Controls.Add(span);
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
                label.InnerHtml = "Error Adding The Alumni To The Database!";
                img.Attributes.Add("src", "./images/ErrorIcon.png");
                div3.Controls.Add(img);
                div3.Controls.Add(label);
                button.Controls.Add(span);
                div2.Controls.Add(button);
                div2.Controls.Add(div3);
                div.Controls.Add(div2);
                form1.Controls.Add(div);
            }
          


         
        }

        
    }
}
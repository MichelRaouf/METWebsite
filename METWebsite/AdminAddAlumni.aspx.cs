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
            var label = new HtmlGenericControl("label");
            var div2 = new HtmlGenericControl("div");
            
            yes.ID = "1";
            
            yes.Text = "Yes";
            no.Text = "No";
            yes.Attributes.Add("class", "yesnobtn");
            yes.Attributes.Add("runat", "server");
            no.Attributes.Add("class", "yesnobtn");
            yes.Click += Yes_Click;

            div2.Attributes.Add("class", "yesnodiv");
            div2.Controls.Add(button2);
            div2.Controls.Add(button3);
            button2.Visible = true;
            button3.Visible = true;

            label.InnerHtml = "Are you sure that you want to add" + nameInput.Value;
            label.Attributes.Add("class", "confirmlabel");
            div.Attributes.Add("class", "confirmdiv");
            div.Controls.Add(label);
            div.Controls.Add(div2);
            form1.Controls.Add(div);
        }

        protected void Yes_Click(object sender, EventArgs e)
        {
            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            //create new sqlconnection and connection to database by using connection string from web.config file  
            SqlConnection con = new SqlConnection(strcon);
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
            var label = new HtmlGenericControl("label");
            var imgbtn = new ImageButton();
            imgbtn.Attributes.Add("src", "./images/xbutton.svg");
            imgbtn.Attributes.Add("class", "xbutton");
            label.InnerHtml = "Alumni is Added Successfully";
            label.Attributes.Add("class", "confirmlabel2");
            div.Attributes.Add("class", "successdiv");
            var img = new HtmlGenericControl("img");
            img.Attributes.Add("class", "img1");
            img.Attributes.Add("src", "./images/yes.svg");
            div.Controls.Add(img);
            div.Controls.Add(label);
            div.Controls.Add(imgbtn);
            form1.Controls.Add(div);
        }

        
    }
}

using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;


namespace METWebsite
{

    public partial class AdminAddStudentActivity : System.Web.UI.Page
    {
        public static int count = 0;
        public static ArrayList boxes = new ArrayList();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addStudentActivity(object sender, EventArgs e)
        {
            String titleClub = title.Value.ToString();
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

            label.InnerHtml = "Are You Sure That You Want To Add \"" + titleClub + "\" To Student Activities Table ?";
            form1.Controls.Add(div);
            button2.Visible = true;
            button3.Visible = true;

        }
        protected void x_click(object sender, EventArgs e)
        {
            Response.Redirect("AdminAddStudentActivity.aspx");

        }

        protected void Yes_Click(object sender, EventArgs e)
        {
            try
            {
                string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
                //create new sqlconnection and connection to database by using connection string from web.config file  
                SqlConnection con = new SqlConnection(strcon);
                con.Open();
                SqlCommand cmd = new SqlCommand("addStudentActivity", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                String titleClub = title.Value.ToString();
                String typeClub = type.Value.ToString();
                String aboutClub = about.Value.ToString();
                String facebookLinkClub = facebook.Value.ToString();
                String instagramLinkClub = instagram.Value.ToString();

                cmd.Parameters.Add(new SqlParameter("@title", titleClub));
                cmd.Parameters.Add(new SqlParameter("@type", typeClub));
                cmd.Parameters.Add(new SqlParameter("@about", aboutClub));
                cmd.Parameters.Add(new SqlParameter("@facebook", facebookLinkClub));
                cmd.Parameters.Add(new SqlParameter("@instagram", instagramLinkClub));

                if (Hidden1.Value == "1")
                {
                    cmd.Parameters.Add(new SqlParameter("@gradient", "linear-gradient(to right,rgba(0, 0, 0, 1),rgba(237, 28, 36, 0.9))"));
                }
                else if (Hidden2.Value == "1")
                {
                    cmd.Parameters.Add(new SqlParameter("@gradient", "linear-gradient(to left,rgba(22, 160, 93, 1),rgba(79, 141, 245, 1),rgba(22, 160, 93, 1))"));
                }
                else if (Hidden3.Value == "1")
                {
                    cmd.Parameters.Add(new SqlParameter("@gradient", "linear-gradient(to left,rgba(10, 71, 152, 0.5),rgba(10, 71, 152, 1))"));
                }
                else if (Hidden4.Value == "1")
                {
                    cmd.Parameters.Add(new SqlParameter("@gradient", "linear-gradient(to right,RGBA(27,51,124,100),RGBA(237,28,36,90))"));
                }
                else if (Hidden5.Value == "1")
                {
                    cmd.Parameters.Add(new SqlParameter("@gradient", "linear-gradient(to right,rgba(51, 102, 187, 1),rgba(51, 102, 187, 1),rgba(37, 175, 68, 1))"));
                }
                else
                {
                    cmd.Parameters.Add(new SqlParameter("@gradient", "linear-gradient(to right,rgba(0, 0, 0, 1),rgba(237, 28, 36, 0.9))"));

                }

                cmd.ExecuteNonQuery();
                con.Close();

                SqlCommand cmd2 = new SqlCommand("addTrackToStudentActivity", con);
                cmd2.CommandType = System.Data.CommandType.StoredProcedure;
                con.Open();

                if (TextTrack1.Value.ToString() != null)
                    cmd2.Parameters.Add(new SqlParameter("@track", TextTrack1.Value.ToString()));

                else if (TextTrack2.Value.ToString() != null)
                    cmd2.Parameters.Add(new SqlParameter("@track", TextTrack2.Value.ToString()));

                else if (TextTrack3.Value.ToString() != null)
                    cmd2.Parameters.Add(new SqlParameter("@track", TextTrack3.Value.ToString()));

                else if (TextTrack4.Value.ToString() != null)
                    cmd2.Parameters.Add(new SqlParameter("@track", TextTrack4.Value.ToString()));

                else if (TextTrack5.Value.ToString() != null)
                    cmd2.Parameters.Add(new SqlParameter("@track", TextTrack5.Value.ToString()));

                cmd2.ExecuteNonQuery();
                con.Close();



                HttpPostedFile file = Request.Files["fileUpload"];

                //check file was submitted
                if (file != null && file.ContentLength > 0)
                {
                    string fname = Path.GetFileName(file.FileName);
                    file.SaveAs(Server.MapPath(Path.Combine(@"~/images/stActivitiesPageImages", fname)));
                }

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
                label.InnerHtml = "Student Activity Is Added Successfully";
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
                label.InnerHtml = "Error Adding The Student Activity To The Database!";
                img.Attributes.Add("src", "./images/ErrorIcon.png");
                div3.Controls.Add(img);
                div3.Controls.Add(label);
                div2.Controls.Add(button);
                div2.Controls.Add(div3);
                div.Controls.Add(div2);
                form1.Controls.Add(div);
            }
        }

        protected void addTextBox(object sender, EventArgs e)
        {
            TextBox t1 = new TextBox();
            t1.Attributes.Add("type", "text");
            t1.Attributes.Add("class", "input");
            t1.Attributes.Add("runat", "server");
            boxes.Add(t1);
            // hidden.Controls.Add(t1);
        }
    }

}
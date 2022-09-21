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
    public partial class AdminSetting : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            //create new sqlconnection and connection to database by using connection string from web.config file  
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("getCurrentSetting", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            SqlDataReader reader = cmd.ExecuteReader();
            string season = ""; string year = "";
            reader.Read();
            season = reader.GetValue(0).ToString();
            year = reader.GetValue(1).ToString();
            con.Close();

            seasonInput.Value = season;
           
            var setting = new HtmlGenericControl("input");
            setting.Attributes.Add("id", "hidden");
            setting.Attributes.Add("type", "hidden");
            setting.Attributes.Add("settingYear", year);
            yearDiv.Controls.Add(setting);
        }

        protected void updateSetting(object sender, EventArgs e)
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
            Session["id"] = ((Control)sender).ID;
            div3.Controls.Add(button2);
            div3.Controls.Add(button3);
            label.InnerHtml = "Are You Sure That You Want to Update Setting To "+ seasonScript.Value+" "+ yearScript.Value+"?";
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
                SqlCommand cmd2 = new SqlCommand("updateSetting", con);
                cmd2.CommandType = System.Data.CommandType.StoredProcedure;
                cmd2.Parameters.Add(new SqlParameter("@season", seasonScript.Value));
                cmd2.Parameters.Add(new SqlParameter("@year", yearScript.Value));
                cmd2.ExecuteNonQuery();
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
                button.Attributes.Add("onclick", "refresh()");
                label.Attributes.Add("class", "successLabel");
                span.InnerHtml = "x";
                label.InnerHtml = "Setting Is Updated Successfully";
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
                label.InnerHtml = "deletetion failed";
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
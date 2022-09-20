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
    public partial class AdminDefineWeeks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            EnableViewState = false;
            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            //create new sqlconnection and connection to database by using connection string from web.config file  
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd2 = new SqlCommand("getWeeks", con);
            cmd2.CommandType = System.Data.CommandType.StoredProcedure;
            SqlDataReader reader = cmd2.ExecuteReader();
            string id = ""; string startDate = ""; string endDate = "";
            var counter = 1;
            while (reader.Read())
            {
                id = reader.GetValue(0).ToString();
                startDate = reader.GetValue(1).ToString();
                endDate = reader.GetValue(2).ToString();

                var definedWeekDiv = new HtmlGenericControl("div");
                definedWeekDiv.Attributes.Add("class", "definedWeekDiv");

                //
                var definedWeekNoContainer = new HtmlGenericControl("div");
                definedWeekNoContainer.Attributes.Add("class", "definedWeekNoContainer");

                var definedWeekLabel = new HtmlGenericControl("label");
                definedWeekLabel.Attributes.Add("class", "definedWeekLabel");
                definedWeekLabel.InnerText = "Week";

                var definedWeekNoLabel = new HtmlGenericControl("label");
                definedWeekNoLabel.Attributes.Add("class", "definedWeekNoLabel");
                definedWeekNoLabel.InnerText = counter.ToString();

                definedWeekNoContainer.Controls.Add(definedWeekLabel);
                definedWeekNoContainer.Controls.Add(definedWeekNoLabel);
                //
                var definedStartDiv = new HtmlGenericControl("div");
                definedStartDiv.Attributes.Add("class", "definedStartDiv");

                var definedStartLabel = new HtmlGenericControl("label");
                definedStartLabel.Attributes.Add("class", "definedStartLabel");
                definedStartLabel.InnerText = "Starts at";

                var definedStartDate = new HtmlGenericControl("label");
                definedStartDate.Attributes.Add("class", "definedStartDate");
                definedStartDate.InnerText = startDate;

                definedStartDiv.Controls.Add(definedStartLabel);
                definedStartDiv.Controls.Add(definedStartDate);
                //
                var and = new HtmlGenericControl("div");
                and.Attributes.Add("class", "&");
                and.InnerText = "&";
                //
                var definedEndDiv = new HtmlGenericControl("div");
                definedEndDiv.Attributes.Add("class", "definedEndDiv");

                var definedEndLabel = new HtmlGenericControl("label");
                definedEndLabel.Attributes.Add("class", "definedEndLabel");
                definedEndLabel.InnerText = "Ends at";

                var definedEndDate = new HtmlGenericControl("label");
                definedEndDate.Attributes.Add("class", "definedEndDate");
                definedEndDate.InnerText = endDate;

                definedEndDiv.Controls.Add(definedEndLabel);
                definedEndDiv.Controls.Add(definedEndDate);
                //
                LinkButton trashButton = new LinkButton();
                trashButton.ID = id;
                trashButton.Attributes.Add("Class", "trashButton");
                trashButton.Attributes.Add("runat", "server");
                trashButton.Click += deleteWeek;

                var trash = new HtmlGenericControl("span");
                trash.Attributes.Add("class", "trash");

                var innerSpan = new HtmlGenericControl("span");
                innerSpan.Attributes.Add("class", "innerSpan");

                var i = new HtmlGenericControl("i");

                trash.Controls.Add(innerSpan);
                trash.Controls.Add(i);

                trashButton.Controls.Add(trash);
                //
                definedWeekDiv.Controls.Add(definedWeekNoContainer);
                definedWeekDiv.Controls.Add(definedStartDiv);
                definedWeekDiv.Controls.Add(and);
                definedWeekDiv.Controls.Add(definedEndDiv);
                definedWeekDiv.Controls.Add(trashButton);
                //
                var separatingBar = new HtmlGenericControl("span");
                separatingBar.Attributes.Add("class", "separatingBar");

                definedWeeksContainer.Controls.Add(definedWeekDiv);
                counter++;
            }
            con.Close();
        }

        protected void addWeek(object sender, EventArgs e)
        {
            DateTime startDateTime = DateTime.Parse(startDate.Value);
            DateTime endDateTime = DateTime.Parse(endDate.Value);
            DateTime now = DateTime.Now;

            //if (endDateTime < startDateTime)
            //{
            //    Response.Write("<script>alert('Start date should be before end date!')</script>");
            //    return;
            //}
            //else if (startDateTime < now)
            //{
            //    Response.Write("<script>alert('Week should start after today!')</script>");
            //    return;
            //}
            //else if ((endDateTime - startDateTime).TotalDays != 7)
            //{
            //    Response.Write("<script>alert('A Week should be 7 days!')</script>");
            //    return;
            //}

            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            //create new sqlconnection and connection to database by using connection string from web.config file  
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("insertWeek", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            String start = startDate.Value.ToString();
            String end = endDate.Value.ToString();

            cmd.Parameters.Add(new SqlParameter("@startDate", start));
            cmd.Parameters.Add(new SqlParameter("@endDate", end));

            cmd.ExecuteNonQuery();
            con.Close();
            
            Response.Redirect("AdminDefineWeeks.aspx");
        }

        protected void deleteWeek(object sender, EventArgs e)
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
            label.InnerHtml = "Are You Sure That You Want to Delete This Week?";
            form1.Controls.Add(div);
            button2.Visible = true;
            button3.Visible = true;
        }
        protected void Yes_Click(object sender, EventArgs e)
        {
            
            //Response.Write("<script>alert('A Week should be 7 days!')</script>");
            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            //create new sqlconnection and connection to database by using connection string from web.config file  
            SqlConnection con = new SqlConnection(strcon);
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("deleteWeek", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@week_number", Session["id"]));

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
                button.Attributes.Add("onclick", "refresh()");
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
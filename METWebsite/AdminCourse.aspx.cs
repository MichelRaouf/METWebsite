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
    public partial class temp9 : System.Web.UI.Page
    {
        string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("getAllCourses", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            SqlDataReader reader = cmd.ExecuteReader();
            String code = "";
            String name = "";
            int serial = 0;
            while (reader.Read())
            {
                code = reader.GetValue(0).ToString();
                name = reader.GetValue(1).ToString();
                serial = Int32.Parse(reader.GetValue(2).ToString());
                var labelDiv = new HtmlGenericControl("div");
                labelDiv.Attributes.Add("class", "labelDiv");
                labelDiv.InnerHtml = "(" + code + ") " + name;
                var buttonsDiv = new HtmlGenericControl("div");
                buttonsDiv.Attributes.Add("class", "buttonsDiv");
                Button editButton = new Button();
                editButton.ID = "edit" + serial;
                editButton.Text += "Edit";
                editButton.Attributes.Add("runat", "server");
                editButton.CssClass += "editButton";
                editButton.Click += EditCourse;
                Button deleteButton = new Button();
                deleteButton.ID = "delete" + serial;
                deleteButton.Text += "Delete";
                deleteButton.Attributes.Add("runat", "server");
                deleteButton.CssClass += "deleteButton";
                deleteButton.Click += DeleteCourse;
                deleteButton.Attributes.Add("@onclick:stopPropagation", "true");
                buttonsDiv.Controls.Add(editButton);
                buttonsDiv.Controls.Add(deleteButton);
                var courseItem = new HtmlGenericControl("div");
                courseItem.Attributes.Add("class", "ItemDiv");
                courseItem.Controls.Add(labelDiv);
                courseItem.Controls.Add(buttonsDiv);
                itemsDiv.Controls.Add(courseItem);
            }
        }
        protected void toSearchRes(object sender, EventArgs e)
        {
            itemsDiv.InnerHtml = "";
            Button addButton = new Button();
            addButton.Text += "Add Course";
            addButton.Attributes.Add("runat", "server");
            addButton.CssClass += "addButton";
            addButton.Click += AddCourse;
            var addCourseItem = new HtmlGenericControl("div");
            addCourseItem.Attributes.Add("class", "addCourseItem");
            addCourseItem.Controls.Add(addButton);
            itemsDiv.Controls.Add(addCourseItem);
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("searchCourses", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            String search = searchInput.Text;
            cmd.Parameters.Add(new SqlParameter("@name", search));
            SqlDataReader reader = cmd.ExecuteReader();
            String code = "";
            String name = "";
            int serial = 0;
            while (reader.Read())
            {
                code = reader.GetValue(0).ToString();
                name = reader.GetValue(1).ToString();
                serial = Int32.Parse(reader.GetValue(2).ToString());
                var labelDiv = new HtmlGenericControl("div");
                labelDiv.Attributes.Add("class", "labelDiv");
                labelDiv.InnerHtml = "(" + code + ") " + name;
                var buttonsDiv = new HtmlGenericControl("div");
                buttonsDiv.Attributes.Add("class", "buttonsDiv");
                Button editButton = new Button();
                editButton.ID = "edit" + serial;
                editButton.Text += "Edit";
                editButton.Attributes.Add("runat", "server");
                editButton.CssClass += "editButton";
                editButton.Click += EditCourse;
                Button deleteButton = new Button();
                deleteButton.ID = "delete" + serial;
                deleteButton.Text += "Delete";
                deleteButton.Attributes.Add("runat", "server");
                deleteButton.CssClass += "deleteButton";
                deleteButton.Click += DeleteCourse;
                buttonsDiv.Controls.Add(editButton);
                buttonsDiv.Controls.Add(deleteButton);
                var courseItem = new HtmlGenericControl("div");
                courseItem.Attributes.Add("class", "courseItem");
                courseItem.Controls.Add(labelDiv);
                courseItem.Controls.Add(buttonsDiv);
                itemsDiv.Controls.Add(courseItem);
            }
        }
        protected void AddCourse(object sender, EventArgs e)
        {
            Response.Redirect("AdminAddCourse.aspx");
        }
        protected void EditCourse(object sender, EventArgs e)
        {
            Session["courseID"] = ((Control)sender).ID;
            Response.Redirect("AdminEditCourse.aspx");
        }
        protected void DeleteCourse(object sender, EventArgs e)
        {
            Session["deleteID"] = (((Control)sender).ID).Substring(6);
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
            div3.Controls.Add(yesButton);
            div3.Controls.Add(noButton);
            label.InnerHtml = "Are you sure you want to delete this course?";
            yesButton.Visible = true;
            noButton.Visible = true;
            form1.Controls.Add(div);
        }
        protected void ConfirmDelete(object sender, EventArgs e)
        {
            int serial = Int32.Parse(Session["deleteID"].ToString());
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                con.Open();
                SqlCommand cmd = new SqlCommand("deleteCourseS", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@id", serial));
                cmd.ExecuteNonQuery();
                con.Close();
                yesButton.Visible = false;
                noButton.Visible = false;
                successOverlay.Style.Add("display", "block");
            }
            catch (Exception ex)
            {
                yesButton.Visible = false;
                noButton.Visible = false;
                failedOverlay.Style.Add("display", "block");
            }
        }
        protected void x_click(object sender, EventArgs e)
        {
            Response.Redirect("temp.aspx");
        }
        protected void NoDelete(object sender, EventArgs e)
        {
            Response.Redirect("temp.aspx");
        }
    }
}
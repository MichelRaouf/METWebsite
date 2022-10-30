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
    public partial class AdminFaculty : System.Web.UI.Page
    {
        string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("getAllFaculties", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            SqlDataReader reader = cmd.ExecuteReader();
            int serial = 0;
            String name = "";
            while (reader.Read())
            {
                serial = Int32.Parse(reader.GetValue(0).ToString());
                name = reader.GetValue(1).ToString();
                var labelDiv = new HtmlGenericControl("div");
                labelDiv.Attributes.Add("class", "labelDiv");
                labelDiv.InnerHtml = name;
                var buttonsDiv = new HtmlGenericControl("div");
                buttonsDiv.Attributes.Add("class", "buttonsDiv");
                Button deleteButton = new Button();
                deleteButton.ID = "delete" + serial;
                deleteButton.Text += "Delete";
                deleteButton.Attributes.Add("runat", "server");
                deleteButton.CssClass += "deleteButton";
                deleteButton.Click += DeleteFaculty;
                buttonsDiv.Controls.Add(deleteButton);
                var facultyItem = new HtmlGenericControl("div");
                facultyItem.Attributes.Add("class", "ItemDiv");
                facultyItem.Controls.Add(labelDiv);
                facultyItem.Controls.Add(buttonsDiv);
                itemsDiv.Controls.Add(facultyItem);
            }
        }
        protected void toSearchRes(object sender, EventArgs e)
        {
            itemsDiv.InnerHtml = "";
            Button addButton = new Button();
            addButton.Text += "Add Faculty";
            addButton.Attributes.Add("runat", "server");
            addButton.CssClass += "addButton";
            addButton.Click += AddFaculty;
            var addFacultyItem = new HtmlGenericControl("div");
            addFacultyItem.Attributes.Add("class", "addItemsDiv");
            addFacultyItem.Controls.Add(addButton);
            itemsDiv.Controls.Add(addFacultyItem);
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("searchFaculties", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            String search = searchInput.Text;
            cmd.Parameters.Add(new SqlParameter("@name", search));
            SqlDataReader reader = cmd.ExecuteReader();
            int serial = 0;
            String name = "";
            while (reader.Read())
            {
                serial = Int32.Parse(reader.GetValue(0).ToString());
                name = reader.GetValue(1).ToString();
                var labelDiv = new HtmlGenericControl("div");
                labelDiv.Attributes.Add("class", "labelDiv");
                labelDiv.InnerHtml = name;
                var buttonsDiv = new HtmlGenericControl("div");
                buttonsDiv.Attributes.Add("class", "buttonsDiv");
                Button deleteButton = new Button();
                deleteButton.ID = "delete" + serial;
                deleteButton.Text += "Delete";
                deleteButton.Attributes.Add("runat", "server");
                deleteButton.CssClass += "deleteButton";
                deleteButton.Click += DeleteFaculty;
                buttonsDiv.Controls.Add(deleteButton);
                var courseItem = new HtmlGenericControl("div");
                courseItem.Attributes.Add("class", "ItemDiv");
                courseItem.Controls.Add(labelDiv);
                courseItem.Controls.Add(buttonsDiv);
                itemsDiv.Controls.Add(courseItem);
            }
        }
        protected void AddFaculty(object sender, EventArgs e)
        {
            Response.Redirect("AdminAddFaculty.aspx");
        }
        protected void DeleteFaculty(object sender, EventArgs e)
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
            String facultyName = "";
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmdName = new SqlCommand("getFacultyBySerial", con);
            cmdName.CommandType = System.Data.CommandType.StoredProcedure;
            cmdName.Parameters.Add(new SqlParameter("@faculty_serial", Int32.Parse(Session["deleteID"].ToString())));
            SqlDataReader readerCode = cmdName.ExecuteReader();
            while (readerCode.Read())
            {
                facultyName = readerCode.GetValue(0).ToString();
            }
            con.Close();
            label.InnerHtml = "Are you sure you want to delete (" + facultyName + ")?";
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
                SqlCommand cmd = new SqlCommand("deleteFaculty", con);
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
        protected void NoDelete(object sender, EventArgs e)
        {
            Response.Redirect("AdminFaculty.aspx");
        }
        protected void x_click(object sender, EventArgs e)
        {
            Response.Redirect("AdminFaculty.aspx");
        }
    }
}
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
    public partial class AdminStudentActivity : System.Web.UI.Page
    {
        string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("getClubName", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            SqlDataReader reader = cmd.ExecuteReader();
            int id = 0;
            String name = "";
            while (reader.Read())
            {
                id = Int32.Parse(reader.GetValue(0).ToString());
                name = reader.GetValue(1).ToString();
                var labelDiv = new HtmlGenericControl("div");
                labelDiv.Attributes.Add("class", "labelDiv");
                labelDiv.InnerHtml = name;
                var buttonsDiv = new HtmlGenericControl("div");
                buttonsDiv.Attributes.Add("class", "buttonsDiv");
                Button deleteButton = new Button();
                deleteButton.ID = "delete" + id;
                deleteButton.Text += "Delete";
                deleteButton.Attributes.Add("runat", "server");
                deleteButton.CssClass += "deleteButton";
                deleteButton.Click += DeleteStudentActivity;
                buttonsDiv.Controls.Add(deleteButton);
                var stActivityItem = new HtmlGenericControl("div");
                stActivityItem.Attributes.Add("class", "ItemDiv");
                stActivityItem.Controls.Add(labelDiv);
                stActivityItem.Controls.Add(buttonsDiv);
                itemsDiv.Controls.Add(stActivityItem);
            }
        }
        protected void toSearchRes(object sender, EventArgs e)
        {
            itemsDiv.InnerHtml = "";
            Button addButton = new Button();
            addButton.Text += "Add Student Actiivity";
            addButton.Attributes.Add("runat", "server");
            addButton.CssClass += "addButton";
            addButton.Click += AddStudentActivity;
            var addStActivityItem = new HtmlGenericControl("div");
            addStActivityItem.Attributes.Add("class", "addItemsDiv");
            addStActivityItem.Controls.Add(addButton);
            itemsDiv.Controls.Add(addStActivityItem);
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("searchStudentActivity", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            String search = searchInput.Text;
            cmd.Parameters.Add(new SqlParameter("@name", search));
            SqlDataReader reader = cmd.ExecuteReader();
            int id = 0;
            String name = "";
            while (reader.Read())
            {
                id = Int32.Parse(reader.GetValue(0).ToString());
                name = reader.GetValue(1).ToString();
                var labelDiv = new HtmlGenericControl("div");
                labelDiv.Attributes.Add("class", "labelDiv");
                labelDiv.InnerHtml = name;
                var buttonsDiv = new HtmlGenericControl("div");
                buttonsDiv.Attributes.Add("class", "buttonsDiv");
                Button deleteButton = new Button();
                deleteButton.ID = "delete" + id;
                deleteButton.Text += "Delete";
                deleteButton.Attributes.Add("runat", "server");
                deleteButton.CssClass += "deleteButton";
                deleteButton.Click += DeleteStudentActivity;
                buttonsDiv.Controls.Add(deleteButton);
                var stActivityItem = new HtmlGenericControl("div");
                stActivityItem.Attributes.Add("class", "ItemDiv");
                stActivityItem.Controls.Add(labelDiv);
                stActivityItem.Controls.Add(buttonsDiv);
                itemsDiv.Controls.Add(stActivityItem);
            }
        }
        protected void AddStudentActivity(object sender, EventArgs e)
        {
            Response.Redirect("AdminAddStudentActivity.aspx");
        }
        protected void DeleteStudentActivity(object sender, EventArgs e)
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
            String stActivityName = "";
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmdName = new SqlCommand("getStActivityBySerial", con);
            cmdName.CommandType = System.Data.CommandType.StoredProcedure;
            cmdName.Parameters.Add(new SqlParameter("@stActivity_serial", Int32.Parse(Session["deleteID"].ToString())));
            SqlDataReader readerCode = cmdName.ExecuteReader();
            while (readerCode.Read())
            {
                stActivityName = readerCode.GetValue(1).ToString();
            }
            con.Close();
            label.InnerHtml = "Are you sure you want to delete (" + stActivityName + ")?";
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
                SqlCommand cmd = new SqlCommand("deleteStudentActivity", con);
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
            Response.Redirect("AdminStudentActivity.aspx");
        }
        protected void x_click(object sender, EventArgs e)
        {
            Response.Redirect("AdminStudentActivity.aspx");
        }
    }
}
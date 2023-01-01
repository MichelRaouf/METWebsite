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
    public partial class AdminAlumni : System.Web.UI.Page
    {
        string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("getAlumniName", con);
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
                deleteButton.Click += DeleteAlumni;
                buttonsDiv.Controls.Add(deleteButton);
                var alumniItem = new HtmlGenericControl("div");
                alumniItem.Attributes.Add("class", "ItemDiv");
                alumniItem.Controls.Add(labelDiv);
                alumniItem.Controls.Add(buttonsDiv);
                itemsDiv.Controls.Add(alumniItem);
            }
        }
        protected void toSearchRes(object sender, EventArgs e)
        {
            itemsDiv.InnerHtml = "";
            Button addButton = new Button();
            addButton.Text += "Add Alumni";
            addButton.Attributes.Add("runat", "server");
            addButton.CssClass += "addButton";
            addButton.Click += AddAlumni;
            var addAlumniItem = new HtmlGenericControl("div");
            addAlumniItem.Attributes.Add("class", "addItemsDiv");
            addAlumniItem.Controls.Add(addButton);
            itemsDiv.Controls.Add(addAlumniItem);
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("searchAlumni", con);
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
                deleteButton.Click += DeleteAlumni;
                buttonsDiv.Controls.Add(deleteButton);
                var alumniItem = new HtmlGenericControl("div");
                alumniItem.Attributes.Add("class", "ItemDiv");
                alumniItem.Controls.Add(labelDiv);
                alumniItem.Controls.Add(buttonsDiv);
                itemsDiv.Controls.Add(alumniItem);
            }
        }
        protected void AddAlumni(object sender, EventArgs e)
        {
            Response.Redirect("AdminAddAlumni.aspx");
        }
        protected void DeleteAlumni(object sender, EventArgs e)
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
            String alumniName = "";
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmdName = new SqlCommand("getAlumniBySerial", con);
            cmdName.CommandType = System.Data.CommandType.StoredProcedure;
            cmdName.Parameters.Add(new SqlParameter("@alumni_serial", Int32.Parse(Session["deleteID"].ToString())));
            SqlDataReader readerCode = cmdName.ExecuteReader();
            while (readerCode.Read())
            {
                alumniName = readerCode.GetValue(1).ToString();
            }
            con.Close();
            label.InnerHtml = "Are you sure you want to delete (" + alumniName + ")?";
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
                SqlCommand cmd = new SqlCommand("deleteAlumni", con);
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
            Response.Redirect("AdminAlumni.aspx");
        }
        protected void x_click(object sender, EventArgs e)
        {
            Response.Redirect("AdminAlumni.aspx");
        }
    }
}
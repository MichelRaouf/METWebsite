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
    public partial class AdminMajor : System.Web.UI.Page
    {
        string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd0 = new SqlCommand("getAllFaculties", con);
            cmd0.CommandType = System.Data.CommandType.StoredProcedure;
            SqlDataReader reader0 = cmd0.ExecuteReader();
            List<int> facultyIDs = new List<int>();
            List<String> facultyNames = new List<String>();
            while (reader0.Read())
            {
                facultyIDs.Add(Int32.Parse(reader0.GetValue(0).ToString()));
                facultyNames.Add(reader0.GetValue(1).ToString());
            }
            con.Close();
            int i = 0;
            while (i < facultyIDs.Count)
            {
                var facultyDiv = new HtmlGenericControl("div");
                facultyDiv.Attributes.Add("class", "facultyDiv");
                facultyDiv.Attributes.Add("id", "faculty" + facultyIDs.ElementAt(i));
                var facultyLabel = new HtmlGenericControl("label");
                facultyLabel.Attributes.Add("class", "facultyLabel");
                facultyLabel.InnerHtml = facultyNames.ElementAt(i);
                facultyDiv.Controls.Add(facultyLabel);
                con.Open();
                SqlCommand cmd = new SqlCommand("getMajors", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@facID", facultyIDs.ElementAt(i)));
                SqlDataReader reader = cmd.ExecuteReader();
                int majorID = 0;
                String majorName = "";
                while (reader.Read())
                {
                    majorID = Int32.Parse(reader.GetValue(0).ToString());
                    majorName = reader.GetValue(1).ToString();
                    var labelDiv = new HtmlGenericControl("div");
                    labelDiv.Attributes.Add("class", "labelDiv");
                    labelDiv.InnerHtml = majorName;
                    var buttonsDiv = new HtmlGenericControl("div");
                    buttonsDiv.Attributes.Add("class", "buttonsDiv");
                    Button deleteButton = new Button();
                    deleteButton.ID = "faculty," + facultyIDs.ElementAt(i) + ",major," + majorID;
                    deleteButton.Text += "Delete";
                    deleteButton.Attributes.Add("runat", "server");
                    deleteButton.CssClass += "deleteButton";
                    deleteButton.Click += DeleteMajor;
                    buttonsDiv.Controls.Add(deleteButton);
                    var majorItem = new HtmlGenericControl("div");
                    majorItem.Attributes.Add("class", "ItemDiv");
                    majorItem.Controls.Add(labelDiv);
                    majorItem.Controls.Add(buttonsDiv);
                    facultyDiv.Controls.Add(majorItem);
                }
                itemsDiv.Controls.Add(facultyDiv);
                con.Close();
                i++;
            }
        }
        protected void toSearchRes(object sender, EventArgs e)
        {
            itemsDiv.InnerHtml = "";
            Button addButton = new Button();
            addButton.Text += "Add Major";
            addButton.Attributes.Add("runat", "server");
            addButton.CssClass += "addButton";
            addButton.Click += AddMajor;
            var addMajorItem = new HtmlGenericControl("div");
            addMajorItem.Attributes.Add("class", "addItemsDiv");
            addMajorItem.Controls.Add(addButton);
            itemsDiv.Controls.Add(addMajorItem);
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("searchMajor", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            String search = searchInput.Text;
            if (search == "")
            {
                Response.Redirect("AdminMajor.aspx");
            }
            cmd.Parameters.Add(new SqlParameter("@name", search));
            SqlDataReader reader = cmd.ExecuteReader();
            int facultyID = 0;
            int majorID = 0;
            String majorName = "";
            while (reader.Read())
            {
                facultyID = Int32.Parse(reader.GetValue(0).ToString());
                majorID = Int32.Parse(reader.GetValue(1).ToString());
                majorName = reader.GetValue(2).ToString();
                var labelDiv = new HtmlGenericControl("div");
                labelDiv.Attributes.Add("class", "labelDiv");
                labelDiv.InnerHtml = majorName;
                var buttonsDiv = new HtmlGenericControl("div");
                buttonsDiv.Attributes.Add("class", "buttonsDiv");
                Button deleteButton = new Button();
                deleteButton.ID = "faculty," + facultyID + ",major," + majorID; ;
                deleteButton.Text += "Delete";
                deleteButton.Attributes.Add("runat", "server");
                deleteButton.CssClass += "deleteButton";
                deleteButton.Click += DeleteMajor;
                buttonsDiv.Controls.Add(deleteButton);
                var majorItem = new HtmlGenericControl("div");
                majorItem.Attributes.Add("class", "ItemDiv");
                majorItem.Controls.Add(labelDiv);
                majorItem.Controls.Add(buttonsDiv);
                itemsDiv.Controls.Add(majorItem);
            }
        }
        protected void AddMajor(object sender, EventArgs e)
        {
            Response.Redirect("AdminAddMajor.aspx");
        }
        protected void DeleteMajor(object sender, EventArgs e)
        {
            String[] list = (((Control)sender).ID).Split(',');
            Session["facID"] = list[1];
            Session["majID"] = list[3];
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
            String majorName = "";
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmdName = new SqlCommand("getMajorBySerial", con);
            cmdName.CommandType = System.Data.CommandType.StoredProcedure;
            cmdName.Parameters.Add(new SqlParameter("@faculty_serial", Int32.Parse(Session["facID"].ToString())));
            cmdName.Parameters.Add(new SqlParameter("@major_serial", Int32.Parse(Session["majID"].ToString())));
            SqlDataReader readerCode = cmdName.ExecuteReader();
            while (readerCode.Read())
            {
                majorName = readerCode.GetValue(0).ToString();
            }
            con.Close();
            label.InnerHtml = "Are you sure you want to delete (" + majorName + ")?";
            yesButton.Visible = true;
            noButton.Visible = true;
            form1.Controls.Add(div);
        }
        protected void ConfirmDelete(object sender, EventArgs e)
        {
            int facID = Int32.Parse(Session["facID"].ToString());
            int majID = Int32.Parse(Session["majID"].ToString());
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                con.Open();
                SqlCommand cmd = new SqlCommand("deleteMajor", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@facID", facID));
                cmd.Parameters.Add(new SqlParameter("@majID", majID));
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
            Response.Redirect("AdminMajor.aspx");
        }
        protected void x_click(object sender, EventArgs e)
        {
            Response.Redirect("AdminMajor.aspx");
        }
    }
}
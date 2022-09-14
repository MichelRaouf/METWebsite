using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace METWebsite
{
    
    public partial class InstructorViewCourse : System.Web.UI.Page
    {
         public int EditId = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

            String IdString = Request.QueryString["IdString"];
            int id = 0;
            if(IdString !=null)
             id = Int32.Parse(IdString);
            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            //create new sqlconnection and connection to database by using connection string from web.config file  
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand course_title = new SqlCommand("courseTitle", con);
            course_title.CommandType = System.Data.CommandType.StoredProcedure;
            course_title.Parameters.Add(new SqlParameter("@course_id", id));
            SqlParameter title = course_title.Parameters.Add("@course_title", System.Data.SqlDbType.VarChar, 100);
            SqlParameter code = course_title.Parameters.Add("@course_code", System.Data.SqlDbType.VarChar, 100);

            title.Direction = ParameterDirection.Output;
            code.Direction = ParameterDirection.Output;


            con.Open();
            course_title.ExecuteNonQuery();
            con.Close();

            ctitle.InnerHtml = "(" + code.Value.ToString() + ") " + title.Value.ToString();


            SqlCommand course_details = new SqlCommand("coursedetails", con);
            course_details.CommandType = System.Data.CommandType.StoredProcedure;
            course_details.Parameters.Add(new SqlParameter("@course_id", id));
            SqlParameter credits = course_details.Parameters.Add("@course_credits", System.Data.SqlDbType.Int);
            credits.Direction = ParameterDirection.Output;
            SqlParameter lectures = course_details.Parameters.Add("@courseLecs", System.Data.SqlDbType.Int);
            lectures.Direction = ParameterDirection.Output;
            SqlParameter tutorials = course_details.Parameters.Add("@coursetuts", System.Data.SqlDbType.Int);
            tutorials.Direction = ParameterDirection.Output;
            SqlParameter labs = course_details.Parameters.Add("@courseLabs", System.Data.SqlDbType.Int);
            labs.Direction = ParameterDirection.Output;

            con.Open();
            course_details.ExecuteNonQuery();
            con.Close();

            ccredits.InnerHtml = "&nbsp;&nbsp;" + credits.Value.ToString() + " Credits Hours";
            clecs.InnerHtml = "&nbsp;&nbsp;" + lectures.Value.ToString() + " Lectures";
            ctuts.InnerHtml = "&nbsp;&nbsp;" + tutorials.Value.ToString() + " Tutorials";
            clabs.InnerHtml = "&nbsp;&nbsp;" + labs.Value.ToString() + " Labs";

            SqlCommand course_updates = new SqlCommand("courseUpdates", con);
            course_updates.CommandType = System.Data.CommandType.StoredProcedure;
            course_updates.Parameters.Add(new SqlParameter("@course_id", id));

            con.Open();
            course_updates.ExecuteNonQuery();

            SqlDataReader reader = course_updates.ExecuteReader();
            while (reader.Read())
            {
                int updateId =(int) reader.GetValue(1);
                var tr = new HtmlTableRow();
                var td1 = new HtmlTableCell();
                var td2 = new HtmlTableCell();
                var td3 = new HtmlTableCell();
                td1.Attributes.Add("class", "updates");
                td1.InnerHtml += "<li>" + reader.GetValue(0).ToString() + "</li>";

                var editButton = new HtmlButton();
                editButton.Attributes.Add("class","Edit");
                var editImg = new HtmlGenericControl("img");
                editImg.Attributes.Add("src", "./images/InstructorHome/edit.svg");
                editImg.Attributes.Add("class", "editIcon");
                editButton.Controls.Add(editImg);
                var editSpan = new HtmlGenericControl("span");
                editSpan.Attributes.Add("class", "innerSpan");
                editSpan.InnerHtml = "Edit";
                editButton.Controls.Add(editSpan);

              
                editButton.ServerClick += (object sender1, EventArgs e1) => {
                    ClientScript.RegisterStartupScript(this.GetType(), "key", "openEditOverlay();", true);
                    Session["editId"] = updateId;


                };

                 var deleteButton = new HtmlButton();
                deleteButton.Attributes.Add("class","Delete");
                deleteButton.ServerClick += (object sender1, EventArgs e1) => {
                    ClientScript.RegisterStartupScript(this.GetType(), "key", "openDeleteOverlay();", true);
                    Session["deleteId"] = updateId;
                };
                var deleteImg = new HtmlGenericControl("img");
                deleteImg.Attributes.Add("src", "./images/InstructorHome/whiteDelete.svg");
                deleteImg.Attributes.Add("class", "editIcon");
                var deleteSpan = new HtmlGenericControl("span");
                deleteSpan.Attributes.Add("class", "innerSpan");
                deleteSpan.InnerHtml = "Delete";
                deleteButton.Controls.Add(deleteImg);
                deleteButton.Controls.Add(deleteSpan);

                td2.Controls.Add(editButton);
                td3.Controls.Add(deleteButton);
                tr.Controls.Add(td1);
                tr.Controls.Add(td2);
                tr.Controls.Add(td3);
                updatesTable.Controls.Add(tr);

            }

            con.Close();

            SqlCommand course_syll = new SqlCommand("weekDetails", con);
            course_syll.CommandType = System.Data.CommandType.StoredProcedure;
            course_syll.Parameters.Add(new SqlParameter("@course_id", id));

            con.Open();
            course_syll.ExecuteNonQuery();
            
            SqlDataReader readersyll = course_syll.ExecuteReader();
            List<List<String>> weeks = new List<List<String>>();
            while (readersyll.Read())
            {
                List<String> list = new List<string>();
                list.Add(readersyll.GetValue(0).ToString());
                list.Add(readersyll.GetValue(1).ToString());
                list.Add(readersyll.GetValue(2).ToString());
                list.Add(readersyll.GetValue(3).ToString());
                weeks.Add(list);
            }
            con.Close();
            int i=1;
            foreach (var eachWeek in weeks)
            {
               
                var divFlex = new HtmlGenericControl("div");
                divFlex.Attributes.Add("class", "flex-container-2");
                var FlexChild = new HtmlGenericControl("div");
                FlexChild.Attributes.Add("class", "flex-child");
                var week = new HtmlGenericControl("p");
                week.Attributes.Add("class", "syllabus-title");
                var weekNo = new HtmlGenericControl("p");
                weekNo.Attributes.Add("class", "week-number");
                var FlexChild2 = new HtmlGenericControl("div");
                FlexChild2.Attributes.Add("class", "flex-child");
                var TitleP = new HtmlGenericControl("span");
                TitleP.Attributes.Add("class", "syllabus-title");
                var divTitle = new HtmlGenericControl("div");
                divTitle.Attributes.Add("class", "divTitle");
                var editbuttonContainer = new HtmlButton();
                var EditButton = new ImageButton();
                var x = new HtmlInputImage();
               
                EditButton.CssClass = "weekEdit";
                EditButton.ImageUrl = "./images/InstructorHome/blackEdit.svg";
                EditButton.Attributes.Add("onmouseover", "this.src='./images/InstructorHome/redEdit.svg'");
                EditButton.Attributes.Add("onmouseout", "this.src='./images/InstructorHome/blackEdit.svg'");
                editbuttonContainer.Controls.Add(EditButton);
                EditButton.Click += (object sender1, ImageClickEventArgs e1) => {
                    ClientScript.RegisterStartupScript(this.GetType(), "key", "openEditWeekOverlay();", true);
                    Session["weekeditSerial"] = eachWeek[3];
                };
                
                var weekDescription = new HtmlGenericControl("p");
                weekDescription.Attributes.Add("class", "syllabus-description");
                var grayLine = new HtmlGenericControl("hr");
                grayLine.Attributes.Add("style", "width: 82%; margin-left :13vw; border-left:none;border-right:none; border-bottom:none; opacity:40%;");
               
           
                var materialsList = new HtmlGenericControl("ul");
                materialsList.Attributes.Add("class", "materialsUl");
               
                FlexChild.Controls.Add(week);
                FlexChild.Controls.Add(weekNo);
                week.InnerHtml = "Week";
                weekNo.InnerHtml = (i++).ToString();
                divTitle.Controls.Add(TitleP);
                divTitle.Controls.Add(EditButton);
                weekDescription.InnerHtml = eachWeek[2];
                TitleP.InnerHtml = eachWeek[1];
                FlexChild2.Controls.Add(divTitle);
                FlexChild2.Controls.Add(weekDescription);
                csyllabus.Controls.Add(divFlex);
                divFlex.Controls.Add(FlexChild);
                divFlex.Controls.Add(FlexChild2);
                csyllabus.Controls.Add(grayLine);

                SqlCommand weekMaterials = new SqlCommand("weekMaterials",con);
                weekMaterials.CommandType = System.Data.CommandType.StoredProcedure;
                int temp = Int32.Parse(eachWeek[3]);
                weekMaterials.Parameters.Add(new SqlParameter("@weekSerial", temp));
                con.Open();
                weekMaterials.ExecuteNonQuery();
                SqlDataReader materialsReader = weekMaterials.ExecuteReader();
                
                while (materialsReader.Read())
                {
                    var li = new HtmlGenericControl("li");
                    li.Attributes.Add("class", "materialsLi");
                    var DelteButton = new ImageButton();
                   
                    DelteButton.ImageUrl = "./images/InstructorHome/blackDelete.svg";
                    DelteButton.Attributes.Add("onmouseover", "this.src='./images/InstructorHome/redDelete.svg'");
                    DelteButton.Attributes.Add("onmouseout", "this.src='./images/InstructorHome/blackDelete.svg'");
                    DelteButton.Attributes.Add("style", "width : 2vw; height:2.4vw");
                    li.Controls.Add(DelteButton);
                    var materialLink = new HtmlAnchor();
                    materialLink.HRef = materialsReader.GetValue(1).ToString();
                    materialLink.InnerHtml = materialsReader.GetValue(0).ToString();
                    li.Controls.Add(materialLink);
                    materialsList.Controls.Add(li);
                    
                    int xd = Int32.Parse(materialsReader.GetValue(2).ToString());
                    DelteButton.Click += (object sender1, ImageClickEventArgs e1) => {
                        ClientScript.RegisterStartupScript(this.GetType(), "key", "openDeleteMaterialsOverlay();", true);
                        Session["deleteMaterials"] = xd;
                    };



                }
                csyllabus.Controls.Add(materialsList);
                
                con.Close();
                var addNewMaterialsButton = new HtmlButton();
                addNewMaterialsButton.ServerClick += (object sender1, EventArgs e1) => {
                    // Write Add Matrials syntax here
                };
                addNewMaterialsButton.Attributes.Add("class", "AddNewMaterials");
                var addImg1 = new HtmlImage();
                addImg1.Attributes.Add("class", "editIcon");
                addImg1.Src = "./images/InstructorHome/plusIcon.svg";
                var span1 = new HtmlGenericControl("span");
                span1.Attributes.Add("class", "innerSpan");
                span1.InnerHtml = "Add Materials";
                addNewMaterialsButton.Controls.Add(addImg1);
                addNewMaterialsButton.Controls.Add(span1);
                csyllabus.Controls.Add(addNewMaterialsButton);
                var blackLine = new HtmlGenericControl("hr");
                blackLine.Attributes.Add("style", "width: 90%;  border-left:none;border-right:none; border-bottom:none;");

                csyllabus.Controls.Add(blackLine);





            }
            var addNewWeekButton = new HtmlButton();
            addNewWeekButton.ServerClick += (object sender1, EventArgs e1) => {
                ClientScript.RegisterStartupScript(this.GetType(), "key", "openAddWeekOverlay();", true);
         
                con.Open();
                SqlCommand getAvailableWeeks = new SqlCommand("getAvailableWeeks", con);
                getAvailableWeeks.CommandType = CommandType.StoredProcedure;
                getAvailableWeeks.Parameters.Add(new SqlParameter("@courseSerial", IdString));
                SqlDataReader getAvailableWeeksReader = getAvailableWeeks.ExecuteReader();
                while (getAvailableWeeksReader.Read())
                {
                    int weekNo = Int32.Parse(getAvailableWeeksReader.GetValue(0).ToString());
                    String[] start_date = (getAvailableWeeksReader.GetValue(1).ToString()).Split(' ');
                    ListItem optionWeek = new ListItem(start_date[0], weekNo.ToString());
                    dropdownWeeks.Items.Add(optionWeek);
                }



            };
            addNewWeekButton.Attributes.Add("class", "AddNewWeek");
            var addImg = new HtmlImage();
            addImg.Attributes.Add("class", "editIcon");
            addImg.Src = "./images/InstructorHome/plusIcon.svg";
            var span = new HtmlGenericControl("span");
            span.Attributes.Add("class", "innerSpan");
            span.InnerHtml = "Add Week";
            addNewWeekButton.Controls.Add(addImg);
            addNewWeekButton.Controls.Add(span);
            csyllabus.Controls.Add(addNewWeekButton);
            con.Open();
            con.Close();

            SqlCommand course_res = new SqlCommand("courseResources", con);
            course_res.CommandType = System.Data.CommandType.StoredProcedure;
            course_res.Parameters.Add(new SqlParameter("@course_id", Int32.Parse(IdString)));

            con.Open();
            course_res.ExecuteNonQuery();

            SqlDataReader courseResourcesReader = course_res.ExecuteReader();

            while (courseResourcesReader.Read())
            {
                var tr = new HtmlTableRow();
                var td1 = new HtmlTableCell();
                var img = new HtmlImage();
                img.Src = "./images/coursePageImages/link.svg";
                img.Attributes.Add("class", "navimg");
                var a = new HtmlAnchor();
                a.HRef = courseResourcesReader.GetValue(1).ToString();
                a.InnerHtml = courseResourcesReader.GetValue(0).ToString();
                a.Attributes.Add("class", "resources");
                td1.Controls.Add(img);
                td1.Controls.Add(a);
                var td2 = new HtmlTableCell();
                var ResourceDeleteButton = new HtmlButton();
                ResourceDeleteButton.Attributes.Add("class", "Delete");
                ResourceDeleteButton.ServerClick += (object sender1, EventArgs e1) => {
                    ClientScript.RegisterStartupScript(this.GetType(), "key", "openDeleteOverlay();", true);
                    ////////////////////////////////////////////////////////////////////////////
                    ///////////////////////////////////////////////////////////////////////////
                    //////////////////////////////////////////////////////////////////
                };
                var deleteImg = new HtmlGenericControl("img");
                deleteImg.Attributes.Add("src", "./images/InstructorHome/whiteDelete.svg");
                deleteImg.Attributes.Add("class", "editIcon");
                var deleteSpan = new HtmlGenericControl("span");
                deleteSpan.Attributes.Add("class", "innerSpan");
                deleteSpan.InnerHtml = "Delete";
                ResourceDeleteButton.Controls.Add(deleteImg);
                ResourceDeleteButton.Controls.Add(deleteSpan);
                td2.Controls.Add(ResourceDeleteButton);
                tr.Controls.Add(td1);
                tr.Controls.Add(td2);

                resourcesTable.Controls.Add(tr);
            }
            con.Close();















            var addNewResourceButton = new HtmlButton();
            addNewWeekButton.ServerClick += (object sender1, EventArgs e1) => {
              

            };
            addNewResourceButton.Attributes.Add("class", "AddNewWeek");
            addNewResourceButton.Attributes.Add("style", "width :15vw");
            var addResourceImg = new HtmlImage();
            addResourceImg.Attributes.Add("class", "editIcon");
            addResourceImg.Src = "./images/InstructorHome/plusIcon.svg";
            var Resourcespan = new HtmlGenericControl("span");
            Resourcespan.Attributes.Add("class", "innerSpan");
            Resourcespan.InnerHtml = "Add Resource";
            addNewResourceButton.Controls.Add(addResourceImg);
            addNewResourceButton.Controls.Add(Resourcespan);

            AddResourceDiv.Controls.Add(addNewResourceButton);














        }
        protected void logOut_click(object sender, EventArgs e)
        {
            Session["id"] = null;
            Response.Redirect("Login.aspx");
        }
        protected void EditConfirm(object sender, EventArgs e)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            String editedText = editText.Value;
            SqlCommand EditUpdate = new SqlCommand("updatesEdit", con);
            EditUpdate.CommandType = System.Data.CommandType.StoredProcedure;
            EditUpdate.Parameters.Add(new SqlParameter("@newDescription", editedText));
            EditUpdate.Parameters.Add(new SqlParameter("@updateID", Session["editId"]));
            con.Open();
            try { 
            EditUpdate.ExecuteNonQuery();
        }
            catch
            {
                AddAnnConfirm(sender, e);
            }
            con.Close();
            String IdString = Request.QueryString["IdString"];
            Response.Redirect("instructorViewCourse.aspx?IdString="+ IdString);

        }
        protected void AddAnnouncment(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "key", "openAddAnnOverlay();", true);

        }
        protected void AddAnnConfirm(object sender, EventArgs e)
        {

            Response.Write("<script>alert(" + "Hi" + ")</script>");

            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);  
            SqlCommand confirmAddUpdates = new SqlCommand("AddUpdates", con);
            confirmAddUpdates.CommandType = System.Data.CommandType.StoredProcedure;
            int courseSerial = Int32.Parse(Request.QueryString["IdString"]);
            confirmAddUpdates.Parameters.Add(new SqlParameter("@course_serial",courseSerial));
            confirmAddUpdates.Parameters.Add(new SqlParameter("@description", AddAnnText.Value));
            con.Open();
            confirmAddUpdates.ExecuteNonQuery();
            con.Close();
            Response.Redirect("instructorViewCourse.aspx?IdString=" + courseSerial);

        }
        protected void DeleteYes(object sender,EventArgs e)
        {
            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand deleteUpdate = new SqlCommand("deleteUpdate", con);
            deleteUpdate.CommandType = CommandType.StoredProcedure;
            deleteUpdate.Parameters.Add(new SqlParameter("@updateId", Session["deleteId"]));

            con.Open();
            deleteUpdate.ExecuteNonQuery();
            con.Close();
            int courseSerial = Int32.Parse(Request.QueryString["IdString"]);
            Response.Redirect("instructorViewCourse.aspx?IdString=" + courseSerial);

        }
   
        protected void EditWeekConfirm(object sender,EventArgs e)
        {
            String IdString = Request.QueryString["IdString"];
            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand editWeekDetails = new SqlCommand("editWeekDetails", con);
            editWeekDetails.CommandType = CommandType.StoredProcedure;
            editWeekDetails.Parameters.Add(new SqlParameter("@CourseWeekSerial", Session["weekeditSerial"]));
            editWeekDetails.Parameters.Add(new SqlParameter("@weekTitle", weekTitleEdit.Value));
            editWeekDetails.Parameters.Add(new SqlParameter("@weekDescription", weekDescriptionEdit.Value));
            con.Open();
            editWeekDetails.ExecuteNonQuery();
            con.Close();
            Response.Redirect("instructorViewCourse.aspx?IdString=" + IdString);


        }
        protected void DeleteMaterialYes(object sender,EventArgs e)
        {
            String IdString = Request.QueryString["IdString"];
            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand delteMaterial = new SqlCommand("deleteMaterial", con);
            delteMaterial.CommandType = CommandType.StoredProcedure;
            delteMaterial.Parameters.Add(new SqlParameter("@MaterialId", Session["deleteMaterials"]));
            con.Open();
            delteMaterial.ExecuteNonQuery();
            con.Close();
            Response.Redirect("instructorViewCourse.aspx?IdString=" + IdString);

        }
        protected void AddNewweekConfirm(object sender, EventArgs e)
        {
            int weekId = Int32.Parse(dropdownWeeks.SelectedValue);
            String Title = weekTitleAdd.Value;
            String description = weekDescriptionAdd.Value;
            String IdString = Request.QueryString["IdString"];
            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand addNewWeek = new SqlCommand("addNewWeek", con);
            addNewWeek.CommandType = CommandType.StoredProcedure;
            addNewWeek.Parameters.Add(new SqlParameter("@courseSerial",IdString));
            addNewWeek.Parameters.Add(new SqlParameter("@weekTitle", Title));
            addNewWeek.Parameters.Add(new SqlParameter("@weekDescription", description));
            addNewWeek.Parameters.Add(new SqlParameter("@weekNo", weekId));
            con.Open();
            addNewWeek.ExecuteNonQuery();
            con.Close();
            Response.Redirect("instructorViewCourse.aspx?IdString=" + IdString);


        }




    }
}
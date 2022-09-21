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
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("coursedetails", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter serial = new SqlParameter("@course_id", IdString);
            cmd.Parameters.Add(serial);
            SqlDataReader reader = cmd.ExecuteReader();
            String courseCode = "";
            String courseName = "";
            String courseDescription = "";
            String courseCredit = "";
            String courseNumLectures = "";
            String courseNumTuts = "";
            String courseNumLabs = "";
            reader.Read();
            courseCode = reader.GetValue(1).ToString();
            courseName = reader.GetValue(2).ToString();
            courseDescription = reader.GetValue(3).ToString();
            courseCredit = reader.GetValue(4).ToString();
            courseNumLectures = reader.GetValue(6).ToString();
            courseNumTuts = reader.GetValue(7).ToString();
            courseNumLabs = reader.GetValue(8).ToString();
            con.Close();
            String courseTitle = "(" + courseCode + ") " + courseName;
            var titleLabel = new HtmlGenericControl("label");
            titleLabel.Attributes.Add("class", "courseTitle");
            titleLabel.InnerHtml = courseTitle;
            courseTitleDiv.Controls.Add(titleLabel);
            var courseCreditLabel = new HtmlGenericControl("label");
            courseCreditLabel.Attributes.Add("class", "iconLabelNoTut");
            courseCreditLabel.InnerHtml = courseCredit + " Credit Hours";
            creditDiv.Controls.Add(courseCreditLabel);
            var courseLecturesNumLabel = new HtmlGenericControl("label");
            courseLecturesNumLabel.Attributes.Add("class", "iconLabelNoTut");
            courseLecturesNumLabel.InnerHtml = courseNumLectures + " Lectures";
            lectureDiv.Controls.Add(courseLecturesNumLabel);
            var courseTutsNumLabel = new HtmlGenericControl("label");
            courseTutsNumLabel.Attributes.Add("class", "iconLabelTut");
            courseTutsNumLabel.InnerHtml = courseNumTuts + " Tutorials";
            tutDiv.Controls.Add(courseTutsNumLabel);
            var courseLabsNumLabel = new HtmlGenericControl("label");
            courseLabsNumLabel.Attributes.Add("class", "iconLabelNoTut");
            courseLabsNumLabel.InnerHtml = courseNumLabs + " Labs";
            labDiv.Controls.Add(courseLabsNumLabel);
            var courseDescriptionLabel = new HtmlGenericControl("label");
            courseDescriptionLabel.Attributes.Add("class", "descriptionText");
            courseDescriptionLabel.InnerHtml = courseDescription;
            textDiv.Controls.Add(courseDescriptionLabel);

            SqlCommand course_updates = new SqlCommand("courseUpdates", con);
            course_updates.CommandType = System.Data.CommandType.StoredProcedure;
            course_updates.Parameters.Add(new SqlParameter("@course_id", id));

            con.Open();
            course_updates.ExecuteNonQuery();

            SqlDataReader reader1 = course_updates.ExecuteReader();
            while (reader1.Read())
            {
                int updateId =(int) reader1.GetValue(1);
                var tr = new HtmlTableRow();
                var td1 = new HtmlTableCell();
                var td2 = new HtmlTableCell();
                var td3 = new HtmlTableCell();
                td1.Attributes.Add("class", "updates");
                td1.InnerHtml += "<li>" + reader1.GetValue(0).ToString() + "</li>";

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
            ////////////////////////////////////////////////////////////////
            /////////////////////////////////////////////////////////////////
            /////////////////////////////////////////////////////////////////
            con.Open();
            SqlCommand cmd3 = new SqlCommand("getCourseWeekInfo", con);
            cmd3.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter serial3 = new SqlParameter("@course_id", IdString);
            cmd3.Parameters.Add(serial3);
            SqlDataReader reader3 = cmd3.ExecuteReader();
            int weekCount = 1;
            //List<String> weekDateList = new List<String>();
            //List<String> weekTitleList = new List<String>();
            //List<String> weekInfoList = new List<String>();
            //List<int> weekSerialList = new List<int>();
            //while (reader3.Read())
            //{
            //    weekDateList.Add((reader3.GetValue(0).ToString()).Split(' ')[0]);
            //    weekTitleList.Add(reader3.GetValue(1).ToString());
            //    weekInfoList.Add(reader3.GetValue(2).ToString());
            //    weekSerialList.Add(Int32.Parse(reader3.GetValue(3).ToString()));
            //}

            List<List<String>> weeks = new List<List<String>>();

            while (reader3.Read())
            {
                List<String> list = new List<string>();
                list.Add(reader3.GetValue(0).ToString().Split(' ')[0]);
                list.Add(reader3.GetValue(1).ToString());
                list.Add(reader3.GetValue(2).ToString());
                list.Add(reader3.GetValue(3).ToString());
                weeks.Add(list);
            }



            con.Close();
            int j = 0;
            foreach (var week in weeks)
            {
                var weekLabel = new HtmlGenericControl("label");
                weekLabel.Attributes.Add("class", "weekLabel");
                weekLabel.InnerHtml = "Week";
                var weekDiv = new HtmlGenericControl("div");
                weekDiv.Attributes.Add("class", "week");
                weekDiv.Controls.Add(weekLabel);
                var weekNoLabel = new HtmlGenericControl("label");
                weekNoLabel.Attributes.Add("class", "weekNoLabel");
                weekNoLabel.InnerHtml = weekCount.ToString();
                weekCount++;
                var weekNoDiv = new HtmlGenericControl("div");
                weekNoDiv.Attributes.Add("class", "weekNo");
                weekNoDiv.Controls.Add(weekNoLabel);
                var weekDateLabel = new HtmlGenericControl("div");
                weekDateLabel.Attributes.Add("class", "weekDateLabel");
                weekDateLabel.InnerHtml = week[0];
                var weekDateDiv = new HtmlGenericControl("div");
                weekDateDiv.Attributes.Add("class", "weekDate");
                weekDateDiv.Controls.Add(weekDateLabel);
                var sideInfoDiv = new HtmlGenericControl("div");
                sideInfoDiv.Attributes.Add("class", "sideInfo");
                sideInfoDiv.Controls.Add(weekDiv);
                sideInfoDiv.Controls.Add(weekNoDiv);
                sideInfoDiv.Controls.Add(weekDateDiv);
                var vertical = new HtmlGenericControl("div");
                vertical.Attributes.Add("class", "vertical");
                sideInfoDiv.Controls.Add(vertical);
                var weekTitleLabel = new HtmlGenericControl("label");
                weekTitleLabel.Attributes.Add("class", "weekTitleLabel");
                weekTitleLabel.InnerHtml = week[1];
                var weekTitleDiv = new HtmlGenericControl("div");
                weekTitleDiv.Attributes.Add("class", "weekTitle");
                   var EditButton = new ImageButton();

                    EditButton.CssClass = "weekEdit";
                    EditButton.ImageUrl = "./images/InstructorHome/blackEdit.svg";
                    EditButton.Attributes.Add("onmouseover", "this.src='./images/InstructorHome/redEdit.svg'");
                    EditButton.Attributes.Add("onmouseout", "this.src='./images/InstructorHome/blackEdit.svg'");
                    EditButton.Click += (object sender1, ImageClickEventArgs e1) => {
                        ClientScript.RegisterStartupScript(this.GetType(), "key", "openEditWeekOverlay();", true);
                        Session["weekeditSerial"] = week[3];
                    };

                weekTitleDiv.Controls.Add(weekTitleLabel);
                weekTitleDiv.Controls.Add(EditButton);
                var weekDescriptionLabel = new HtmlGenericControl("label");
                weekDescriptionLabel.Attributes.Add("class", "weekDescriptionLabel");
                weekDescriptionLabel.InnerHtml =week[2];
                var weekDescriptionDiv = new HtmlGenericControl("div");
                weekDescriptionDiv.Attributes.Add("class", "weekDescription");
                weekDescriptionDiv.Controls.Add(weekDescriptionLabel);
                var detailsDiv = new HtmlGenericControl("div");
                detailsDiv.Attributes.Add("class", "details");
                detailsDiv.Controls.Add(weekTitleDiv);
                detailsDiv.Controls.Add(weekDescriptionDiv);
                var upperDiv = new HtmlGenericControl("div");
                upperDiv.Attributes.Add("class", "upper");
                upperDiv.Controls.Add(sideInfoDiv);
                upperDiv.Controls.Add(vertical);
                upperDiv.Controls.Add(detailsDiv);
                var horizontalDiv = new HtmlGenericControl("div");
                horizontalDiv.Attributes.Add("class", "horizontal");
                var itemDiv = new HtmlGenericControl("div");
                itemDiv.Attributes.Add("class", "itemDiv");
                itemDiv.Controls.Add(upperDiv);
                itemDiv.Controls.Add(horizontalDiv);
                var lowerDiv = new HtmlGenericControl("div");
                lowerDiv.Attributes.Add("class", "lower");
                con.Open();
                SqlCommand cmd33 = new SqlCommand("getMaterialWeek", con);
                cmd33.CommandType = System.Data.CommandType.StoredProcedure;
                SqlParameter serial33 = new SqlParameter("@week_serial", week[3]);
                cmd33.Parameters.Add(serial33);
                SqlDataReader reader33 = cmd33.ExecuteReader();
                String name3 = "";
                String fileLink = "";
                while (reader33.Read())
                {
                    name3 = reader33.GetValue(0).ToString();
                    fileLink = reader33.GetValue(1).ToString();
                    var materialId = Int32.Parse(reader33.GetValue(2).ToString());
                    var materialItem = new HtmlGenericControl("a");
                    materialItem.Attributes.Add("class", "materialItem");
                    materialItem.Attributes.Add("href", fileLink + "");
                    materialItem.InnerHtml = name3;
                    var materialItemDiv = new HtmlGenericControl("div");
                    materialItemDiv.Attributes.Add("class", "materialItemDiv");

                    var DelteButton = new HtmlButton();
                    DelteButton.Attributes.Add("class", "trash");
                    DelteButton.Controls.Add(new HtmlGenericControl("span"));
                    DelteButton.Controls.Add(new HtmlGenericControl("i"));
                    DelteButton.ServerClick += (object sender1, EventArgs e1) => {
                    ClientScript.RegisterStartupScript(this.GetType(), "key", "openDeleteMaterialsOverlay();", true);
                        Session["deleteMaterials"] = materialId;
                    };
                    materialItemDiv.Controls.Add(DelteButton);/////////////////
                    materialItemDiv.Controls.Add(materialItem);
                    lowerDiv.Controls.Add(materialItemDiv);
                }
                itemDiv.Controls.Add(lowerDiv);
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
                    itemDiv.Controls.Add(addNewMaterialsButton);
                ///////////////////////////////////////////////////
                var horizontal2 = new HtmlGenericControl("div");
                horizontal2.Attributes.Add("class", "horizontal2");
                itemDiv.Controls.Add(horizontal2);
                
                
                    syllabus.Controls.Add(itemDiv);
                
              
                
                j++;
                con.Close();
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
            syllabus.Controls.Add(addNewWeekButton);
            con.Open();
            con.Close();






            //SqlCommand course_syll = new SqlCommand("weekDetails", con);
            //course_syll.CommandType = System.Data.CommandType.StoredProcedure;
            //course_syll.Parameters.Add(new SqlParameter("@course_id", id));

            //con.Open();
            //course_syll.ExecuteNonQuery();

            //SqlDataReader readersyll = course_syll.ExecuteReader();
            //List<List<String>> weeks = new List<List<String>>();
            //while (readersyll.Read())
            //{
            //    List<String> list = new List<string>();
            //    list.Add(readersyll.GetValue(0).ToString());
            //    list.Add(readersyll.GetValue(1).ToString());
            //    list.Add(readersyll.GetValue(2).ToString());
            //    list.Add(readersyll.GetValue(3).ToString());
            //    weeks.Add(list);
            //}
            //con.Close();
            //int i=1;
            //foreach (var eachWeek in weeks)
            //{

            //    var divFlex = new HtmlGenericControl("div");
            //    divFlex.Attributes.Add("class", "flex-container-2");
            //    var FlexChild = new HtmlGenericControl("div");
            //    FlexChild.Attributes.Add("class", "flex-child");
            //    var week = new HtmlGenericControl("p");
            //    week.Attributes.Add("class", "syllabus-title");
            //    var weekNo = new HtmlGenericControl("p");
            //    weekNo.Attributes.Add("class", "week-number");
            //    var FlexChild2 = new HtmlGenericControl("div");
            //    FlexChild2.Attributes.Add("class", "flex-child");
            //    var TitleP = new HtmlGenericControl("span");
            //    TitleP.Attributes.Add("class", "syllabus-title");
            //    var divTitle = new HtmlGenericControl("div");
            //    divTitle.Attributes.Add("class", "divTitle");
            //    var EditButton = new ImageButton();
            //    var x = new HtmlInputImage();

            //    EditButton.CssClass = "weekEdit";
            //    EditButton.ImageUrl = "./images/InstructorHome/blackEdit.svg";
            //    EditButton.Attributes.Add("onmouseover", "this.src='./images/InstructorHome/redEdit.svg'");
            //    EditButton.Attributes.Add("onmouseout", "this.src='./images/InstructorHome/blackEdit.svg'");
            //    EditButton.Click += (object sender1, ImageClickEventArgs e1) => {
            //        ClientScript.RegisterStartupScript(this.GetType(), "key", "openEditWeekOverlay();", true);
            //        Session["weekeditSerial"] = eachWeek[3];
            //    };

            //    var weekDescription = new HtmlGenericControl("p");
            //    weekDescription.Attributes.Add("class", "syllabus-description");
            //    var grayLine = new HtmlGenericControl("hr");
            //    grayLine.Attributes.Add("style", "width: 82%; margin-left :13vw; border-left:none;border-right:none; border-bottom:none; opacity:40%;");


            //    var materialsList = new HtmlGenericControl("ul");
            //    materialsList.Attributes.Add("class", "materialsUl");

            //    FlexChild.Controls.Add(week);
            //    FlexChild.Controls.Add(weekNo);
            //    week.InnerHtml = "Week";
            //    weekNo.InnerHtml = (i++).ToString();
            //    divTitle.Controls.Add(TitleP);
            //    divTitle.Controls.Add(EditButton);
            //    weekDescription.InnerHtml = eachWeek[2];
            //    TitleP.InnerHtml = eachWeek[1];
            //    FlexChild2.Controls.Add(divTitle);
            //    FlexChild2.Controls.Add(weekDescription);
            //    csyllabus.Controls.Add(divFlex);
            //    divFlex.Controls.Add(FlexChild);
            //    divFlex.Controls.Add(FlexChild2);
            //    csyllabus.Controls.Add(grayLine);

            //    SqlCommand weekMaterials = new SqlCommand("weekMaterials",con);
            //    weekMaterials.CommandType = System.Data.CommandType.StoredProcedure;
            //    int temp = Int32.Parse(eachWeek[3]);
            //    weekMaterials.Parameters.Add(new SqlParameter("@weekSerial", temp));
            //    con.Open();
            //    weekMaterials.ExecuteNonQuery();
            //    SqlDataReader materialsReader = weekMaterials.ExecuteReader();

            //    while (materialsReader.Read())
            //    {
            //        var li = new HtmlGenericControl("li");
            //        li.Attributes.Add("class", "materialsLi");
            //        var DelteButton = new ImageButton();

            //        DelteButton.ImageUrl = "./images/InstructorHome/blackDelete.svg";
            //        DelteButton.Attributes.Add("onmouseover", "this.src='./images/InstructorHome/redDelete.svg'");
            //        DelteButton.Attributes.Add("onmouseout", "this.src='./images/InstructorHome/blackDelete.svg'");
            //        DelteButton.Attributes.Add("style", "width : 2vw; height:2.4vw");
            //        li.Controls.Add(DelteButton);
            //        var materialLink = new HtmlAnchor();
            //        materialLink.HRef = materialsReader.GetValue(1).ToString();
            //        materialLink.InnerHtml = materialsReader.GetValue(0).ToString();
            //        li.Controls.Add(materialLink);
            //        materialsList.Controls.Add(li);

            //        int xd = Int32.Parse(materialsReader.GetValue(2).ToString());
            //        var DelteButton = new ImageButton();

            //        DelteButton.ImageUrl = "./images/InstructorHome/blackDelete.svg";
            //        DelteButton.Attributes.Add("onmouseover", "this.src='./images/InstructorHome/redDelete.svg'");
            //        DelteButton.Attributes.Add("onmouseout", "this.src='./images/InstructorHome/blackDelete.svg'");
            //        DelteButton.Attributes.Add("style", "width : 2vw; height:2.4vw");
            //        DelteButton.Click += (object sender1, ImageClickEventArgs e1) => {
            //            ClientScript.RegisterStartupScript(this.GetType(), "key", "openDeleteMaterialsOverlay();", true);
            //            Session["deleteMaterials"] = xd;
            //        };



            //    }
            //    csyllabus.Controls.Add(materialsList);

            //    con.Close();
            //    var addNewMaterialsButton = new HtmlButton();
            //    addNewMaterialsButton.ServerClick += (object sender1, EventArgs e1) => {
            //        // Write Add Matrials syntax here
            //    };
            //    addNewMaterialsButton.Attributes.Add("class", "AddNewMaterials");
            //    var addImg1 = new HtmlImage();
            //    addImg1.Attributes.Add("class", "editIcon");
            //    addImg1.Src = "./images/InstructorHome/plusIcon.svg";
            //    var span1 = new HtmlGenericControl("span");
            //    span1.Attributes.Add("class", "innerSpan");
            //    span1.InnerHtml = "Add Materials";
            //    addNewMaterialsButton.Controls.Add(addImg1);
            //    addNewMaterialsButton.Controls.Add(span1);
            //    csyllabus.Controls.Add(addNewMaterialsButton);
            //    var blackLine = new HtmlGenericControl("hr");
            //    blackLine.Attributes.Add("style", "width: 90%;  border-left:none;border-right:none; border-bottom:none;");

            //    csyllabus.Controls.Add(blackLine);





            //}
            //var addNewWeekButton = new HtmlButton();
            //addNewWeekButton.ServerClick += (object sender1, EventArgs e1) => {
            //    ClientScript.RegisterStartupScript(this.GetType(), "key", "openAddWeekOverlay();", true);

            //    con.Open();
            //    SqlCommand getAvailableWeeks = new SqlCommand("getAvailableWeeks", con);
            //    getAvailableWeeks.CommandType = CommandType.StoredProcedure;
            //    getAvailableWeeks.Parameters.Add(new SqlParameter("@courseSerial", IdString));
            //    SqlDataReader getAvailableWeeksReader = getAvailableWeeks.ExecuteReader();
            //    while (getAvailableWeeksReader.Read())
            //    {
            //        int weekNo = Int32.Parse(getAvailableWeeksReader.GetValue(0).ToString());
            //        String[] start_date = (getAvailableWeeksReader.GetValue(1).ToString()).Split(' ');
            //        ListItem optionWeek = new ListItem(start_date[0], weekNo.ToString());
            //        dropdownWeeks.Items.Add(optionWeek);
            //    }



            //};
            //addNewWeekButton.Attributes.Add("class", "AddNewWeek");
            //var addImg = new HtmlImage();
            //addImg.Attributes.Add("class", "editIcon");
            //addImg.Src = "./images/InstructorHome/plusIcon.svg";
            //var span = new HtmlGenericControl("span");
            //span.Attributes.Add("class", "innerSpan");
            //span.InnerHtml = "Add Week";
            //addNewWeekButton.Controls.Add(addImg);
            //addNewWeekButton.Controls.Add(span);
            //csyllabus.Controls.Add(addNewWeekButton);
            //con.Open();
            //con.Close();

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
            addNewResourceButton.ServerClick += (object sender1, EventArgs e1) => {
              

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
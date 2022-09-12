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

              //////////////////////////////////////////////////////////////
                editButton.ServerClick += (object sender1, EventArgs e1) => {
                };

                 var deleteButton = new HtmlButton();
                deleteButton.Attributes.Add("class","Delete");
                deleteButton.ServerClick += (object sender1, EventArgs e1) => {

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
                var TitleP = new HtmlGenericControl("p");
                TitleP.Attributes.Add("class", "syllabus-title");
                var divTitle = new HtmlGenericControl("div");
                var EditButton = new ImageButton();
                EditButton.CssClass = "weekEdit ";
                EditButton.ImageUrl = "./images/InstructorHome/blackEdit.svg";
                EditButton.Attributes.Add("onmouseover", "this.src='./images/InstructorHome/redEdit.svg'");
                EditButton.Attributes.Add("onmouseout", "this.src='./images/InstructorHome/blackDelete.svg'");
                var weekDescription = new HtmlGenericControl("p");
                weekDescription.Attributes.Add("class", "syllabus-description");
                var grayLine = new HtmlImage();
                grayLine.Src = "./images/coursePageImages/line.svg";
                grayLine.Attributes.Add("calss", "syllabus-line");
                var materialsList = new HtmlGenericControl("ul");
                materialsList.Attributes.Add("class", "materialsUl");
               
                FlexChild.Controls.Add(week);
                FlexChild.Controls.Add(weekNo);
                week.InnerHtml = "Week";
                weekNo.InnerHtml = eachWeek[0];
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
                    li.Controls.Add(DelteButton);
                    var materialLink = new HtmlAnchor();
                    materialLink.HRef = materialsReader.GetValue(1).ToString();
                    materialLink.InnerHtml = materialsReader.GetValue(0).ToString();
                    li.Controls.Add(materialLink);
                    materialsList.Controls.Add(li);



                }
                csyllabus.Controls.Add(materialsList);
                
                con.Close();
                var addNewMaterialsButton = new HtmlButton();
                addNewMaterialsButton.ServerClick += (object sender1, EventArgs e1) => {
                    //////////////////////////////////////////////////////////////////////////
                };
                addNewMaterialsButton.Attributes.Add("class", "AddNewMaterials");
                var addImg = new HtmlImage();
                addImg.Attributes.Add("class", "editIcon");
                addImg.Src = "./images/InstructorHome/plusIcon.svg";
                var span = new HtmlGenericControl("span");
                span.Attributes.Add("class", "innerSpan");
                span.InnerHtml = "Add Materials";
                addNewMaterialsButton.Controls.Add(addImg);
                addNewMaterialsButton.Controls.Add(span);
                csyllabus.Controls.Add(addNewMaterialsButton);





            }
         






        }
        protected void logOut_click(object sender, EventArgs e)
        {
            Session["id"] = null;
            Response.Redirect("Login.aspx");
        }

       
    }
}
﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace METWebsite
{
    public partial class AdminRemoveInstructorFromCourse : System.Web.UI.Page
    {
        public static int instructor_id = -1;
        public static int course_serial = -1;
        protected void Page_Load(object sender, EventArgs e)
        {
            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            //create new sqlconnection and connection to database by using connection string from web.config file  
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("getAllInstructors", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            SqlDataReader reader = cmd.ExecuteReader();
            string instName = ""; string instId = ""; string instTitle = "";

            while (reader.Read())
            {
                instId = reader.GetValue(0).ToString();
                instTitle = reader.GetValue(1).ToString();
                instName = reader.GetValue(2).ToString();

                var itemInst = new HtmlGenericControl("div");
                itemInst.Attributes.Add("class", "instructorItem");

                var instLabelDiv = new HtmlGenericControl("div");
                instLabelDiv.Attributes.Add("class", "instructorLabelDiv");

                var instLabel = new HtmlGenericControl("label");
                instLabel.Attributes.Add("class", "instructorLabel");
                instLabel.InnerHtml = instTitle+" "+instName;

                instLabelDiv.Controls.Add(instLabel);

                Button select = new Button();
                select.ID = instId;
                select.Attributes.Add("Class", "select");
                select.Text = "Select";
                select.Click += selectInstructor;   

                itemInst.Controls.Add(instLabelDiv);
                itemInst.Controls.Add(select);

                instructorList.Controls.Add(itemInst);
            }
            con.Close();
        }

        protected void selectInstructor(object sender, EventArgs e)
        {
            instructor.Style.Add("display", "none");
            selectedInstructor.Style.Add("display", "block");
            course.Style.Add("display", "block");
            selectedCourse.Style.Add("display", "none");
            remove.Style.Add("display", "none");

            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            //create new sqlconnection and connection to database by using connection string from web.config file  
            SqlConnection con = new SqlConnection(strcon);

            con.Open();
            SqlCommand cmd2 = new SqlCommand("getInstructorById", con);
            cmd2.CommandType = System.Data.CommandType.StoredProcedure;
            cmd2.Parameters.Add(new SqlParameter("@instructor_id", ((Control)sender).ID));
            instructor_id = Int32.Parse(((Control)sender).ID);
            SqlDataReader reader2 = cmd2.ExecuteReader();
            reader2.Read();
            string instTitle = reader2.GetValue(0).ToString(); ; 
            string instName = reader2.GetValue(1).ToString(); ; 
            con.Close();

            var instItem = new HtmlGenericControl("div");
            instItem.Attributes.Add("class", "instructorItem");

            var instLabelDiv = new HtmlGenericControl("div");
            instLabelDiv.Attributes.Add("class", "instructorLabelDiv");

            var instLabel = new HtmlGenericControl("label");
            instLabel.Attributes.Add("class", "instructorLabel");
            instLabel.InnerHtml = instTitle+ " "+instName;

            instLabelDiv.Controls.Add(instLabel);

            var unselect = new HtmlGenericControl("button");
            unselect.Attributes.Add("Class", "Unselect");
            unselect.Attributes.Add("runat", "server");
            unselect.InnerHtml="Unselect";
            unselect.Attributes.Add("OnClick", "deselectInstructor();return false;");
            
            instItem.Controls.Add(instLabelDiv);
            instItem.Controls.Add(unselect);

            selectedInstructor.Controls.Add(instItem);


            //////////////getCoursesAssignedToInstructor/////////////////
            con.Open();
            SqlCommand cmd3 = new SqlCommand("getCoursesAssignedToInstructor", con);
            cmd3.CommandType = System.Data.CommandType.StoredProcedure;
            cmd3.Parameters.Add(new SqlParameter("@instructor_id", ((Control)sender).ID));
            SqlDataReader reader3 = cmd3.ExecuteReader();
            string courseSerial = ""; string courseCode = ""; string courseName = "";

            while (reader3.Read())
            {
                courseSerial = reader3.GetValue(0).ToString();
                courseCode = reader3.GetValue(1).ToString();
                courseName = reader3.GetValue(2).ToString();

                var courseItem = new HtmlGenericControl("div");
                courseItem.Attributes.Add("class", "courseItem");

                var courseLabelDiv = new HtmlGenericControl("div");
                courseLabelDiv.Attributes.Add("class", "courseLabelDiv");

                var courseLabel = new HtmlGenericControl("label");
                courseLabel.Attributes.Add("class", "courseLabel");
                courseLabel.InnerHtml="("+courseCode+")"+" "+courseName;

                courseLabelDiv.Controls.Add(courseLabel);

                var selectCourse = new HtmlGenericControl("button");
                selectCourse.Attributes.Add("Class", "select");
                selectCourse.InnerHtml = "select";
                selectCourse.Attributes.Add("onclick", "selectCourse();return false;");
                selectCourse.Attributes.Add("courseLabel", "("+courseCode+")"+" "+courseName);
                selectCourse.Attributes.Add("courseSerial", courseSerial);

                courseItem.Controls.Add(courseLabelDiv);
                courseItem.Controls.Add(selectCourse);

                courseList.Controls.Add(courseItem);

            }
            con.Close();
        }


        protected void unassignInstructorFromCourse(object sender, EventArgs e)
        {
            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            //create new sqlconnection and connection to database by using connection string from web.config file  
            SqlConnection con = new SqlConnection(strcon);

            con.Open();
            SqlCommand cmd4 = new SqlCommand("unassignInstructorToCourse", con);
            cmd4.CommandType = System.Data.CommandType.StoredProcedure;
            cmd4.Parameters.Add(new SqlParameter("@instructor_id", instructor_id));
            course_serial = Int32.Parse(assignedCourse.Value);
            cmd4.Parameters.Add(new SqlParameter("@course_serial", course_serial));
            Response.Write(instructor_id + " " + course_serial);
            cmd4.ExecuteNonQuery();
            con.Close();
            //Response.Redirect("AdminRemoveInstructorFromCourse.aspx");
        }

    }
}
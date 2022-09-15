using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace METWebsite
{
    public partial class AdminAddCourse : System.Web.UI.Page
    {
        Button yes = new Button();
        Button no = new Button();
        protected void Page_Load(object sender, EventArgs e)
        {
            yes.Click += Yes_Click1;
        }
        protected void addCourse_Click(object sender, EventArgs e)
        {
            //var div = document.createElement("div");
            //var label = document.createElement("label");
            //label.innerHTML = "Are you sure that you want to add " + document.getElementById("nameInput").nodeValue;
            //div.setAttribute("class", "confirmdiv");
            //document.getElementById("form1").appendChild(div); 
            if (csen.Checked || dmet.Checked || networks.Checked || communications.Checked || electronics.Checked || bi.Checked
               || management.Checked || pharmacy.Checked || ems.Checked || mctr.Checked || graduate.Checked)


            {
                var div = new HtmlGenericControl("div");
                var div2 = new HtmlGenericControl("div");
                var label = new HtmlGenericControl("label");
                var div3 = new HtmlGenericControl("div");

                yes.ID = "1";

                yes.Text = "Yes";
                no.Text = "No";
                yes.Attributes.Add("class", "yesnobtn");
                yes.Attributes.Add("runat", "server");
                no.Attributes.Add("class", "yesnobtn");
                yes.Click += Yes_Click1;

                div.Attributes.Add("class", "confirmationOverlay");
                div2.Attributes.Add("class", "confirmationBox");
                div3.Attributes.Add("class", "confirmationButtons");
                label.Attributes.Add("class", "confirmationLabel");
                div.Controls.Add(div2);
                div2.Controls.Add(label);
                div2.Controls.Add(div3);
                div3.Controls.Add(button2);
                div3.Controls.Add(button3);
                label.InnerHtml = "Are You Sure That You Want To Add \"" + titleInput.Value + "\" As A New Course ?";
                form1.Controls.Add(div);
                button2.Visible = true;
                button3.Visible = true;
            }
            else
            {
                var label = new HtmlGenericControl("label");
                label.InnerHtml = "Please Select At least One Majoe";
                label.Attributes.Add("class", "majorValidator");
                majorLabel.Controls.Add(label);
            }






        }


            protected void Yes_Click1(object sender, EventArgs e)
        {
          //  try
           // {
                string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                //SqlCommand course_title = new SqlCommand("courseTitle", con);
                String ctitle = titleInput.Value.ToString();
                String ccode = codeInput.Value.ToString();
                int clecs = Int16.Parse(lectureInput1.Value);
                int ctuts = Int16.Parse(tutorialInput1.Value);
                int clabs = Int16.Parse(labsInput1.Value);
                int ccredits = Int16.Parse(credit1.Value);
                int csemesterNo = Int16.Parse(semesterInput1.Value);



                string cdescription = descriptionInput1.Value.ToString();

                SqlCommand addCourse = new SqlCommand("AdminAddCourse", con);
                addCourse.CommandType = System.Data.CommandType.StoredProcedure;
                addCourse.Parameters.Add(new SqlParameter("@code", ccode));
                addCourse.Parameters.Add(new SqlParameter("@name", ctitle));
                addCourse.Parameters.Add(new SqlParameter("@description", cdescription));
                addCourse.Parameters.Add(new SqlParameter("@credit_hours", ccredits));
                addCourse.Parameters.Add(new SqlParameter("@isElective", iselective.Checked));
                addCourse.Parameters.Add(new SqlParameter("@Numlectures", clecs));
                addCourse.Parameters.Add(new SqlParameter("@Numtutorials", ctuts));
                addCourse.Parameters.Add(new SqlParameter("@Numlabs", clabs));

                SqlParameter course_id = addCourse.Parameters.Add("@course_id", SqlDbType.Int);
                course_id.Direction = ParameterDirection.Output;


                con.Open();
                
                if (csen.Checked)

                {


                addCourse.ExecuteNonQuery();
                con.Close();

                SqlCommand addCourseMajor1 = new SqlCommand("AdminAddCourseMajor", con);
                    addCourseMajor1.CommandType = System.Data.CommandType.StoredProcedure;
                    con.Open();
                    addCourseMajor1.Parameters.Add(new SqlParameter("@course_id", Int16.Parse(course_id.Value.ToString())));
                    addCourseMajor1.Parameters.Add(new SqlParameter("@major_name", "csen"));
                    addCourseMajor1.Parameters.Add(new SqlParameter("@semesterNo", csemesterNo));

                    addCourseMajor1.ExecuteNonQuery();
                    con.Close();
                }

                if (dmet.Checked)
                {

                    SqlCommand addCourseMajor2 = new SqlCommand("AdminAddCourseMajor", con);
                    addCourseMajor2.CommandType = System.Data.CommandType.StoredProcedure;
                    con.Open();
                    addCourseMajor2.Parameters.Add(new SqlParameter("@course_id", Int16.Parse(course_id.Value.ToString())));
                    addCourseMajor2.Parameters.Add(new SqlParameter("@major_name", "dmet"));
                    addCourseMajor2.Parameters.Add(new SqlParameter("@semesterNo", csemesterNo));
                    addCourseMajor2.ExecuteNonQuery();
                    con.Close();
                }

                if (networks.Checked)
                {
                    SqlCommand addCourseMajor3 = new SqlCommand("AdminAddCourseMajor", con);
                    addCourseMajor3.CommandType = System.Data.CommandType.StoredProcedure;
                    con.Open();
                    addCourseMajor3.Parameters.Add(new SqlParameter("@course_id", Int16.Parse(course_id.Value.ToString())));
                    addCourseMajor3.Parameters.Add(new SqlParameter("@major_name", "networks"));
                    addCourseMajor3.Parameters.Add(new SqlParameter("@semesterNo", csemesterNo));
                    addCourseMajor3.ExecuteNonQuery();
                    con.Close();
                }

                if (communications.Checked)
                {
                    SqlCommand addCourseMajor4 = new SqlCommand("AdminAddCourseMajor", con);
                    addCourseMajor4.CommandType = System.Data.CommandType.StoredProcedure;
                    con.Open();
                    addCourseMajor4.Parameters.Add(new SqlParameter("@course_id", Int16.Parse(course_id.Value.ToString())));
                    addCourseMajor4.Parameters.Add(new SqlParameter("@major_name", "communications"));
                    addCourseMajor4.Parameters.Add(new SqlParameter("@semesterNo", csemesterNo));
                    addCourseMajor4.ExecuteNonQuery();
                    con.Close();
                }

                if (electronics.Checked)
                {
                    SqlCommand addCourseMajor5 = new SqlCommand("AdminAddCourseMajor", con);
                    addCourseMajor5.CommandType = System.Data.CommandType.StoredProcedure;
                    con.Open();
                    addCourseMajor5.Parameters.Add(new SqlParameter("@course_id", Int16.Parse(course_id.Value.ToString())));
                    addCourseMajor5.Parameters.Add(new SqlParameter("@major_name", "electronics"));
                    addCourseMajor5.Parameters.Add(new SqlParameter("@semesterNo", csemesterNo));
                    addCourseMajor5.ExecuteNonQuery();
                    con.Close();
                }

                if (bi.Checked)
                {
                    SqlCommand addCourseMajor6 = new SqlCommand("AdminAddCourseMajor", con);
                    addCourseMajor6.CommandType = System.Data.CommandType.StoredProcedure;
                    con.Open();
                    addCourseMajor6.Parameters.Add(new SqlParameter("@course_id", Int16.Parse(course_id.Value.ToString())));
                    addCourseMajor6.Parameters.Add(new SqlParameter("@major_name", "bi"));
                    addCourseMajor6.Parameters.Add(new SqlParameter("@semesterNo", csemesterNo));
                    addCourseMajor6.ExecuteNonQuery();
                    con.Close();
                }

                if (management.Checked)
                {
                    SqlCommand addCourseMajor7 = new SqlCommand("AdminAddCourseMajor", con);
                    addCourseMajor7.CommandType = System.Data.CommandType.StoredProcedure;
                    con.Open();
                    addCourseMajor7.Parameters.Add(new SqlParameter("@course_id", Int16.Parse(course_id.Value.ToString())));
                    addCourseMajor7.Parameters.Add(new SqlParameter("@major_name", "management"));
                    addCourseMajor7.Parameters.Add(new SqlParameter("@semesterNo", csemesterNo));
                    addCourseMajor7.ExecuteNonQuery();
                    con.Close();
                }
                if (pharmacy.Checked)
                {
                    SqlCommand addCourseMajor8 = new SqlCommand("AdminAddCourseMajor", con);
                    addCourseMajor8.CommandType = System.Data.CommandType.StoredProcedure;
                    con.Open();
                    addCourseMajor8.Parameters.Add(new SqlParameter("@course_id", Int16.Parse(course_id.Value.ToString())));
                    addCourseMajor8.Parameters.Add(new SqlParameter("@major_name", "pharmacy"));
                    addCourseMajor8.Parameters.Add(new SqlParameter("@semesterNo", csemesterNo));
                    addCourseMajor8.ExecuteNonQuery();
                    con.Close();
                }

                if (ems.Checked)
                {
                    SqlCommand addCourseMajor9 = new SqlCommand("AdminAddCourseMajor", con);
                    addCourseMajor9.CommandType = System.Data.CommandType.StoredProcedure;
                    con.Open();
                    addCourseMajor9.Parameters.Add(new SqlParameter("@course_id", Int16.Parse(course_id.Value.ToString())));
                    addCourseMajor9.Parameters.Add(new SqlParameter("@major_name", "ems"));
                    addCourseMajor9.Parameters.Add(new SqlParameter("@semesterNo", csemesterNo));
                    addCourseMajor9.ExecuteNonQuery();
                    con.Close();
                }

                if (mctr.Checked)
                {
                    SqlCommand addCourseMajor10 = new SqlCommand("AdminAddCourseMajor", con);
                    addCourseMajor10.CommandType = System.Data.CommandType.StoredProcedure;
                    con.Open();
                    addCourseMajor10.Parameters.Add(new SqlParameter("@course_id", Int16.Parse(course_id.Value.ToString())));
                    addCourseMajor10.Parameters.Add(new SqlParameter("@major_name", "mctr"));
                    addCourseMajor10.Parameters.Add(new SqlParameter("@semesterNo", csemesterNo));
                    addCourseMajor10.ExecuteNonQuery();
                    con.Close();
                }

                if (graduate.Checked)
                {
                    SqlCommand addCourseMajor11 = new SqlCommand("AdminAddCourseMajor", con);
                    addCourseMajor11.CommandType = System.Data.CommandType.StoredProcedure;
                    con.Open();
                    addCourseMajor11.Parameters.Add(new SqlParameter("@course_id", Int16.Parse(course_id.Value.ToString())));
                    addCourseMajor11.Parameters.Add(new SqlParameter("@major_name", "graduate"));
                    addCourseMajor11.Parameters.Add(new SqlParameter("@semesterNo", csemesterNo));

                    addCourseMajor11.ExecuteNonQuery();
                    con.Close();

                    
                }
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
                label.InnerHtml = "Course Is Added Successfully";
                img.Attributes.Add("src", "./images/yes.svg");
                div3.Controls.Add(img);
                div3.Controls.Add(label);
                button.Controls.Add(span);
                div2.Controls.Add(button);
                div2.Controls.Add(div3);
                div.Controls.Add(div2);
                form1.Controls.Add(div);
            //}
            //catch (Exception ex)
            //{
            //    //button2.Visible = false;
            //    //button3.Visible = false;
            //    //var div = new HtmlGenericControl("div");
            //    //var div2 = new HtmlGenericControl("div");
            //    //var div3 = new HtmlGenericControl("div");
            //    //var button = new HtmlGenericControl("button");
            //    //var img = new HtmlGenericControl("img");
            //    //var label = new HtmlGenericControl("label");
            //    //var span = new HtmlGenericControl("span");
            //    //div.Attributes.Add("class", "successOverlay");
            //    //div.Attributes.Add("id", "successOverlay");
            //    //div2.Attributes.Add("class", "successBox");
            //    //div3.Attributes.Add("class", "successMessage");
            //    //button.Attributes.Add("class", "closeButton");
            //    //button.Attributes.Add("onclick", "confirmAlumni()");
            //    //label.Attributes.Add("class", "successLabel");
            //    //span.InnerHtml = "x";
            //    //label.InnerHtml = ex.Message.ToString();
            //    //img.Attributes.Add("src", "./images/ErrorIcon.png");
            //    //div3.Controls.Add(img);
            //    //div3.Controls.Add(label);
            //    //button.Controls.Add(span);
            //    //div2.Controls.Add(button);
            //    //div2.Controls.Add(div3);
            //    //div.Controls.Add(div2);
            //    //form1.Controls.Add(div);
            //}

            
           

        }


    }

      
  
}
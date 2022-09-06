﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace METWebsite
{
    public partial class AdminAddCourse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addCourse_Click(object sender, EventArgs e)
        {
            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            //SqlCommand course_title = new SqlCommand("courseTitle", con);
            String ctitle = titleInput.Value.ToString();
            String ccode = codeInput.Value.ToString();
            int clecs = Int16.Parse(lectureInput.Value);
            int ctuts = Int16.Parse(tutorialInput.Value);
            int clabs = Int16.Parse(labsInput.Value);
            int ccredits = Int16.Parse(credit.Value);


            string cdescription = descriptionInput.Value.ToString();

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
            addCourse.ExecuteNonQuery();
            con.Close();


            if (csen.Checked)
            {
                SqlCommand addCourseMajor1 = new SqlCommand("AdminAddCourseMajor", con);
                addCourseMajor1.CommandType = System.Data.CommandType.StoredProcedure;
                con.Open();
                addCourseMajor1.Parameters.Add(new SqlParameter("@course_id", Int16.Parse(course_id.Value.ToString())));
                addCourseMajor1.Parameters.Add(new SqlParameter("@major_name", "csen"));
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
                addCourseMajor11.ExecuteNonQuery();
                con.Close();
            }
        }
    }
}
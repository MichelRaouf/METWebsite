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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["page"]!=null || Request.QueryString["major"] != null)
            {
                string page = Request.QueryString["page"];
                if (page == "2")
                {
                    string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
                    //create new sqlconnection and connection to database by using connection string from web.config file  
                    SqlConnection con = new SqlConnection(strcon);
                    con.Open();
                    SqlCommand cmd = new SqlCommand("select C.serial,C.code,C.name from Course C inner join Course_Major cm on C.serial=cm.course_id where major_name='graduate'",con);
                    SqlDataReader reader = cmd.ExecuteReader();
                    String serial, name, code = "";
                    var table = new HtmlTable();
                    
                    while (reader.Read())
                    {
                        

                        serial = reader.GetValue(0).ToString();
                        name = reader.GetValue(2).ToString();
                        code = reader.GetValue(1).ToString();
                        var tr = new HtmlTableRow();
                        var td1 = new HtmlTableCell();
                        var CourseNameLabel = new HtmlGenericControl("label");
                        CourseNameLabel.Attributes.Add("class", "courseTitle");
                        CourseNameLabel.InnerHtml = "[" + code.ToUpper() + "] " + name;
                        td1.Controls.Add(CourseNameLabel);
                        var td2 = new HtmlTableCell();
                        var button = new HtmlGenericControl("button");
                        button.InnerHtml = "View Course";
                        button.Attributes.Add("class", "viewCourse");
                        button.Attributes.Add("onclick", "redirect()");
                        button.Attributes.Add("id", serial);
                           
                       
                        td2.Controls.Add(button);
                        tr.Controls.Add(td1);
                        tr.Controls.Add(td2);
                        table.Controls.Add(tr);
                        //var an = new HtmlGenericControl("button");
                        //an.Attributes.Add("onclick", "redirect()");
                        //an.Attributes.Add("class", "coursebtn");
                        //an.Attributes.Add("id", serial);
                        //an.InnerHtml = "[" + " " + code + " " + "]" + name;

                        //var item = new HtmlGenericControl("li");
                        //item.Controls.Add(an);
                        

                    }
                    Semesters.Controls.Add(table);
                    con.Close();
                }
                else
                {
                   string major= Request.QueryString["major"];
                   int semesterNo=1;
                    string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
                    //create new sqlconnection and connection to database by using connection string from web.config file  
                    SqlConnection con = new SqlConnection(strcon);
                    con.Open();
                    SqlCommand cmd = new SqlCommand("getCurrentSeason",con);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    String season = cmd.ExecuteScalar().ToString();
                    if (season.ToLower().Equals("winter"))
                    {
                        semesterNo = 1;
                    }
                    else if(season.ToLower().Equals("spring"))
                    {
                        semesterNo = 2;
                    }
                    con.Close();
                    while(semesterNo <= 10)
                    {
                        con.Open();
                        SqlCommand cmd2 = new SqlCommand("getCourseOfSemester", con);
                        cmd2.CommandType = System.Data.CommandType.StoredProcedure;
                        cmd2.Parameters.Add(new SqlParameter("@semNo", semesterNo));
                        cmd2.Parameters.Add(new SqlParameter("@major", major));
                        var butSem = new HtmlGenericControl("button");
                        butSem.Attributes.Add("class", "collapsible");
                        butSem.InnerHtml = "Semester" + semesterNo;
                        var SemDiv = new HtmlGenericControl("div");
                        SemDiv.Attributes.Add("class", "content");
                        var uList = new HtmlGenericControl("ul");
                        SqlDataReader reader = cmd2.ExecuteReader();
                        while (reader.Read())
                        {
                           String serial = reader.GetValue(0).ToString();
                            String name = reader.GetValue(2).ToString();
                            String code = reader.GetValue(1).ToString();
                            var an = new HtmlGenericControl("button");
                            an.Attributes.Add("onclick", "redirect()");
                            an.Attributes.Add("class", "coursebtn");
                            an.Attributes.Add("id", serial);
                            an.InnerHtml = "[" + " " + code + " " + "]" + name;

                            var item = new HtmlGenericControl("li");
                            item.Controls.Add(an);
                            uList.Controls.Add(item);

                        }
                        SemDiv.Controls.Add(uList);
                        Semesters.Controls.Add(butSem);
                        Semesters.Controls.Add(SemDiv);
                        con.Close();
                        semesterNo += 2;
                    }



                }
                
            }
            else
            {
               
                string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
                //create new sqlconnection and connection to database by using connection string from web.config file  
                SqlConnection con = new SqlConnection(strcon);
                for (int i = 1; i <= 10; i++)
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("getSemCourseID", con);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    SqlParameter SemNumber = new SqlParameter("@semNo", i);
                    var butSem = new HtmlGenericControl("button");
                    butSem.Attributes.Add("class", "collapsible");
                    butSem.InnerHtml = "Semester" + i;
                    var SemDiv = new HtmlGenericControl("div");
                    SemDiv.Attributes.Add("class", "content");
                    var uList = new HtmlGenericControl("ul");
                    cmd.Parameters.Add(SemNumber);
                    SqlDataReader reader = cmd.ExecuteReader();
                    string serial = ""; string name = ""; string code = "";
                    while (reader.Read())
                    {

                        serial = reader.GetValue(0).ToString();
                        name = reader.GetValue(1).ToString();
                        code = reader.GetValue(2).ToString();
                        var an = new HtmlGenericControl("button");
                        an.Attributes.Add("onclick", "redirect()");
                        an.Attributes.Add("class", "coursebtn");
                        an.Attributes.Add("id", serial);
                        an.InnerHtml = "[" + " " + code + " " + "]" + name;

                        var item = new HtmlGenericControl("li");
                        item.Controls.Add(an);
                        uList.Controls.Add(item);


                    }

                    SemDiv.Controls.Add(uList);
                    Semesters.Controls.Add(butSem);
                    Semesters.Controls.Add(SemDiv);
                    con.Close();
                }


            }


        }

        private void An_Click(object sender, EventArgs e)
        {
            Response.Redirect("CoursePage.aspx?id=((Control)sender).ID" );
        }

        protected void toHome(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
        protected void toCourses(object sender, EventArgs e)
        {
            Response.Redirect("CourseHomePage.aspx");
        }
        protected void toStaff(object sender, EventArgs e)
        {
            Response.Redirect("StaffHomePage.aspx");
        }
        protected void toStudentActiv(object sender, EventArgs e)
        {
            Response.Redirect("StudentActivities.aspx");
        }
        protected void toAlumni(object sender, EventArgs e)
        {
            Response.Redirect("AlumniPage.aspx");
        }
        protected void toAbout(object sender, EventArgs e)
        {
            Response.Redirect("AboutUsPage.aspx");
        }
    }
}
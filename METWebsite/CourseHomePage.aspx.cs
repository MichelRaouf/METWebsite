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
    public partial class tempp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["MET"].ConnectionString;
            //create new sqlconnection and connection to database by using connection string from web.config file  
            SqlConnection con = new SqlConnection(strcon);
            for (int j = 1; j <= 10; j++)
            {
                ImageButton IB1 = new ImageButton();
                IB1.Attributes.Add("runat", "server");
                IB1.ImageUrl += "images/coursesPageImages/semesterPlus.svg";
                IB1.CssClass += "plusCourse";
                IB1.OnClientClick += "openSemesterCata(" + j + ");return false;";
                Button SB1 = new Button();
                SB1.Text += "Semester " + j;
                SB1.CssClass += "semesterButton";
                SB1.Attributes.Add("runat", "server");
                SB1.OnClientClick += "openSemesterCata(" + j + ");return false;";
                var semesterDivClosed = new HtmlGenericControl("div");
                semesterDivClosed.Attributes.Add("class", "semesterDivClosed");
                semesterDivClosed.Attributes.Add("id", "semesterClosedCata" + j);
                semesterDivClosed.Controls.Add(IB1);
                semesterDivClosed.Controls.Add(SB1);
                ImageButton IB2 = new ImageButton();
                IB2.Attributes.Add("runat", "server");
                IB2.ImageUrl += "images/coursesPageImages/upArrow.svg";
                IB2.CssClass += "plusCourse";
                IB2.OnClientClick += "closeSemesterCata(" + j + ");return false;";
                Button SB2 = new Button();
                SB2.Text += "Semester " + j;
                SB2.CssClass += "semesterButton";
                SB2.Attributes.Add("runat", "server");
                SB2.OnClientClick += "closeSemesterCata(" + j + ");return false;";
                var semesterDivOpened = new HtmlGenericControl("div");
                semesterDivOpened.Attributes.Add("class", "semesterDivOpened");
                semesterDivOpened.Attributes.Add("id", "semesterOpenedCata" + j);
                semesterDivOpened.Controls.Add(IB2);
                semesterDivOpened.Controls.Add(SB2);
                var coursesList = new HtmlGenericControl("ul");
                coursesList.Attributes.Add("class", "coursesList");
                con.Open();
                SqlCommand cmd = new SqlCommand("getSemCourseID", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                SqlParameter semNo = new SqlParameter("@semNo", j);
                cmd.Parameters.Add(semNo);
                SqlDataReader reader = cmd.ExecuteReader();
                String courseSerial = "";
                String courseName = "";
                String courseCode = "";
                while (reader.Read())
                {
                    courseSerial = reader.GetValue(0).ToString();
                    courseName = reader.GetValue(1).ToString();
                    courseCode = reader.GetValue(2).ToString();
                    var aTag = new HtmlGenericControl("a");
                    aTag.Attributes.Add("href", "CoursePage.aspx?id=((Control)sender)." + courseSerial);
                    aTag.InnerHtml = "(" + courseCode + ") " + courseName;
                    var listItemCata = new HtmlGenericControl("li");
                    listItemCata.Controls.Add(aTag);
                    coursesList.Controls.Add(listItemCata);
                }
                con.Close();
                var semesterListOpened = new HtmlGenericControl("div");
                semesterListOpened.Attributes.Add("class", "semesterListOpened");
                semesterListOpened.Attributes.Add("id", "semesterListOpenedCata" + j);
                semesterListOpened.Controls.Add(coursesList);
                var eachSemester = new HtmlGenericControl("div");
                eachSemester.Attributes.Add("class", "eachSemester");
                eachSemester.Attributes.Add("id", "eachSemesterCata" + j);
                eachSemester.Controls.Add(semesterDivClosed);
                eachSemester.Controls.Add(semesterDivOpened);
                eachSemester.Controls.Add(semesterListOpened);
                catalogueSemesters.Controls.Add(eachSemester);
            }
            ImageButton IBE = new ImageButton();
            IBE.Attributes.Add("runat", "server");
            IBE.ImageUrl += "images/coursesPageImages/semesterPlus.svg";
            IBE.CssClass += "plusCourse";
            IBE.OnClientClick += "openSemesterCataE();return false;";
            Button SBE = new Button();
            SBE.Text += "Electives";
            SBE.CssClass += "semesterButton";
            SBE.Attributes.Add("runat", "server");
            SBE.OnClientClick += "openSemesterCataE();return false;";
            var semesterDivClosedE = new HtmlGenericControl("div");
            semesterDivClosedE.Attributes.Add("class", "semesterDivClosed");
            semesterDivClosedE.Attributes.Add("id", "semesterClosedCataElectives");
            semesterDivClosedE.Controls.Add(IBE);
            semesterDivClosedE.Controls.Add(SBE);
            ImageButton IBEE = new ImageButton();
            IBEE.Attributes.Add("runat", "server");
            IBEE.ImageUrl += "images/coursesPageImages/upArrow.svg";
            IBEE.CssClass += "plusCourse";
            IBEE.OnClientClick += "closeSemesterCataE();return false;";
            Button SBEE = new Button();
            SBEE.Text += "Electives";
            SBEE.CssClass += "semesterButton";
            SBEE.Attributes.Add("runat", "server");
            SBEE.OnClientClick += "closeSemesterCataE();return false;";
            var semesterDivOpenedE = new HtmlGenericControl("div");
            semesterDivOpenedE.Attributes.Add("class", "semesterDivOpened");
            semesterDivOpenedE.Attributes.Add("id", "semesterOpenedCataElectives");
            semesterDivOpenedE.Controls.Add(IBEE);
            semesterDivOpenedE.Controls.Add(SBEE);
            var coursesListE = new HtmlGenericControl("ul");
            coursesListE.Attributes.Add("class", "coursesList");
            con.Open();
            SqlCommand cmdE = new SqlCommand("getAllElectives", con);
            cmdE.CommandType = System.Data.CommandType.StoredProcedure;
            SqlDataReader readerE = cmdE.ExecuteReader();
            String courseSerialE = "";
            String courseNameE = "";
            String courseCodeE = "";
            while (readerE.Read())
            {
                courseSerialE = readerE.GetValue(0).ToString();
                courseNameE = readerE.GetValue(1).ToString();
                courseCodeE = readerE.GetValue(2).ToString();
                var aTagE = new HtmlGenericControl("a");
                aTagE.Attributes.Add("href", "CoursePage.aspx?id=((Control)sender)." + courseSerialE);
                aTagE.InnerHtml = "(" + courseCodeE + ") " + courseNameE;
                var listItemCataE = new HtmlGenericControl("li");
                listItemCataE.Controls.Add(aTagE);
                coursesListE.Controls.Add(listItemCataE);
            }
            con.Close();
            var semesterListOpenedE = new HtmlGenericControl("div");
            semesterListOpenedE.Attributes.Add("class", "semesterListOpened");
            semesterListOpenedE.Attributes.Add("id", "semesterListOpenedCataElectives");
            semesterListOpenedE.Controls.Add(coursesListE);
            var eachSemesterE = new HtmlGenericControl("div");
            eachSemesterE.Attributes.Add("class", "eachSemester");
            eachSemesterE.Attributes.Add("id", "eachSemesterCataElectives");
            eachSemesterE.Controls.Add(semesterDivClosedE);
            eachSemesterE.Controls.Add(semesterDivOpenedE);
            eachSemesterE.Controls.Add(semesterListOpenedE);
            catalogueSemesters.Controls.Add(eachSemesterE);
            con.Open();
            SqlCommand cmd2 = new SqlCommand("getGraduateCourses", con);
            cmd2.CommandType = System.Data.CommandType.StoredProcedure;
            SqlDataReader reader2 = cmd2.ExecuteReader();
            String courseSerialG = "";
            String courseNameG = "";
            String courseCodeG = "";
            while (reader2.Read())
            {
                courseSerialG = reader2.GetValue(0).ToString();
                courseNameG = reader2.GetValue(1).ToString();
                courseCodeG = reader2.GetValue(2).ToString();
                var aTagG = new HtmlGenericControl("a");
                aTagG.Attributes.Add("href", "CoursePage.aspx?id=((Control)sender)." + courseSerialG);
                aTagG.InnerHtml = "(" + courseCodeG + ") " + courseNameG;
                var listItemG = new HtmlGenericControl("li");
                listItemG.Controls.Add(aTagG);
                graduateCoursesList.Controls.Add(listItemG);
            }
            con.Close();
            con.Open();
            SqlCommand cmdSet = new SqlCommand("getCurrentSeason", con);
            cmdSet.CommandType = System.Data.CommandType.StoredProcedure;
            String season = cmdSet.ExecuteScalar().ToString();
            con.Close();
            con.Open();
            SqlCommand cmd1 = new SqlCommand("getAllFaculties", con);
            cmd1.CommandType = System.Data.CommandType.StoredProcedure;
            SqlDataReader reader1 = cmd1.ExecuteReader();
            List<int> facultiesIDs = new List<int>();
            List<String> facultiesNames = new List<String>();
            //int buttonCounterIDs = 1;
            while (reader1.Read())
            {
                facultiesIDs.Add(Int32.Parse(reader1.GetValue(0).ToString()));
                facultiesNames.Add(reader1.GetValue(1).ToString());
            }
            con.Close();
            List<int> facultiesIDsList = new List<int>();
            List<String> facultiesNamesList = new List<String>();
            List<int> majorsIDsList = new List<int>();
            List<String> majorsNamesList = new List<String>();
            int i = 0;
            while (i < facultiesIDs.Count)
            {
                con.Open();
                SqlCommand cmd11 = new SqlCommand("getMajors", con);
                cmd11.CommandType = System.Data.CommandType.StoredProcedure;
                SqlParameter facID = new SqlParameter("@facID", facultiesIDs.ElementAt(i));
                cmd11.Parameters.Add(facID);
                SqlDataReader reader11 = cmd11.ExecuteReader();
                while (reader11.Read())
                {
                    facultiesIDsList.Add(facultiesIDs.ElementAt(i));
                    facultiesNamesList.Add(facultiesNames.ElementAt(i));
                    majorsIDsList.Add(Int32.Parse(reader11.GetValue(0).ToString()));
                    majorsNamesList.Add(reader11.GetValue(1).ToString());
                }
                con.Close();
                i++;
            }
            List<int> availableSemesters = new List<int>();
            if (season.ToLower().Equals("winter"))
            {
                availableSemesters.Add(1);
                availableSemesters.Add(3);
                availableSemesters.Add(5);
                availableSemesters.Add(7);
                availableSemesters.Add(9);
            }
            else
            {
                availableSemesters.Add(2);
                availableSemesters.Add(4);
                availableSemesters.Add(6);
                availableSemesters.Add(8);
                availableSemesters.Add(10);
            }
            for (int a = 0; a < facultiesIDs.Count; a++)
            {
                int majorListCounter = 0;
                Button b = new Button();
                b.Text += facultiesNames.ElementAt(a);
                b.CssClass += "FacultyLabelButton";
                b.Attributes.Add("runat", "server");
                b.OnClientClick += "facClicked(" + facultiesIDs.ElementAt(a) + ");return false;";
                var facultyDiv = new HtmlGenericControl("div");
                facultyDiv.Attributes.Add("class", "facultiesItems");
                facultyDiv.Attributes.Add("id", "fac" + facultiesIDs.ElementAt(a));
                facultyDiv.Controls.Add(b);
                var subMajorDiv = new HtmlGenericControl("div");
                subMajorDiv.Attributes.Add("class", "subMajors");
                subMajorDiv.Attributes.Add("id", "subMajors" + facultiesIDs.ElementAt(a));
                var subMajorsList = new HtmlGenericControl("ul");
                subMajorsList.Attributes.Add("class", "subMajorsList");
                while (majorListCounter < majorsIDsList.Count)
                {
                    if (facultiesIDs.ElementAt(a) == facultiesIDsList.ElementAt(majorListCounter))
                    {
                        Button b1 = new Button();
                        b1.Text += majorsNamesList.ElementAt(majorListCounter);
                        b1.CssClass += "subMajorLabel";
                        b1.Attributes.Add("runat", "server");
                        b1.OnClientClick = "facSubClicked(" + facultiesIDsList.ElementAt(majorListCounter) + ", " + majorsIDsList.ElementAt(majorListCounter) + ");return false;";
                        var listItem = new HtmlGenericControl("li");
                        listItem.Controls.Add(b1);
                        subMajorsList.Controls.Add(listItem);
                        var undergradsemestersdiv = new HtmlGenericControl("div");
                        undergradsemestersdiv.Attributes.Add("class", "undergradSemesters");
                        undergradsemestersdiv.Attributes.Add("id", "fac" + facultiesIDsList.ElementAt(majorListCounter) + "sub" + majorsIDsList.ElementAt(majorListCounter) + "Div");
                        for (int k = 0; k < 5; k++)
                        {
                            ImageButton IBU = new ImageButton();
                            IBU.Attributes.Add("runat", "server");
                            IBU.ImageUrl += "images/coursesPageImages/semesterPlus.svg";
                            IBU.CssClass += "plusCourse";
                            IBU.OnClientClick += "openSemesterFacSub(" + availableSemesters.ElementAt(k) + ", " + facultiesIDsList.ElementAt(majorListCounter) + ", " + majorsIDsList.ElementAt(majorListCounter) + ");return false;";
                            Button SBU = new Button();
                            SBU.Text += "Semester " + availableSemesters.ElementAt(k);
                            SBU.CssClass += "semesterButton";
                            SBU.Attributes.Add("runat", "server");
                            SBU.OnClientClick += "openSemesterFacSub(" + availableSemesters.ElementAt(k) + ", " + facultiesIDsList.ElementAt(majorListCounter) + ", " + majorsIDsList.ElementAt(majorListCounter) + ");return false;";
                            var semesterDivClosedU = new HtmlGenericControl("div");
                            semesterDivClosedU.Attributes.Add("class", "semesterDivClosed");
                            semesterDivClosedU.Attributes.Add("id", "semester" + availableSemesters.ElementAt(k) + "ClosedFac" + facultiesIDsList.ElementAt(majorListCounter) + "Sub" + majorsIDsList.ElementAt(majorListCounter));
                            semesterDivClosedU.Controls.Add(IBU);
                            semesterDivClosedU.Controls.Add(SBU);
                            ImageButton IBUU = new ImageButton();
                            IBUU.Attributes.Add("runat", "server");
                            IBUU.ImageUrl += "images/coursesPageImages/upArrow.svg";
                            IBUU.CssClass += "plusCourse";
                            IBUU.OnClientClick += "closeSemesterFacSub(" + availableSemesters.ElementAt(k) + ", " + facultiesIDsList.ElementAt(majorListCounter) + ", " + majorsIDsList.ElementAt(majorListCounter) + ");return false;";
                            Button SBUU = new Button();
                            SBUU.Text += "Semester " + availableSemesters.ElementAt(k);
                            SBUU.CssClass += "semesterButton";
                            SBUU.Attributes.Add("runat", "server");
                            SBUU.OnClientClick += "closeSemesterFacSub(" + availableSemesters.ElementAt(k) + ", " + facultiesIDsList.ElementAt(majorListCounter) + ", " + majorsIDsList.ElementAt(majorListCounter) + ");return false;";
                            var semesterDivOpenedU = new HtmlGenericControl("div");
                            semesterDivOpenedU.Attributes.Add("class", "semesterDivOpened");
                            semesterDivOpenedU.Attributes.Add("id", "semester" + availableSemesters.ElementAt(k) + "OpenedFac" + facultiesIDsList.ElementAt(majorListCounter) + "Sub" + majorsIDsList.ElementAt(majorListCounter));
                            semesterDivOpenedU.Controls.Add(IBUU);
                            semesterDivOpenedU.Controls.Add(SBUU);
                            var coursesListU = new HtmlGenericControl("ul");
                            coursesListU.Attributes.Add("class", "coursesList");
                            String courseSerialU = "";
                            String courseNameU = "";
                            String courseCodeU = "";
                            con.Open();
                            SqlCommand cmd3 = new SqlCommand("getUndergradCoursesPerSemester", con);
                            cmd3.CommandType = System.Data.CommandType.StoredProcedure;
                            SqlParameter facIDU = new SqlParameter("@facID", facultiesIDsList.ElementAt(majorListCounter));
                            cmd3.Parameters.Add(facIDU);
                            SqlParameter majIDU = new SqlParameter("@majID", majorsIDsList.ElementAt(majorListCounter));
                            cmd3.Parameters.Add(majIDU);
                            SqlParameter semIDU = new SqlParameter("@semNo", availableSemesters.ElementAt(k));
                            cmd3.Parameters.Add(semIDU);
                            SqlDataReader reader3 = cmd3.ExecuteReader();
                            while (reader3.Read())
                            {
                                courseSerialU = reader3.GetValue(0).ToString();
                                courseNameU = reader3.GetValue(1).ToString();
                                courseCodeU = reader3.GetValue(2).ToString();
                                var aTagU = new HtmlGenericControl("a");
                                aTagU.Attributes.Add("href", "CoursePage.aspx?id=((Control)sender)." + courseSerialU);
                                aTagU.InnerHtml = "(" + courseCodeU + ") " + courseNameU;
                                var listItemU = new HtmlGenericControl("li");
                                listItemU.Controls.Add(aTagU);
                                coursesListU.Controls.Add(listItemU);
                            }
                            con.Close();
                            var semesterListOpenedU = new HtmlGenericControl("div");
                            semesterListOpenedU.Attributes.Add("class", "semesterListOpened");
                            semesterListOpenedU.Attributes.Add("id", "semester" + availableSemesters.ElementAt(k) + "ListOpenedFac" + facultiesIDsList.ElementAt(majorListCounter) + "Sub" + majorsIDsList.ElementAt(majorListCounter));
                            semesterListOpenedU.Controls.Add(coursesListU);
                            var eachSemesterU = new HtmlGenericControl("div");
                            eachSemesterU.Attributes.Add("class", "eachSemester");
                            eachSemesterU.Controls.Add(semesterDivClosedU);
                            eachSemesterU.Controls.Add(semesterDivOpenedU);
                            eachSemesterU.Controls.Add(semesterListOpenedU);
                            undergradsemestersdiv.Controls.Add(eachSemesterU);
                        }
                        undergraduateCourses.Controls.Add(undergradsemestersdiv);
                    }
                    majorListCounter++;
                }
                subMajorDiv.Controls.Add(subMajorsList);
                facultyDiv.Controls.Add(subMajorDiv);
                undergradFaculties.Controls.Add(facultyDiv);
            }
        }
        protected void toLogin(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
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
        protected void toSearchRes(object sender, EventArgs e)
        {

        }
    }
}
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="temp2.aspx.cs" Inherits="METWebsite.temp21" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MET Website</title>
    <link rel="icon" href="./images/gucLogo.png"/>
    <link  rel="stylesheet" href="./StyleSheets/temp.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="scrollable">

            <div class="header">
                <img class="logo" src="./images/topBarImages/GUC-logo 2.svg" />
                <img class="bar" src="./images/topBarImages/bar.svg"/>
                <label class="facultyLabel">Faculty of Media Engineering & Technology</label>
                <asp:Button ID="Button1" CssClass="login" runat="server" Text="Login" OnClick="toLogin" />
            </div>

            <div class="navbar">
            <div>
                <img src="images/staff/home.png" alt="Alternate Text" class="navImgHomeBookHeadphones" />
                <asp:Button Text="Home" runat="server" CssClass="navbtn" OnClick="toHome" />
            </div>
            <div>
                <img src="images/staff/book.png" alt="Alternate Text"class="navImgHomeBookHeadphones"/>
                <asp:Button Text="Courses" runat="server" CssClass="navbtnin" OnClick="toCourses" />
            </div>
            <div>
                <img src="images/staff/group.png" alt="Alternate Text" class="navImgGroup"/>
                <asp:Button Text="Staff" runat="server" CssClass="navbtn" OnClick="toStaff" />
            </div>
            <div >
                <img src="images/staff/headphones.png" alt="Alternate Text"class="navImgHomeBookHeadphones" />
                <asp:Button Text="Student Activity" runat="server" CssClass="navbtn" OnClick="toStudentActiv" />
            </div>
            <div >
                <img src="images/staff/graduated.png" alt="Alternate Text"class="navImgGrad" />
                <asp:Button Text="Alumni" runat="server" CssClass="navbtn" OnClick="toAlumni" />
            </div>
            <div >
                <img src="images/staff/info.png" alt="Info" class="navImgAbout" />
                 <asp:Button Text="About Us" runat="server" CssClass="navbtn" OnClick="toAbout" />
            </div> 
        </div>

        </div>

        <div class="body">
            <div class="index">
                <div class="searchDiv">
                    <asp:ImageButton runat="server" ImageUrl="images/staff/search.png" CssClass="searchButton" OnClick="toSearchRes" />
                    <asp:TextBox placeholder="Search.." id="searchInput" runat="server"/>
                </div>
                <div class="courseCatalogDiv">
                    <asp:ImageButton runat="server" ImageUrl="./images/coursesPageImages/bulletPoint.svg" CssClass="bulletPoint" OnClientClick="courseCatalogueClicked();return false;" />
                    <asp:Button ID="button" Text="Course Catalogue" CssClass="indexButtonIn" runat="server" OnClientClick="courseCatalogueClicked();return false;"/>
                </div>
                <div class="graduateCoursesDiv">
                    <asp:ImageButton runat="server" ImageUrl="./images/coursesPageImages/bulletPoint.svg" CssClass="bulletPoint" OnClientClick="gradCoursesClicked();return false;" />
                    <asp:Button ID="button2" Text="Graduate Courses" CssClass="indexButton" runat="server" OnClientClick="gradCoursesClicked();return false;"/>
                </div>
                <div class="undergradCoursesDiv">
                    <asp:ImageButton runat="server" ImageUrl="images/coursesPageImages/plusButton.svg" CssClass="plusPoint" OnClientClick="undergradCoursesClicked();return false;" />
                    <asp:Button ID="button3" Text="Undergraduate Courses" CssClass="indexButton" runat="server" OnClientClick="undergradCoursesClicked();return false;"/>
                </div>
            </div>
            <div class="vertical">

            </div>

            <div class="semesters">
                <div class="catalogueSemesters" id="catalogueSemesters">
                    <div class="eachSemester">
                        <div class="semesterDivClosed" id="semesterClosedCata">
                            <asp:ImageButton runat="server" ImageUrl="images/coursesPageImages/semesterPlus.svg" CssClass="plusCourse" OnClientClick="openSemesterCata();return false;" />
                            <asp:Button ID="button4" Text="Semester 1" CssClass="semesterButton" runat="server" OnClientClick="openSemesterCata();return false;"/>
                        </div>
                        <div class="semesterDivOpened" id="semesterOpenedCata">
                            <asp:ImageButton runat="server" ImageUrl="images/coursesPageImages/upArrow.svg" CssClass="plusCourse" OnClientClick="closeSemesterCata();return false;" />
                            <asp:Button ID="button5" Text="Semester 1" CssClass="semesterButton" runat="server" OnClientClick="closeSemesterCata();return false;"/>
                        </div>
                        <div class="semesterListOpened" id="semesterListOpenedCata">
                            <ul class="coursesList">
                                <li><a>(MATH203) Mathematics 1</a></li>
                                <li><a>(MATH203) Mathematics 1</a></li>
                                <li><a>(MATH203) Mathematics 1</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="graduateCourses" id="graduateCourses">
                    <label class="graduateCoursesLabel">Graduate Courses: </label>
                    <ul class="coursesList">
                        <li><a>(MATH203) Mathematics 1</a></li>
                        <li><a>(MATH203) Mathematics 1</a></li>
                        <li><a>(MATH203) Mathematics 1</a></li>
                    </ul>
                </div>
                <div class="undergraduateCourses" id="undergraduateCourses">
                    hello
                </div>
            </div>
        </div>
    </form>
</body>
</html>
<script>
        function courseCatalogueClicked() {
            document.getElementById("catalogueSemesters").style.display = "block";
            document.getElementById("graduateCourses").style.display = "none";
            document.getElementById("undergraduateCourses").style.display = "none";
            document.getElementById("button").style.fontWeight = "600";
            document.getElementById("button2").style.fontWeight = "400";
            document.getElementById("button3").style.fontWeight = "400";
        }
        function gradCoursesClicked() {
            document.getElementById("catalogueSemesters").style.display = "none";
            document.getElementById("graduateCourses").style.display = "block";
            document.getElementById("undergraduateCourses").style.display = "none";
            document.getElementById("button").style.fontWeight = "400";
            document.getElementById("button2").style.fontWeight = "600";
            document.getElementById("button3").style.fontWeight = "400";
        }
        function undergradCoursesClicked() {
            document.getElementById("catalogueSemesters").style.display = "none";
            document.getElementById("graduateCourses").style.display = "none";
            document.getElementById("undergraduateCourses").style.display = "block";
            document.getElementById("button").style.fontWeight = "400";
            document.getElementById("button2").style.fontWeight = "400";
            document.getElementById("button3").style.fontWeight = "600";
        }
        function openSemesterCata() {
            document.getElementById("semesterClosedCata").style.display = "none";
            document.getElementById("semesterOpenedCata").style.display = "block";
            document.getElementById("semesterListOpenedCata").style.display = "block";
        }
        function closeSemesterCata() {
            document.getElementById("semesterClosedCata").style.display = "block";
            document.getElementById("semesterOpenedCata").style.display = "none";
            document.getElementById("semesterListOpenedCata").style.display = "none";
        }
</script>
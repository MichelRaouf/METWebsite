<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="temp.aspx.cs" Inherits="METWebsite.temp9" %>

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
                <div class="undergradFaculties" id="undergradFaculties">
                    <div class="facultiesItems" id="fac1">
                        <asp:Button ID="button12" Text="Media Engineering and Technology" CssClass="FacultyLabel" runat="server" OnClientClick="facClicked(1);return false;"/>
                        <div class="subMajors" id="subMajors1">
                            <ul class="subMajorsList">
                                <li>
                                    <asp:Button ID="button13" Text="Computer Science and Engineering" CssClass="subMajorLabel" runat="server" OnClientClick="facSubClicked(1, 1);return false;"/>
                                </li>
                                <li>
                                    <asp:Button ID="button14" Text="Digital Media Engineering and Technology" CssClass="subMajorLabel" runat="server" OnClientClick="facSubClicked(1, 2);return false;"/>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="facultiesItems" id="fac2">
                        <asp:Button ID="button15" Text="Information Engineering and Technology" CssClass="FacultyLabel" runat="server" OnClientClick="facClicked(2);return false;"/>
                        <div class="subMajors" id="subMajors2">
                            <ul class="subMajorsList">
                                <li>
                                    <asp:Button ID="button16" Text="Networks" CssClass="subMajorLabel" runat="server" OnClientClick="facSubClicked(2, 1);return false;"/>
                                </li>
                                <li>
                                    <asp:Button ID="button17" Text="Communications" CssClass="subMajorLabel" runat="server" OnClientClick="facSubClicked(2, 2);return false;"/>
                                </li>
                                <li>
                                    <asp:Button ID="button18" Text="Electronics" CssClass="subMajorLabel" runat="server" OnClientClick="facSubClicked(2, 3);return false;"/>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="vertical">

            </div>
            <div class="semesters">
                <div class="catalogueSemesters" id="catalogueSemesters">
                    <div class="eachSemester">
                        <div class="semesterDivClosed" id="semesterClosedCata1">
                            <asp:ImageButton runat="server" ImageUrl="images/coursesPageImages/semesterPlus.svg" CssClass="plusCourse" OnClientClick="openSemesterCata(1);return false;"/>
                            <asp:Button ID="button4" Text="Semester 1" CssClass="semesterButton" runat="server" OnClientClick="openSemesterCata(1);return false;"/>
                        </div>
                        <div class="semesterDivOpened" id="semesterOpenedCata1">
                            <asp:ImageButton runat="server" ImageUrl="images/coursesPageImages/upArrow.svg" CssClass="plusCourse" OnClientClick="closeSemesterCata(1);return false;"/>
                            <asp:Button ID="button5" Text="Semester 1" CssClass="semesterButton" runat="server" OnClientClick="closeSemesterCata(1);return false;"/>
                        </div>
                        <div class="semesterListOpened" id="semesterListOpenedCata1">
                            <ul class="coursesList">
                                <li><a>(MATH203) Mathematics 1</a></li>
                                <li><a>(MATH203) Mathematics 1</a></li>
                                <li><a>(MATH203) Mathematics 1</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="eachSemester">
                        <div class="semesterDivClosed" id="semesterClosedCata2">
                            <asp:ImageButton runat="server" ImageUrl="images/coursesPageImages/semesterPlus.svg" CssClass="plusCourse" OnClientClick="openSemesterCata(2);return false;" />
                            <asp:Button ID="button6" Text="Semester 2" CssClass="semesterButton" runat="server" OnClientClick="openSemesterCata(2);return false;"/>
                        </div>
                        <div class="semesterDivOpened" id="semesterOpenedCata2">
                            <asp:ImageButton runat="server" ImageUrl="images/coursesPageImages/upArrow.svg" CssClass="plusCourse" OnClientClick="closeSemesterCata(2);return false;" />
                            <asp:Button ID="button7" Text="Semester 2" CssClass="semesterButton" runat="server" OnClientClick="closeSemesterCata(2);return false;"/>
                        </div>
                        <div class="semesterListOpened" id="semesterListOpenedCata2">
                            <ul class="coursesList">
                                <li><a>(MATH203) Mathematics 1</a></li>
                                <li><a>(MATH203) Mathematics 1</a></li>
                                <li><a>(MATH203) Mathematics 1</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="eachSemester">
                        <div class="semesterDivClosed" id="semesterClosedCata3">
                            <asp:ImageButton runat="server" ImageUrl="images/coursesPageImages/semesterPlus.svg" CssClass="plusCourse" OnClientClick="openSemesterCata(3);return false;" />
                            <asp:Button ID="button8" Text="Semester 3" CssClass="semesterButton" runat="server" OnClientClick="openSemesterCata(3);return false;"/>
                        </div>
                        <div class="semesterDivOpened" id="semesterOpenedCata3">
                            <asp:ImageButton runat="server" ImageUrl="images/coursesPageImages/upArrow.svg" CssClass="plusCourse" OnClientClick="closeSemesterCata(3);return false;" />
                            <asp:Button ID="button9" Text="Semester 3" CssClass="semesterButton" runat="server" OnClientClick="closeSemesterCata(3);return false;"/>
                        </div>
                        <div class="semesterListOpened" id="semesterListOpenedCata3">
                            <ul class="coursesList">
                                <li><a>(MATH203) Mathematics 1</a></li>
                                <li><a>(MATH203) Mathematics 1</a></li>
                                <li><a>(MATH203) Mathematics 1</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="eachSemester">
                        <div class="semesterDivClosed" id="semesterClosedCata4">
                            <asp:ImageButton runat="server" ImageUrl="images/coursesPageImages/semesterPlus.svg" CssClass="plusCourse" OnClientClick="openSemesterCata(4);return false;" />
                            <asp:Button ID="button10" Text="Semester 4" CssClass="semesterButton" runat="server" OnClientClick="openSemesterCata(4);return false;"/>
                        </div>
                        <div class="semesterDivOpened" id="semesterOpenedCata4">
                            <asp:ImageButton runat="server" ImageUrl="images/coursesPageImages/upArrow.svg" CssClass="plusCourse" OnClientClick="closeSemesterCata(4);return false;" />
                            <asp:Button ID="button11" Text="Semester 4" CssClass="semesterButton" runat="server" OnClientClick="closeSemesterCata(4);return false;"/>
                        </div>
                        <div class="semesterListOpened" id="semesterListOpenedCata4">
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
                    <div class="tempLabelDiv" id="tempLabelDiv">
                        Undergraduate Courses:
                    </div>
                    <div class="undergradSemesters" id="fac1sub1Div">
                        1, 1
                    </div>
                    <div class="undergradSemesters" id="fac1sub2Div">
                        1, 2
                    </div>
                    <div class="undergradSemesters" id="fac1sub3Div">
                        1, 3
                    </div>
                    <div class="undergradSemesters" id="fac2sub1Div">
                        2, 1
                    </div>
                    <div class="undergradSemesters" id="fac2sub2Div">
                        2, 2
                    </div>
                    <div class="undergradSemesters" id="fac2sub3Div">
                        2, 3
                    </div>
                </div>
            </div>
        </div>

    </form>
    <script>
        function courseCatalogueClicked() {
            document.getElementById("catalogueSemesters").style.display = "block";
            document.getElementById("graduateCourses").style.display = "none";
            document.getElementById("undergraduateCourses").style.display = "none";
            document.getElementById("button").style.fontWeight = "600";
            document.getElementById("button2").style.fontWeight = "400";
            document.getElementById("button3").style.fontWeight = "400";
            document.getElementById("tempLabelDiv").style.display = "block";
            var faculties = document.getElementById("undergradFaculties").children.length;
            for (var i = 1; i <= faculties; i++) {
                document.getElementById("fac" + i).style.display = "none";
                document.getElementById("subMajors" + i).style.display = "none";
                var length = ((((document.getElementById("fac" + i).children)[1]).children)[0]).children.length;
                for (var j = 1; j <= length; j++) {
                    document.getElementById("fac" + i + "sub" + j + "Div").style.display = "none";
                }
            }
        }
        function gradCoursesClicked() {
            document.getElementById("catalogueSemesters").style.display = "none";
            document.getElementById("graduateCourses").style.display = "block";
            document.getElementById("undergraduateCourses").style.display = "none";
            document.getElementById("button").style.fontWeight = "400";
            document.getElementById("button2").style.fontWeight = "600";
            document.getElementById("button3").style.fontWeight = "400";
            document.getElementById("tempLabelDiv").style.display = "block";
            var faculties = document.getElementById("undergradFaculties").children.length;
            for (var i = 1; i <= faculties; i++) {
                document.getElementById("fac" + i).style.display = "none";
                document.getElementById("subMajors" + i).style.display = "none";
                var length = ((((document.getElementById("fac" + i).children)[1]).children)[0]).children.length;
                for (var j = 1; j <= length; j++) {
                    document.getElementById("fac" + i + "sub" + j + "Div").style.display = "none";
                }
            }
        }
        function undergradCoursesClicked() {
            document.getElementById("catalogueSemesters").style.display = "none";
            document.getElementById("graduateCourses").style.display = "none";
            document.getElementById("undergraduateCourses").style.display = "block";
            document.getElementById("button").style.fontWeight = "400";
            document.getElementById("button2").style.fontWeight = "400";
            document.getElementById("button3").style.fontWeight = "600";
            var faculties = document.getElementById("undergradFaculties").children.length;
            for (var i = 1; i <= faculties; i++) {
                document.getElementById("fac" + i).style.display = "block";
            }
        }
        function openSemesterCata(semester) {
            document.getElementById("semesterClosedCata" + semester).style.display = "none";
            document.getElementById("semesterOpenedCata" + semester).style.display = "block";
            document.getElementById("semesterListOpenedCata" + semester).style.display = "block";
        }
        function closeSemesterCata(semester) {
            document.getElementById("semesterClosedCata" + semester).style.display = "block";
            document.getElementById("semesterOpenedCata" + semester).style.display = "none";
            document.getElementById("semesterListOpenedCata" + semester).style.display = "none";
        }
        function facClicked(facultyNumber) {
            if (document.getElementById("subMajors" + facultyNumber).style.display == "none") {
                document.getElementById("subMajors" + facultyNumber).style.display = "block";
                var faculties = document.getElementById("undergradFaculties").children.length;
                for (var i = 1; i <= faculties; i++) {
                    if (i != facultyNumber) {
                        document.getElementById("subMajors" + i).style.display = "none";
                    }
                }
            } else {
                document.getElementById("subMajors" + facultyNumber).style.display = "none";
            }
        }
        function facSubClicked(facultyNumber, subMajorNumber) {
            document.getElementById("tempLabelDiv").style.display = "none";
            document.getElementById("fac" + facultyNumber + "sub" + subMajorNumber + "Div").style.display = "block";
            var faculties = document.getElementById("undergradFaculties").children.length;
            for (var i = 1; i <= faculties; i++) {
                var length = ((((document.getElementById("fac" + i).children)[1]).children)[0]).children.length;
                for (var j = 1; j <= length; j++) {
                    if (i != facultyNumber || j != subMajorNumber) {
                        document.getElementById("fac" + i + "sub" + j + "Div").style.display = "none";
                    }
                }
            }
        }
        function openSemesterFacSub(semester, facultyNumber, subMajorNumber) {
            document.getElementById("semester" + semester + "ClosedFac" + facultyNumber + "Sub" + subMajorNumber).style.display = "none";
            document.getElementById("semester" + semester + "OpenedFac" + facultyNumber + "Sub" + subMajorNumber).style.display = "block";
            document.getElementById("semester" + semester + "ListOpenedFac" + facultyNumber + "Sub" + subMajorNumber).style.display = "block";
        }
        function closeSemesterFacSub(semester, facultyNumber, subMajorNumber) {
            document.getElementById("semester" + semester + "ClosedFac" + facultyNumber + "Sub" + subMajorNumber).style.display = "block";
            document.getElementById("semester" + semester + "OpenedFac" + facultyNumber + "Sub" + subMajorNumber).style.display = "none";
            document.getElementById("semester" + semester + "ListOpenedFac" + facultyNumber + "Sub" + subMajorNumber).style.display = "none";
        }
    </script>
</body>
</html>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CourseHomePage.aspx.cs" Inherits="METWebsite.tempp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MET Website</title>
    <link rel="icon" href="./images/gucLogo.png"/>
    <link rel="stylesheet" href="./StyleSheets/Header.css"/>
    <link rel="stylesheet" href="./StyleSheets/CourseHomePage.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="scrollable">
            <div class="header">
                <img class="logo" src="./images/topBarImages/GUC-logo 2.svg" />
                <img class="bar" src="./images/topBarImages/bar.svg"/>
                <label class="facultyLabel">Faculty of Media Engineering & Technology</label>
            </div>

            <div class="navbar">
                <button class="navbtn" onserverclick="toHome" runat="server"><img src="images/staff/home.png" class="navImgHomeBookHeadphones"  /> <span>Home</span></button>
                <button class="navbtnin" onserverclick="toCourses" runat="server"><img src="images/staff/book.png"class="navImgHomeBookHeadphones"/> <span>Courses</span></button>
                <button class="navbtn" onserverclick="toStaff" runat="server"><img src="images/staff/group.png" class="navImgGroup"/><span>Staff</span></button>
                <button class="navbtn" onserverclick="toStudentActiv" runat="server"><img src="images/staff/headphones.png" class="navImgHomeBookHeadphones" /><span>Student Activity</span></button>
                <button class="navbtn" onserverclick="toAlumni" runat="server"><img src="images/staff/graduated.png"class="navImgGrad" /><span>Alumni</span></button>
                <button class="navbtn" onserverclick="toAbout" runat="server"><img src="images/staff/info.png"class="navImgAbout" /><span>About Us</span></button>
            </div>

        </div>

        <div class="body">
            <div class="index">
                <%--<div class="searchDiv">
                    <asp:ImageButton runat="server" ImageUrl="images/staff/search.png" CssClass="searchButton" OnClick="toSearchRes" />
                    <asp:TextBox placeholder="Search.." id="searchInput" runat="server"/>
                </div>--%>
                <div class="courseCatalogDiv">
                    <asp:ImageButton runat="server" ImageUrl="./images/coursesPageImages/bulletPoint.svg" CssClass="bulletPoint" OnClientClick="courseCatalogueClicked();return false;" />
                    <asp:Button ID="buttonCatalogue" Text="Course Catalogue" CssClass="indexButtonIn" runat="server" OnClientClick="courseCatalogueClicked();return false;"/>
                </div>
                <div class="graduateCoursesDiv">
                    <asp:ImageButton runat="server" ImageUrl="./images/coursesPageImages/bulletPoint.svg" CssClass="bulletPoint" OnClientClick="gradCoursesClicked();return false;" />
                    <asp:Button ID="buttonGraduate" Text="Graduate Courses" CssClass="indexButton" runat="server" OnClientClick="gradCoursesClicked();return false;"/>
                </div>
                <div class="undergradCoursesDiv">
                    <asp:ImageButton runat="server" ImageUrl="images/coursesPageImages/plusButton.svg" CssClass="plusPoint" OnClientClick="undergradCoursesClicked();return false;" />
                    <asp:Button ID="buttonUndergraduate" Text="Undergraduate Courses" CssClass="indexButton" runat="server" OnClientClick="undergradCoursesClicked();return false;"/>
                </div>
                <div class="undergradFaculties" id="undergradFaculties" runat="server">

                </div>
            </div>
            <div class="vertical">

            </div>
            <div class="semesters">
                <div class="catalogueSemesters" id="catalogueSemesters" runat="server">

                </div>
                <div class="graduateCourses" id="graduateCourses">
                    <label class="graduateCoursesLabel">Graduate Courses: </label>
                    <ul class="coursesList" id="graduateCoursesList" runat="server">

                    </ul>
                </div>
                <div class="undergraduateCourses" id="undergraduateCourses" runat="server">
                    <div class="tempLabelDiv" id="tempLabelDiv">
                        Undergraduate Courses:
                    </div>

                </div>
            </div>
        </div>

    </form>
    <script>
        for (var i = 1; i <= 10; i++) {
            if (((document.getElementById("semesterListOpenedCata" + i).children)[0]).children.length == 0) {
                document.getElementById("semesterClosedCata" + i).style.display = "none";
            }
        }
        if (((document.getElementById("semesterListOpenedCataElectives").children)[0]).children.length == 0) {
            document.getElementById("semesterClosedCataElectives").style.display = "none";
        }
        function hideEmpty() {
            for (var i = 1; i <= 10; i++) {
                if (((document.getElementById("semesterListOpenedCata" + i).children)[0]).children.length == 0) {
                    document.getElementById("semesterClosedCata" + i).style.display = "none";
                }
            }
            if (((document.getElementById("semesterListOpenedCataElectives").children)[0]).children.length == 0) {
                document.getElementById("semesterClosedCataElectives").style.display = "none";
            }

            var faculties = document.getElementById("undergradFaculties").children.length;
            for (var i = 1; i <= faculties; i++) {
                var length = ((((document.getElementById("fac" + i).children)[1]).children)[0]).children.length;
                for (var j = 1; j <= length; j++) {
                    if (((((((document.getElementById("fac" + i + "sub" + j + "Div").children)[0]).children)[0]).children)[1]).value == "Semester 1") {
                        for (var k = 1; k <= 9; k = k + 2) {
                            if (((document.getElementById("semester" + k + "ListOpenedFac" + i + "Sub" + j).children)[0]).children.length == 0) {
                                document.getElementById("semester" + k + "ClosedFac" + i + "Sub" + j).style.display = "none";
                            }
                        }
                    } else {
                        for (var k = 2; k <= 10; k = k + 2) {
                            if (((document.getElementById("semester" + k + "ListOpenedFac" + i + "Sub" + j).children)[0]).children.length == 0) {
                                document.getElementById("semester" + k + "ClosedFac" + i + "Sub" + j).style.display = "none";
                            }
                        }
                    }
                }
            }
        }


        function courseCatalogueClicked() {
            document.getElementById("catalogueSemesters").style.display = "block";
            document.getElementById("graduateCourses").style.display = "none";
            document.getElementById("undergraduateCourses").style.display = "none";
            document.getElementById("buttonCatalogue").style.fontWeight = "600";
            document.getElementById("buttonGraduate").style.fontWeight = "400";
            document.getElementById("buttonUndergraduate").style.fontWeight = "400";
            document.getElementById("tempLabelDiv").style.display = "block";
            var faculties = document.getElementById("undergradFaculties").children.length;
            for (var i = 1; i <= faculties; i++) {
                document.getElementById("fac" + i).style.display = "none";
                document.getElementById("subMajors" + i).style.display = "none";
                var length = ((((document.getElementById("fac" + i).children)[1]).children)[0]).children.length;
                for (var j = 1; j <= length; j++) {
                    document.getElementById("fac" + i + "sub" + j + "Div").style.display = "none";
                    (((((document.getElementById("subMajors" + i).children)[0]).children)[j - 1]).children)[0].style.fontWeight = 300;
                    if (((((((document.getElementById("fac" + i + "sub" + j + "Div").children)[0]).children)[0]).children)[1]).value == "Semester 1") {
                        for (var k = 1; k <= 9; k = k + 2) {
                            document.getElementById("semester" + k + "ClosedFac" + i + "Sub" + j).style.display = "block";
                            document.getElementById("semester" + k + "OpenedFac" + i + "Sub" + j).style.display = "none";
                            document.getElementById("semester" + k + "ListOpenedFac" + i + "Sub" + j).style.display = "none";
                        }
                    } else {
                        for (var k = 2; k <= 10; k = k + 2) {
                            document.getElementById("semester" + k + "ClosedFac" + i + "Sub" + j).style.display = "block";
                            document.getElementById("semester" + k + "OpenedFac" + i + "Sub" + j).style.display = "none";
                            document.getElementById("semester" + k + "ListOpenedFac" + i + "Sub" + j).style.display = "none";
                        }
                    }
                }
            }
            for (var i = 1; i <= 10; i++) {
                document.getElementById("semesterClosedCata" + i).style.display = "block";
                document.getElementById("semesterOpenedCata" + i).style.display = "none";
                document.getElementById("semesterListOpenedCata" + i).style.display = "none";
            }
            document.getElementById("semesterClosedCataElectives").style.display = "block";
            document.getElementById("semesterOpenedCataElectives").style.display = "none";
            document.getElementById("semesterListOpenedCataElectives").style.display = "none";
            hideEmpty();
        }
        function gradCoursesClicked() {
            document.getElementById("catalogueSemesters").style.display = "none";
            document.getElementById("graduateCourses").style.display = "block";
            document.getElementById("undergraduateCourses").style.display = "none";
            document.getElementById("buttonCatalogue").style.fontWeight = "400";
            document.getElementById("buttonGraduate").style.fontWeight = "600";
            document.getElementById("buttonUndergraduate").style.fontWeight = "400";
            document.getElementById("tempLabelDiv").style.display = "block";
            var faculties = document.getElementById("undergradFaculties").children.length;
            for (var i = 1; i <= faculties; i++) {
                document.getElementById("fac" + i).style.display = "none";
                document.getElementById("subMajors" + i).style.display = "none";
                var length = ((((document.getElementById("fac" + i).children)[1]).children)[0]).children.length;
                for (var j = 1; j <= length; j++) {
                    document.getElementById("fac" + i + "sub" + j + "Div").style.display = "none";
                    (((((document.getElementById("subMajors" + i).children)[0]).children)[j - 1]).children)[0].style.fontWeight = 300;
                    if (((((((document.getElementById("fac" + i + "sub" + j + "Div").children)[0]).children)[0]).children)[1]).value == "Semester 1") {
                        for (var k = 1; k <= 9; k = k + 2) {
                            document.getElementById("semester" + k + "ClosedFac" + i + "Sub" + j).style.display = "block";
                            document.getElementById("semester" + k + "OpenedFac" + i + "Sub" + j).style.display = "none";
                            document.getElementById("semester" + k + "ListOpenedFac" + i + "Sub" + j).style.display = "none";
                        }
                    } else {
                        for (var k = 2; k <= 10; k = k + 2) {
                            document.getElementById("semester" + k + "ClosedFac" + i + "Sub" + j).style.display = "block";
                            document.getElementById("semester" + k + "OpenedFac" + i + "Sub" + j).style.display = "none";
                            document.getElementById("semester" + k + "ListOpenedFac" + i + "Sub" + j).style.display = "none";
                        }
                    }
                }
            }
            for (var i = 1; i <= 10; i++) {
                document.getElementById("semesterClosedCata" + i).style.display = "block";
                document.getElementById("semesterOpenedCata" + i).style.display = "none";
                document.getElementById("semesterListOpenedCata" + i).style.display = "none";
            }
            document.getElementById("semesterClosedCataElectives").style.display = "block";
            document.getElementById("semesterOpenedCataElectives").style.display = "none";
            document.getElementById("semesterListOpenedCataElectives").style.display = "none";
            hideEmpty();
        }
        function undergradCoursesClicked() {
            document.getElementById("catalogueSemesters").style.display = "none";
            document.getElementById("graduateCourses").style.display = "none";
            document.getElementById("undergraduateCourses").style.display = "block";
            document.getElementById("buttonCatalogue").style.fontWeight = "400";
            document.getElementById("buttonGraduate").style.fontWeight = "400";
            document.getElementById("buttonUndergraduate").style.fontWeight = "600";
            var faculties = document.getElementById("undergradFaculties").children.length;
            for (var i = 1; i <= faculties; i++) {
                document.getElementById("fac" + i).style.display = "block";
            }
            for (var i = 1; i <= 10; i++) {
                document.getElementById("semesterClosedCata" + i).style.display = "block";
                document.getElementById("semesterOpenedCata" + i).style.display = "none";
                document.getElementById("semesterListOpenedCata" + i).style.display = "none";
            }
            document.getElementById("semesterClosedCataElectives").style.display = "block";
            document.getElementById("semesterOpenedCataElectives").style.display = "none";
            document.getElementById("semesterListOpenedCataElectives").style.display = "none";
            hideEmpty();
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
            hideEmpty();
        }
        function facSubClicked(facultyNumber, subMajorNumber) {
            (((((document.getElementById("subMajors" + facultyNumber).children)[0]).children)[subMajorNumber - 1]).children)[0].style.fontWeight = 600;
            document.getElementById("tempLabelDiv").style.display = "none";
            document.getElementById("fac" + facultyNumber + "sub" + subMajorNumber + "Div").style.display = "block";
            var faculties = document.getElementById("undergradFaculties").children.length;
            for (var i = 1; i <= faculties; i++) {
                var length = ((((document.getElementById("fac" + i).children)[1]).children)[0]).children.length;
                for (var j = 1; j <= length; j++) {
                    if (i != facultyNumber || j != subMajorNumber) {
                        document.getElementById("fac" + i + "sub" + j + "Div").style.display = "none";
                        (((((document.getElementById("subMajors" + i).children)[0]).children)[j - 1]).children)[0].style.fontWeight = 300;
                        if (((((((document.getElementById("fac" + i + "sub" + j + "Div").children)[0]).children)[0]).children)[1]).value == "Semester 1") {
                            for (var k = 1; k <= 9; k = k + 2) {
                                document.getElementById("semester" + k + "ClosedFac" + i + "Sub" + j).style.display = "block";
                                document.getElementById("semester" + k + "OpenedFac" + i + "Sub" + j).style.display = "none";
                                document.getElementById("semester" + k + "ListOpenedFac" + i + "Sub" + j).style.display = "none";
                            }
                        } else {
                            for (var k = 2; k <= 10; k = k + 2) {
                                document.getElementById("semester" + k + "ClosedFac" + i + "Sub" + j).style.display = "block";
                                document.getElementById("semester" + k + "OpenedFac" + i + "Sub" + j).style.display = "none";
                                document.getElementById("semester" + k + "ListOpenedFac" + i + "Sub" + j).style.display = "none";
                            }
                        }
                    }
                }
            }
            hideEmpty();
        }
        function openSemesterCata(semester) {
            document.getElementById("semesterClosedCata" + semester).style.display = "none";
            document.getElementById("semesterOpenedCata" + semester).style.display = "block";
            document.getElementById("semesterListOpenedCata" + semester).style.display = "block";
            hideEmpty();
        }
        function closeSemesterCata(semester) {
            document.getElementById("semesterClosedCata" + semester).style.display = "block";
            document.getElementById("semesterOpenedCata" + semester).style.display = "none";
            document.getElementById("semesterListOpenedCata" + semester).style.display = "none";
            hideEmpty();
        }
        function openSemesterCataE() {
            document.getElementById("semesterClosedCataElectives").style.display = "none";
            document.getElementById("semesterOpenedCataElectives").style.display = "block";
            document.getElementById("semesterListOpenedCataElectives").style.display = "block";
            hideEmpty();
        }
        function closeSemesterCataE() {
            document.getElementById("semesterClosedCataElectives").style.display = "block";
            document.getElementById("semesterOpenedCataElectives").style.display = "none";
            document.getElementById("semesterListOpenedCataElectives").style.display = "none";
            hideEmpty();
        }
        function openSemesterFacSub(semester, facultyNumber, subMajorNumber) {
            document.getElementById("semester" + semester + "ClosedFac" + facultyNumber + "Sub" + subMajorNumber).style.display = "none";
            document.getElementById("semester" + semester + "OpenedFac" + facultyNumber + "Sub" + subMajorNumber).style.display = "block";
            document.getElementById("semester" + semester + "ListOpenedFac" + facultyNumber + "Sub" + subMajorNumber).style.display = "block";
            hideEmpty();
        }
        function closeSemesterFacSub(semester, facultyNumber, subMajorNumber) {
            document.getElementById("semester" + semester + "ClosedFac" + facultyNumber + "Sub" + subMajorNumber).style.display = "block";
            document.getElementById("semester" + semester + "OpenedFac" + facultyNumber + "Sub" + subMajorNumber).style.display = "none";
            document.getElementById("semester" + semester + "ListOpenedFac" + facultyNumber + "Sub" + subMajorNumber).style.display = "none";
            hideEmpty();
        }
    </script>
</body>
</html>
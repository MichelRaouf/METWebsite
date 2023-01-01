<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminRemoveInstructorFromCourse.aspx.cs" Inherits="METWebsite.AdminRemoveInstructorFromCourse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="StyleSheets/AdminHeaderNav.css" />
    <link rel="stylesheet" href="./StyleSheets/AdminRemoveInstructorFromCourse.css" />
    <link rel="stylesheet" href="./StyleSheets/AdminRemoveInstructor.css" />


    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">

            <img class="logo" src="./images/topBarImages/GUC-logo 2.svg" />


            <img class="bar" src="./images/topBarImages/bar.svg" />


            <label class="label1">Faculty of Media Engineering & Technology</label>

            <img class="adminLogo" src="./images/adminImages/adminLogo.svg" />
            <label class="adminLabel">Admin</label>

        </div>


        <nav>

            <ul class="navUl">
                <li>
                    <img class="dashboardIcon" src="./images/adminImages/dashboardIcon-white.svg" /></li>
                <li><a class="dashboard" href="AdminHomePage.aspx">Admin Dashboard</a></li>


                <li class="dropdown"><a>Main</a>
                    <ul class="dropdown-content" id="dropdown-main">
                        <li><a href="AdminDefineWeeks.aspx">Settings</a></li>
                        <li><a href="AdminDefineWeeks.aspx">Define Weeks</a></li>
                    </ul>
                </li>
                <li class="dropdown"><a href="#">Guest View</a>
                    <ul class="dropdown-content" id="dropdown-guest">
                        <li><a href="AdminStudentActivity.aspx">Edit Photo Gallery</a></li>
                        <li><a href="AdminStudentActivity.aspx">Edit News</a></li>
                        <li><a href="AdminAddStudentActivity.aspx">Add Student Activity</a></li>
                        <li><a href="AdminRemoveStudentActivity.aspx">Remove Student Activity</a></li>
                        <li><a href="AdminAddAlumni.aspx">Add Alumni</a></li>
                        <li><a href="AdminRemoveAlumni.aspx">Remove Alumni</a></li>
                    </ul>
                </li>
                <li class="dropdown"><a href="#">Courses</a>
                    <ul class="dropdown-content" id="dropdown-studentActivity">
                        <li><a href="AdminAddCourse.aspx">Add Course</a></li>
                        <li><a href="ARemoveC.aspx">Remove Course</a></li>
                    </ul>
                </li>
                <li class="dropdown"><a href="#">Instructor</a>
                    <ul class="dropdown-content" id="dropdown-others">
                        <li><a href="AdminAddInstructor.aspx">Add Instructor</a></li>
                        <li><a href="AdminRemoveInstructor.aspx">Remove Instructor</a></li>
                        <li><a href="AdminInstructorToCourse.aspx">Add Instructor to Course</a></li>
                        <li><a href="AdminRemoveInstructorFromCourse.aspx">Remove Instructor from Course</a></li>
                    </ul>
                </li>


            </ul>
        </nav>
        <div class="assignDiv">
            <label>Remove an Instructor from a Course</label>
        </div>

        <div class="instructor" id="instructor" runat="server">
            <label class="selectInstructorLabel">Select an Instructor To Remove</label>
            <br />
            <br />
            <div class="hierarchyTitle">
                <div>
                    <asp:ImageButton runat="server" ImageUrl="images/staff/search.png" CssClass="searchButton" OnClick="toSearchRes" />
                    <asp:TextBox placeholder="Search.." ID="searchInput" runat="server" />
                </div>
            </div>
            <div class="instructorList" id="instructorList" runat="server">
                <%--<div class="instructorItem">
                    <div class="instructorLabelDiv">
                        <label class="instructorLabel">Assoc. Prof. Haythem Ismail </label>
                    </div>
                    <asp:Button ID="button1" CssClass="select" runat="server" Text="Select" OnClientClick="selectInstructor();return false;" />
                </div>--%>
            </div>
            <div class="bottom"></div>
        </div>

        <script>
            function deselectInstructor() {
                document.getElementById("instructor").style.display = "block";
                document.getElementById("selectedInstructor").style.display = "none";
                document.getElementById("course").style.display = "none";
                document.getElementById("selectedCourse").style.display = "none";
                document.getElementById("remove").style.display = "none";
                document.getElementById("noSelectedCourse").style.display = "none";
            }

            function selectCourse() {
                document.getElementById("selectedInstructor").style.display = "block";
                document.getElementById("selectedCourse").style.display = "block";
                document.getElementById("remove").style.display = "block";
                document.getElementById("course").style.display = "none";
                document.getElementById("noSelectedCourse").style.display = "none";

                document.getElementById("courseLabel").innerHTML = event.srcElement.getAttribute("courseLabel");
                document.getElementById("assignedCourse").value = event.srcElement.getAttribute("courseSerial");
            }

            function deselectCourse() {
                document.getElementById("selectedCourse").style.display = "none";
                document.getElementById("course").style.display = "block";
                document.getElementById("remove").style.display = "none";
                document.getElementById("noSelectedCourse").style.display = "none";
            }
        </script>

        <div class="selectedInstructor" id="selectedInstructor" runat="server">
            <%--<div class="instructorItem" id="instructorItem" runat="server">
                <div class="instructorLabelDiv">
                    <label class="instructorLabel">Assoc. Prof. Haythem Ismail </label>
                </div>
                <asp:Button ID="button5" CssClass="Unselect" runat="server" Text="Unselect" OnClientClick="deselectInstructor();return false;" />
            </div>--%>
        </div>

        <div class="course" id="course" runat="server">
            <label class="selectCourseLabel" id="selectCourseLabel" runat="server">Courses Assigned to Instructor</label>
            <br />

            <div class="courseList" id="courseList" runat="server">
                <%--<div class="courseItem">
                    <div class="courseLabelDiv">
                        <label class="courseLabel">CSEN101 Introduction to Computer Science</label>
                    </div>
                    <asp:Button ID="button6" CssClass="select" runat="server" Text="Select" OnClientClick="selectCourse();retuen false;"/>
                </div>--%>
            </div>
            <div class="bottom" id="bottom" runat="server"></div>
        </div>

        <div class="selectedCourse" id="selectedCourse" runat="server">
            <div class="courseItem" id="courseItem" runat="server">
                <div class="courseLabelDiv" id="courseLabelDiv">
                    <label class="courseLabel" id="courseLabel"></label>
                </div>
                <asp:Button ID="button5" CssClass="Unselect" runat="server" Text="Unselect" OnClientClick="deselectCourse();return false;" />
            </div>
        </div>

        <div class="noSelectedCourse" id="noSelectedCourse" runat="server">
            <label class="noSelectCourseLabel" id="Label1" runat="server">No Courses Assigned to this Instructor</label>
        </div>

        <div class="removeDiv" id="remove" runat="server">
            <asp:Button CssClass="remove" runat="server" Text="Remove" runat="server" OnClick="unassignInstructorFromCourse" />
        </div>

        <input id="assignedCourse" type="hidden" runat="server" />
    </form>
</body>
</html>

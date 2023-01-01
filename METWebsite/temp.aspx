<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="temp.aspx.cs" Inherits="METWebsite.temp10" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="StyleSheets/AdminHeaderNav.css" />
    <link rel="stylesheet" href="./StyleSheets/AdminOverlay.css" />
    <link rel="stylesheet" href="./StyleSheets/temp.css" />
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
                    <img class="dashboardIcon" src="./images/adminImages/dashboardIcon-white.svg" />
                </li>
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

        <div class="title">
            Add Course
        </div>

        <div class="basicInfo">
            <div class="subTitle">
                Basic Info:
            </div>
            <div class="grid">

            </div>
        </div>

    </form>
</body>
</html>

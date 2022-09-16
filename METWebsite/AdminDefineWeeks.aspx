<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDefineWeeks.aspx.cs" Inherits="METWebsite.AdminDefineWeeks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="./StyleSheets/AdminDefineWeeks.css" />
    <link rel="stylesheet" href="StyleSheets/AdminHeaderNav.css" />

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
            <label>Define Weeks</label>
        </div>
        <div class="container">
            <div class="weekDiv">
                <div class="startDate">
                    <label class="startDateLabel">Start Date</label>
                    <br />

                    <input type="date" id="startDate" runat="server" name="startDate" required>
                </div>

                <div class="endDate">
                    <label class="endDateLabel">End Date</label>
                    <br />

                    <input type="date" id="endDate" runat="server" name="endDate" required>
                </div>
            </div>
            <asp:Button ID="button1" CssClass="addWeek" runat="server" Text="Add Week" OnClick="addWeek" />

        </div>

        <div class="definedWeeksContainer" id="definedWeeksContainer" runat="server">
            <div class="definedLabel">
                <img src="images/adminImages/DefinedWeeksLabel.PNG" style="width: 18%" />
            </div>



            <%--<div class="definedWeekDiv">
                <div class="definedWeekNoContainer">
                    <label class="definedWeekLabel">Week</label>
                    <label class="definedWeekNoLabel">1</label>
                </div>
                <div class="definedStartDiv">
                    <label class="definedStartLabel" >Starts at</label>
                    <label class="definedStartDate" >1/1/2001</label>
                </div>
                <div class="&">
                    &
                </div>
                <div class="definedEndDiv">
                    <label class="definedEndLabel" >Ends at</label>
                    <label class="definedEndDate" >1/1/2001</label>
                </div>
                <asp:LinkButton ID="deleteWeekButton" CssClass="trashButton" runat="server">
                    <span class="trash" runat="server">
    	                <span class="innerSpan"></span>
    	                <i></i>
                    </span>
                </asp:LinkButton>
            </div>
            <span class="separatingBar"></span>--%>
        </div>

    </form>
    <script>

</script>
</body>
</html>

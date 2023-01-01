<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminHomePage.aspx.cs" Inherits="METWebsite.AdminHomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link  rel="stylesheet" href="./StyleSheets/AdminHome.css"/>
</head>
<body>
    <form id="form1" runat="server">
             <div class="scrollable">
            <div class="header">
            
                            <img class="logo" src="./images/topBarImages/GUC-logo 2.svg" />
           
           
                            <img class="bar" src="./images/topBarImages/bar.svg"/>
            
          
                            <label class="label1">Faculty of Media Engineering & Technology</label>
            
                <img class="adminLogo" src="./images/adminImages/adminLogo.svg" />
                <label class="adminLabel">Admin</label>
            
        </div>
        </div>
        <div class="dashboard">
            <img class="dashboardIcon" src="./images/adminImages/dashboardIcon.svg" />
            <label class="dashboardLabel">Admin Dashboard</label>
        </div>
        <div class="cardsDiv">

            <div class="wrapper">
            <div class="cards" >
                <img class="homeIcon" src="./images/adminImages/homeIcon.svg" />
                <label class="cardLabel">MAIN</label>
            </div>
            <div class ="hover" >
                <ul>
                    <li><a href="AdminDefineWeeks.aspx">Settings</a></li>
                    <li><a href="AdminDefineWeeks.aspx">Define Weeks</a></li>
                </ul>
            </div>
                </div>


            <div class="wrapper">
            <div class="cards">
                <img class="guestViewIcon" src="images/adminImages/guestIcon.png" />
                <label class="cardLabel" id="guestViewLabel">GUEST VIEW</label>
            </div>
                 <div class ="hover"  id="hoverCourse" >
                <ul>
                    <li><a href="AdminStudentActivity.aspx">Edit Photo Gallery</a></li>
                    <li><a href="AdminStudentActivity.aspx">Edit News</a></li>
                    <li><a href="AdminAddStudentActivity.aspx">Add Student Activity</a></li>
                    <li><a href="AdminRemoveStudentActivity.aspx">Remove Student Activity</a></li>
                    <li><a href="AdminAddAlumni.aspx">Add Alumni</a></li>
                    <li><a href="AdminRemoveAlumni.aspx">Remove Alumni</a></li>
                </ul>
            </div>
                </div>
            
            <div class="wrapper">
            <div class="cards">
                <img class="coursesIcon" src="./images/adminImages/coursesIcon.svg" />
                <label class="cardLabel">COURSES</label>
            </div>
                 <div class ="hover">
                <ul>
                    <li><a href="AdminAddCourse.aspx">Add Course</a></li>
                    <li><a href="ARemoveC.aspx">Remove Course</a></li>
        
                </ul>
            </div>
                </div>

            

            <div class="wrapper">
            <div class="cards">
                <img class="instructorIcon" src="images/adminImages/instructorIcon.png" />
                <label class="cardLabel" id="instructorLabel">INSTRUCTOR</label>
            </div>
                 <div class ="hover" id="hoverInstructor" >
                <ul>
                    <li><a href="AdminAddInstructor.aspx">Add Instructor</a></li>
                    <li><a href="AdminRemoveInstructor.aspx">Remove Instructor</a></li>
                    <li><a href="AdminInstructorToCourse.aspx">Add Instructor to Course</a></li>
                    <li><a href="AdminRemoveInstructorFromCourse.aspx">Remove Instructor from Course</a></li>
                    
                </ul>
            </div>
                </div>
        </div>
        
    </form>
</body>
</html>

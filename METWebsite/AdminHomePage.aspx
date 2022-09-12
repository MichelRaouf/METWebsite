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
                <label class="cardLabel">HOME</label>
            </div>
            <div class ="hover" >
                <ul>
                    <li><a href="AdminAddAlumni.aspx">Edit Photo gallery</a></li>
                    <li><a href="AdminAddAlumni.aspx">Add News</a></li>
                </ul>
            </div>
                </div>
            
            <div class="wrapper">
            <div class="cards">
                <img class="coursesIcon" src="./images/adminImages/coursesIcon.svg" />
                <label class="cardLabel">COURSES</label>
            </div>
                 <div class ="hover" id="hoverCourse">
                <ul>
                    <li><a href="AdminAddCourse.aspx">Add Course</a></li>
                    <li><a href="AdminAddAlumni.aspx">Remove Course</a></li>
                    <li><a href="AdminAddInstructor.aspx">Add Instructor</a></li>
                    <li><a href="AdminAddAlumni.aspx">Remove Instructor</a></li>
                    <li><a href="AdminAddAlumni.aspx">Assign Instructor</a></li>
                    <li><a href="AdminAddAlumni.aspx">Remove Instructor</a></li>
                </ul>
            </div>
                </div>

            <div class="wrapper">
            <div class="cards">
                <img class="stActivityIcon" src="./images/adminImages/stActivityIcon.svg" />
                <label class="cardLabel" id="stuActivity">STUDENT ACTIVITY</label>
            </div>
                 <div class ="hover" >
                <ul>
                    <li><a href="AdminStudentActivity.aspx">Add Student Activity</a></li>
                    <li><a href="AdminAddAlumni.aspx">Remove Student Activity</a></li>
                </ul>
            </div>
                </div>

            <div class="wrapper">
            <div class="cards">
                <img class="otherIcon" src="./images/adminImages/otherIcon.svg" />
                <label class="cardLabel">OTHER</label>
            </div>
                 <div class ="hover" >
                <ul>
                    <li><a href="AdminAddAlumni.aspx">Add New Alumni</a></li>
                    <li><a href="AdminAddAlumni.aspx">Define Weeks</a></li>
                    <li><a href="AdminAddAlumni.aspx">Change Settings</a></li>
                    
                </ul>
            </div>
                </div>
        </div>
        
    </form>
</body>
</html>

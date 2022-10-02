<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StaffHomePage.aspx.cs" Inherits="METWebsite.temp1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Staff Home</title>
    <link rel="icon" href="./images/gucLogo.png"/>
    <link  rel="stylesheet" href="./StyleSheets/Header.css"/>
    <link  rel="stylesheet" href="./StyleSheets/StaffHomePage.css"/>
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
                <button class="navbtn" onserverclick="toCourses" runat="server"><img src="images/staff/book.png"class="navImgHomeBookHeadphones"/> <span>Courses</span></button>
                <button class="navbtnin" onserverclick="toStaff" runat="server"><img src="images/staff/group.png" class="navImgGroup"/><span>Staff</span></button>
                <button class="navbtn" onserverclick="toStudentActiv" runat="server"><img src="images/staff/headphones.png" class="navImgHomeBookHeadphones" /><span>Student Activity</span></button>
                <button class="navbtn" onserverclick="toAlumni" runat="server"><img src="images/staff/graduated.png"class="navImgGrad" /><span>Alumni</span></button>
                <button class="navbtn" onserverclick="toAbout" runat="server"><img src="images/staff/info.png"class="navImgAbout" /><span>About Us</span></button>
            </div>

        </div>

        <div class="meetLecturers">     
            <img class="lecturersImg" src="images/staff/class 1.png" />
            <a href="LecturersProfiles.aspx" class="imageTxt">  
                <span >Meet Your Lectures </span>
            </a>
        </div>
        <div class="meetTAs">
            <img  class="TAsImg" src="images/staff/TA .png" />
            <a href="TAsProfiles.aspx" class="imageTxt"> 
                <span >Meet Your TAs </span> 
            </a>
        </div>

    </form>
</body>
</html>

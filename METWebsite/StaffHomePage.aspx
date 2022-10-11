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
    <%--    <div class="scrollable">
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

        </div>--%>
         <div class="nav-bar-space" id="subNav">
            <nav class="navBar" id="navScrolled" >
                <img class="topLogo"  src="images/New Logo.svg"/>
                <img class="scrollLogo" id="activeLogo" src="images/New Logo2.svg"/>
                <div class="navContent" id="scrolledContent" >
                    <a href="HomePage.aspx">Home</a>
                    <a href="CourseHomePage.aspx">Courses</a> 
                    <a id="activeNavElement" href="StaffHomePage.aspx">Staff</a>
                    <a href="StudentActivities.aspx">Student Activity</a> 
                    <a href="AboutUsPage.aspx">About Us</a> 
                </div>
            </nav>
        </div>
        <div class="container">
            <a href="LecturersProfiles.aspx">
                <div class="meetLecturers" onmouseover="hoverMe(this.getAttribute('class'))" onmouseout="stopHovering(this.getAttribute('class'))">     
                    <img class="lecturersImg" src="images/staff/class 1.png" />
                    <label href="LecturersProfiles.aspx" class="imageTxt">  
                        <span >Meet Your Lectures </span>
                    </label>
                </div>
            </a>
            <a href="TAsProfiles.aspx">
                <div class="meetTAs" onmouseover="hoverMe(this.getAttribute('class'))" onmouseout="stopHovering(this.getAttribute('class'))">
                    <img  class="TAsImg" src="images/staff/TA .png" />
                    <label  class="imageTxt"> 
                        <span >Meet Your TAs </span> 
                    </label>
                </div>
            </a>
        </div>

    </form>
    <script>
        
        function hoverMe(parent) {
            document.getElementsByClassName(parent)[0].children[0].setAttribute('id', 'hovered')
            document.getElementsByClassName(parent)[0].children[1].setAttribute('id', 'hoveredText')
            
        }
        function stopHovering(parent) {
            document.getElementsByClassName(parent)[0].children[0].removeAttribute('id')
            document.getElementsByClassName(parent)[0].children[1].removeAttribute('id')
        }

    </script>
</body>
</html>

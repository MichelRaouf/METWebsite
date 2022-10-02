<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentActivityProfile.aspx.cs" Inherits="METWebsite.ACM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Activity</title>
    <link rel="icon" href="./images/gucLogo.png"/>
    <link rel="stylesheet" href="StyleSheets/Header.css" />
    <link rel="stylesheet" href="StyleSheets/StudentActivityProfile.css" />
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
                <button class="navbtn" onserverclick="toStaff" runat="server"><img src="images/staff/group.png" class="navImgGroup"/><span>Staff</span></button>
                <button class="navbtnin" onserverclick="toStudentActiv" runat="server"><img src="images/staff/headphones.png" class="navImgHomeBookHeadphones" /><span>Student Activity</span></button>
                <button class="navbtn" onserverclick="toAlumni" runat="server"><img src="images/staff/graduated.png"class="navImgGrad" /><span>Alumni</span></button>
                <button class="navbtn" onserverclick="toAbout" runat="server"><img src="images/staff/info.png"class="navImgAbout" /><span>About Us</span></button>
            </div>

        </div>

        <div id="Header" class="Header" runat="server">
            <div id="iconDiv" runat="server">
            </div>

            <div id="titleDiv" runat="server">
            </div>

            <div class="typeDiv" id="typeDiv" runat="server">
            </div>
        </div>


        <div class="Info">
            <div id="aboutDiv" runat="server">
                <label class="subTitle" id="subTitleAbout" runat="server">About</label>
            </div>

            <div id="listDiv" runat="server">
                <label class="subTitle" id="subTitleTracks" runat="server">MET Related Tracks</label>
            </div>

            <div class="section" style="width: 12%;">
                <label class="subTitle" id="subTitleSocials" runat="server">Socials</label>
                <div class="socialIcons" id="socialIcons" runat="server">
                </div>
            </div>
        </div>

    </form>
</body>
</html>

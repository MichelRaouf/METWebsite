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
       <div class="nav-bar-space" id="subNav">
            <nav class="navBar" id="navScrolled" >
                <img class="topLogo"  src="images/New Logo.svg"/>
                <img class="scrollLogo" id="activeLogo" src="images/New Logo2.svg"/>
                <div class="navContent" id="scrolledContent" >
                    <a href="HomePage.aspx">Home</a>
                    <a href="CourseHomePage.aspx">Courses</a> 
                    <a href="StaffHomePage.aspx">Staff</a>
                    <a id="activeNavElement" href="StudentActivities.aspx">Student Activity</a> 
                    <a href="AboutUsPage.aspx">About Us</a> 
                </div>
            </nav>
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

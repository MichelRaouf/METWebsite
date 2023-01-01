<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TAsSearchRes.aspx.cs" Inherits="METWebsite.TAsSearchRes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TAs</title>
    <link rel="icon" href="./images/gucLogo.png"/>
    <link  rel="stylesheet" href="./StyleSheets/Header.css"/>
    <link  rel="stylesheet" href="./StyleSheets/InstructorsProfiles.css"/>
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
                    <a id="activeNavElement" href="StaffHomePage.aspx">Staff</a>
                    <a href="StudentActivities.aspx">Student Activity</a> 
                    <a href="AlumniPage.aspx">Alumni</a>
                    <a href="AboutUsPage.aspx">About Us</a> 
                </div>
            </nav>
        </div>  

        <div class="profileContainer" id="taDiv" runat="server" >
            <div class="hierarchyTitle">Search Results: 
                <div>
                    
                </div>
            </div>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AlumniPage.aspx.cs" Inherits="METWebsite.temp4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Alumni</title>
    <link rel="icon" href="./images/gucLogo.png"/>
    <link  rel="stylesheet" href="./StyleSheets/Header.css"/>
    <link  rel="stylesheet" href="./StyleSheets/AlumniPage.css"/>
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
                    <a href="StudentActivities.aspx">Student Activity</a> 
                    <a id="activeNavElement" href="AlumniPage.aspx">Alumni</a>
                    <a href="AboutUsPage.aspx">About Us</a> 
                </div>
            </nav>
        </div>

        <div class="honors" id="honorDiv" runat="server"> 
            <div class="honorsDiv">
                <%--<h4 class="honorsTitle">
                    #we_
                    <span class="gucSpan">
                        GUC</span>inas
                </h4>--%>
                <div class="redLabel">
                    <label class="guciansLabel">#we_GUCians</label>
                </div>
            </div>
        </div>

        <div class ="careers">  
            <div class="careerText">
                <label class="careerTitle">
                    ALUMNI CAREERS
                </label>  
            </div>
            <img class="whiteBarAlumni" src="images/alumniPageImages/CareersSeperatingBar.png" />
            <img class="companies" src="images/alumniPageImages/Companies.png" />
        </div>

    </form>
</body>
</html>
﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LecturersProfiles.aspx.cs" Inherits="METWebsite.temp2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lecturers</title>
    <link rel="icon" href="./images/gucLogo.png"/>
    <link  rel="stylesheet" href="./StyleSheets/Header.css"/>
    <link  rel="stylesheet" href="./StyleSheets/InstructorsProfiles.css"/>
</head>
<body>
    <form id="form1" runat="server">
<%--        <div class="scrollable">
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

        <div class="profileContainer" id="deanDiv" runat="server" >
            <div class="hierarchyTitle">Dean 
                <div>
                    <asp:ImageButton runat="server" ImageUrl="images/staff/search.png" CssClass="searchButton" OnClick="toSearchRes" />
                    <asp:TextBox placeholder="Search.." id="searchInput" runat="server"/>
                </div>
            </div>
        </div>

        <div class="separatingBarDiv" >
            <div class="separatingBar">

            </div>
        </div>

        <div class="profileContainer" id="viceDiv" runat="server" >
            <div class="hierarchyTitle">Vice Deans

            </div>
        </div>

        <div class="separatingBarDiv" >
            <div class="separatingBar">

            </div>
        </div>

        <div class="profileContainer" id="lecturerDiv" runat="server">
            <div class="hierarchyTitle">Professors

            </div>
        </div>

    </form>
</body>
</html>
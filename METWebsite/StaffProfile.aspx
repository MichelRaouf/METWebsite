﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StaffProfile.aspx.cs" Inherits="METWebsite.temp7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Staff</title>
    <link rel="icon" href="./images/gucLogo.png"/>
    <link  rel="stylesheet" href="./StyleSheets/Header.css"/>
    <link  rel="stylesheet" href="./StyleSheets/StaffProfile.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <%--<div class="scrollable">
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
                    <a href="AlumniPage.aspx">Alumni</a>
                    <a href="AboutUsPage.aspx">About Us</a> 
                </div>
            </nav>
        </div>

        <div class="ProfileHeader" id="ProfileHeader" runat="server">
            <div class="profileName">
                <div class="profileImageDiv" id="profileImageDiv" runat="server">

                </div>
                <div class="namePosition" id="namePosition" runat="server">
                   
                </div>
            </div>
            
            <div class="iconsValues">
                <div class="iconLineDiv" id="officeDiv" runat="server">
                    <img class="iconNoPhone" src="images/Profile/officeIcon.svg" />
                </div>
                <div class="iconLineDiv" id="emailDiv" runat="server">
                    <img class="iconNoPhone" src="images/Profile/emailIcon.svg" />
                </div>
                <div class="iconLineDiv" id="faxDiv" runat="server">
                    <img class="iconNoPhone" src="images/Profile/faxIcon.svg" />
                </div>
                <div class="iconLineDiv" id="phoneDiv" runat="server">
                    <img id="iconPhone" src="images/Profile/phoneIcon.svg" />
                </div>

            </div>
        </div>

        <div id="navbar2" class="navbar2">
            <a onclick="funcPersonalInfo()">Personal Info</a>
            <a onclick="funcTeaching()">Teaching</a>
            <a onclick="funcResearch()">Research</a>
            <a onclick="funcPublications()">Publication</a>
            <a onclick="funcActivities()">Activities</a>
            
        </div>

        <script>
            document.documentElement.style.scrollBehavior = "smooth";


            function funcPersonalInfo() {
                const element = document.getElementById("phoneDiv");
                window.scrollTo(0, element.offsetTop - 160);

            }
            function funcTeaching() {
                const element = document.getElementById("teachingBar");
                window.scrollTo(0, element.offsetTop - 160);
            }
            function funcResearch() {
                const element = document.getElementById("researchBar");
                window.scrollTo(0, element.offsetTop - 160);
            }
            function funcPublications() {
                const element = document.getElementById("publicationsBar");
                window.scrollTo(0, element.offsetTop - 160);
            }
            function funcActivities() {
                const element = document.getElementById("activityBar");
                window.scrollTo(0, element.offsetTop - 160);
            };
        </script>
        <section id="PersonalInfo" class="PersonalInfo" runat ="server">
             <div class="infoTitleDiv">
                <label class="infoTitle">Personal Info</label>
            </div>
            <div class="listDiv">
                <ul id ="personalList" runat="server">
                    
                </ul>
            </div>
        </section>

        <section id="educationSection" class="Education" runat="server">
            <div class="infoSubTitleDiv">
                <label class="infoSubTitle">Education</label>
            </div>
            
        </section>

        <section id="employmentSection" class="Employment" runat="server">
            <div class="infoSubTitleDiv">
                <label class="infoSubTitle">Employment</label>
            </div>
            <span id="space"></span>
            <span id="more" runat="server">

            </span>

            <div id="buttonMore1" class="showMoreDiv" runat="server">
                <asp:Button ID="myBtn" CssClass="showMore" runat="server" Text="Show More" OnClientClick="myFunction();return false;"/>
            </div>
        </section>

   <script>
       //const nav2 = document.getElementById("navbar2");
       //var count = 0;


       document.documentElement.style.scrollBehavior = "smooth";
       function myFunction() {
           var space = document.getElementById("space");
           var moreText = document.getElementById("more");
           var btnText = document.getElementById("myBtn");

           if (space.style.display === "none") {
               space.style.display = "inline";
               btnText.value = "Show More";
               moreText.style.display = "none";
           } else {
               space.style.display = "none";
               btnText.value = "Show Less";
               moreText.style.display = "inline";
           }
       }

       function myFunction2() {
           var space = document.getElementById("space2");
           var moreText = document.getElementById("more2");
           var btnText = document.getElementById("mybtn2");

           if (space.style.display === "none") {
               space.style.display = "inline";
               btnText.value = "Show More";
               moreText.style.display = "none";
           } else {
               space.style.display = "none";
               btnText.value = "Show Less";
               moreText.style.display = "inline";
           }
       }

       function myFunction3() {
           var space = document.getElementById("space3");
           var moreText = document.getElementById("more3");
           var btnText = document.getElementById("mybtn3");

           if (space.style.display === "none") {
               space.style.display = "inline";
               btnText.value = "Show More";
               moreText.style.display = "none";
           } else {
               space.style.display = "none";
               btnText.value = "Show Less";
               moreText.style.display = "inline";
           }
       }

       function myFunction4() {
           var space = document.getElementById("space4");
           var moreText = document.getElementById("more4");
           var btnText = document.getElementById("mybtn4");

           if (space.style.display === "none") {
               space.style.display = "inline";
               btnText.value = "Show More";
               moreText.style.display = "none";
           } else {
               space.style.display = "none";
               btnText.value = "Show Less";
               moreText.style.display = "inline";
           }
       }

       function myFunction5() {
           var space = document.getElementById("space5");
           var moreText = document.getElementById("more5");
           var btnText = document.getElementById("mybtn5");

           if (space.style.display === "none") {
               space.style.display = "inline";
               btnText.value = "Show More";
               moreText.style.display = "none";
           } else {
               space.style.display = "none";
               btnText.value = "Show Less";
               moreText.style.display = "inline";
           }
       }
   </script>

        <div class="gradientBar" id="teachingBar">

        </div>

        <section id="teachingSection" class="teaching" runat ="server">
             <div class="infoTitleDiv">
                <label class="infoTitle">Teaching</label>
            </div>
            <span id="space2"></span>
            <span id="more2" runat="server">

            </span>
            <div id="buttonMore2" class="showMoreDiv" runat="server" >
                <asp:Button ID="mybtn2" CssClass="showMore" runat="server" Text="Show More" OnClientClick="myFunction2();return false;" />
            </div>
        </section>

        <div class="gradientBar" id="researchBar">

        </div>

        <section id="researchSection" class="research" runat ="server">
             <div class="infoTitleDiv">
                <label class="infoTitle">Research</label>
            </div>
            <div class="infoSubTitleDiv" id="infoSubTitleDivInter">
                <label class="infoSubTitle">Research Interests</label>
            </div>
            <span id="space3"></span>
            <span id="more3" runat ="server">
             
            </span>
            <div id="buttonMore3"  runat= "server" class="showMoreDiv" >
                <asp:Button ID="mybtn3" CssClass="showMore" runat="server" Text="Show More" OnClientClick="myFunction3();return false;" />
            </div>
        </section>

        <div class="gradientBar" id="publicationsBar">

        </div>

        <section id="publicationsSection" class="publication" runat ="server">
             <div class="infoTitleDiv">
                <label class="infoTitle">Publications</label>
            </div>
            
            <span id="space4"></span>
            <span id="more4" runat ="server">
        
            </span>

            <div id="buttonMore4" runat="server"  class="showMoreDiv" >
                <asp:Button ID="mybtn4" CssClass="showMore" runat="server" Text="Show More" OnClientClick="myFunction4();return false;" />
            </div>
        </section>

        <div class="gradientBar" id="activityBar">

        </div>

        <section id="activitySection" class="activity" runat ="server">
             <div class="infoTitleDiv">
                <label class="infoTitle">Activity</label>
            </div>
            
            <span id="space5"></span>
            <span id="more5" runat="server">
              
            </span>
            <div class="showMoreDiv" id ="buttonMore5" runat="server">
                <asp:Button ID="mybtn5" CssClass="showMore" runat="server" Text="Show More" OnClientClick="myFunction5();return false;" />
            </div>
        </section>
        <div class="blank">
            &nbsp;
        </div>
    </form>
    <script>
        if ((document.getElementById("educationSection").children).length == 1) {
            document.getElementById("educationSection").style.display = "none";
        }
        if ((document.getElementById("employmentSection").children).length == 3) {
            document.getElementById("employmentSection").style.display = "none";
        }
        if ((document.getElementById("teachingSection").children).length == 3) {
            document.getElementById("teachingSection").style.display = "none";
            ((document.getElementById("navbar2").children)[1]).style.display = "none";
        }
        if (((document.getElementById("researchSection").children).length == 6)
            && (document.getElementById("reInterests").children).length == 0) {
            document.getElementById("researchSection").style.display = "none";
            ((document.getElementById("navbar2").children)[2]).style.display = "none";
        }
        if (((document.getElementById("researchSection").children).length == 6)
            && (document.getElementById("reInterests").children).length > 0) {
            document.getElementById("infoSubTitleDivLinks").style.display = "none";
        }
        if (((document.getElementById("researchSection").children).length > 6)
            && (document.getElementById("reInterests").children).length == 0) {
            document.getElementById("infoSubTitleDivInter").style.display = "none";
        }
        if ((document.getElementById("publicationsSection").children).length == 3) {
            document.getElementById("publicationsSection").style.display = "none";
            ((document.getElementById("navbar2").children)[3]).style.display = "none";
        }
        if ((document.getElementById("activitySection").children).length == 3) {
            document.getElementById("activitySection").style.display = "none";
            ((document.getElementById("navbar2").children)[4]).style.display = "none";
        }
    </script>
</body>
</html>
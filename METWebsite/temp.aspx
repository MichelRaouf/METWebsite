<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="temp.aspx.cs" Inherits="METWebsite.temp8" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Course</title>
    <link rel="icon" href="./images/gucLogo.png"/>
    <link  rel="stylesheet" href="./StyleSheets/temp.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="scrollable">

            <div class="header">
                <img class="logo" src="./images/topBarImages/GUC-logo 2.svg" />
                <img class="bar" src="./images/topBarImages/bar.svg"/>
                <label class="facultyLabel">Faculty of Media Engineering & Technology</label>
                <asp:Button ID="Button1" CssClass="login" runat="server" Text="Login" OnClick="toLogin" />
            </div>

            <div class="navbar">
            <div>
                <img src="images/staff/home.png" alt="Alternate Text" class="navImgHomeBookHeadphones" />
                <asp:Button Text="Home" runat="server" CssClass="navbtn" OnClick="toHome" />
            </div>
            <div>
                <img src="images/staff/book.png" alt="Alternate Text"class="navImgHomeBookHeadphones"/>
                <asp:Button Text="Courses" runat="server" CssClass="navbtnin" OnClick="toCourses" />
            </div>
            <div>
                <img src="images/staff/group.png" alt="Alternate Text" class="navImgGroup"/>
                <asp:Button Text="Staff" runat="server" CssClass="navbtn" OnClick="toStaff" />
            </div>
            <div >
                <img src="images/staff/headphones.png" alt="Alternate Text"class="navImgHomeBookHeadphones" />
                <asp:Button Text="Student Activity" runat="server" CssClass="navbtn" OnClick="toStudentActiv" />
            </div>
            <div >
                <img src="images/staff/graduated.png" alt="Alternate Text"class="navImgGrad" />
                <asp:Button Text="Alumni" runat="server" CssClass="navbtn" OnClick="toAlumni" />
            </div>
            <div >
                <img src="images/staff/info.png" alt="Info" class="navImgAbout" />
                 <asp:Button Text="About Us" runat="server" CssClass="navbtn" OnClick="toAbout" />
            </div> 
        </div>

        </div>

        <div class="flex-container-1">
            <div class="courseTitleDiv">
                <label class="courseTitle" id="courseCode">(CSEN301)</label>
                <label class="courseTitle" id="courseName">Data Structures and Algorithms</label>
            </div>

            <div class="iconsValues">
                <div class="iconLineDiv" id="creditDiv" runat="server">
                    <img class="iconNoTut" src="./images/coursePageImages/credit.svg" />
                    <label class="iconLabelNoTut">6 Credit Hours</label>
                </div>
                <div class="iconLineDiv" id="lectureDiv" runat="server">
                    <img class="iconNoTut" src="./images/coursePageImages/lecture.svg" />
                    <label class="iconLabelNoTut">12 Lectures</label>
                </div>
                <div class="iconLineDiv" id="tutDiv" runat="server">
                    <img class="iconTut" src="./images/coursePageImages/tutorial.svg" />
                    <label class="iconLabelTut">11 Tutorials</label>
                </div>
                <div class="iconLineDiv" id="phoneDiv" runat="server">
                    <img class="iconNoTut" src="./images/coursePageImages/lab.svg" />
                    <label class="iconLabelNoTut">6 Labs</label>
                </div>

            </div>

        </div>

        <div id="navbar2" class="navbar2">
            <div class="AboutNav">
                <asp:Label Text="Course Updates" runat="server" onClick="funcCourseUpdates()"/>
            </div>
            <div class="AboutNav">
                <asp:Label Text="Description" runat="server" onClick="funcDescription()" />
            </div>
            <div class="AboutNav">
                <asp:Label Text="Prerequisites" runat="server" onClick="funcPrerequisites()" />
            </div>
            <div class="AboutNav">
                <asp:Label Text="Syllabus" runat="server" onClick="funcSyllabus()" />
            </div>
            <div class="AboutNav">
                <asp:Label Text="Instructors" runat="server" onClick="funcInstructors()" />
            </div>
            <div class="AboutNav">
                <asp:Label Text="Resources" runat="server" onClick="funcResources()" />
            </div>
        </div>

        <script>
            document.documentElement.style.scrollBehavior = "smooth";

            function funcCourseUpdates() {
                const element = document.getElementById("");
                element.scrollIntoView();

            }
            function funcDescription() {
                const element = document.getElementById("");
                element.scrollIntoView();
            }
            function funcPrerequisites() {
                const element = document.getElementById("");
                element.scrollIntoView();
            }
            function funcSyllabus() {
                const element = document.getElementById("");
                element.scrollIntoView();
            }
            function funcInstructors() {
                const element = document.getElementById("");
                element.scrollIntoView();
            }
            function funcResources() {
                const element = document.getElementById("");
                element.scrollIntoView();
            };
        </script>

        <section id="courseUpdates" class="courseUpdates" runat ="server">
             <div class="infoTitleDiv">
                <label class="infoTitle">Course Updates</label>
            </div>
            <div class="listDiv">
                <ul id ="updatesList" runat="server">
                    <li class="updateItem">Quiz 2 is set to be on Tuesday 2/12/2022 at 2:00 PM. Personalized seats will be sent via mail.</li>
                    <li class="updateItem">Milestone deadline is extended for 2 more weeks.</li>
                    <li class="updateItem">The midterm will contain only the first five lectures, their labs and tutorials.</li>
                </ul>
            </div>
        </section>
        

        <div class="gradientBar" id="b1">

        </div>

        <section id="description" class="description" runat ="server">
             <div class="infoTitleDiv">
                <label class="infoTitle">Description</label>
            </div>
            <div class="textDiv">
                <label class="descriptionText" id="descriptionText">
                    The Computer Programming Lab is about:
                        Working within a team
                        Learning the basics of Object-Oriented software development
                        Establishing a deeper understanding of the Java programming language
                        Planning and implementing a software project in a small team
                    Contrary to the previous courses you have encountered, the Computer Programming Lab
                    is a course that leaves it up to the students to identify and obtain the required
                    knowledge to complete the course tasks.
                </label>
            </div>
        </section>

        <div class="gradientBar" id="b2">

        </div>

        <section id="prerequisites" class="prerequisites" runat ="server">
             <div class="infoTitleDiv">
                <label class="infoTitle">Prerequisites</label>
            </div>
            <div class="listDiv">
                <ul id ="prereqList" runat="server">
                    <li class="courseItem" id="coursePrereqItem1">
                        <label class="courseCodePrereq">(CSEN101)</label>
                        <label class="courseNamePrereq">Introduction to Computer Science</label>
                    </li>
                    <li class="courseItem" id="coursePrereqItem2">
                        <label class="coursePrereq">(CSEN101)</label>
                        <label class="coursePrereq">Introduction to Computer Science</label>
                    </li>
                </ul>
            </div>
        </section>

        <div class="gradientBar" id="b3">

        </div>



<%--        <section id="teachingSection" class="teaching" runat ="server">
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
            <div class="infoSubTitleDiv">
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

        <script>
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
        </script>--%>

    </form>
</body>
</html>

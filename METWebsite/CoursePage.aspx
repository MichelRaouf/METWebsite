<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CoursePage.aspx.cs" Inherits="METWebsite.temp8" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Course</title>
    <link rel="icon" href="./images/gucLogo.png"/>
    <link  rel="stylesheet" href="./StyleSheets/Header.css"/>
    <link  rel="stylesheet" href="./StyleSheets/CoursePage.css"/>
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
                <button class="navbtnin" onserverclick="toCourses" runat="server"><img src="images/staff/book.png"class="navImgHomeBookHeadphones"/> <span>Courses</span></button>
                <button class="navbtn" onserverclick="toStaff" runat="server"><img src="images/staff/group.png" class="navImgGroup"/><span>Staff</span></button>
                <button class="navbtn" onserverclick="toStudentActiv" runat="server"><img src="images/staff/headphones.png" class="navImgHomeBookHeadphones" /><span>Student Activity</span></button>
                <button class="navbtn" onserverclick="toAlumni" runat="server"><img src="images/staff/graduated.png"class="navImgGrad" /><span>Alumni</span></button>
                <button class="navbtn" onserverclick="toAbout" runat="server"><img src="images/staff/info.png"class="navImgAbout" /><span>About Us</span></button>
            </div>

        </div>

        <div class="flex-container-1">
            <div class="courseTitleDiv" id="courseTitleDiv" runat="server">
                
            </div>

            <div class="iconsValues">
                <div class="iconLineDiv" id="creditDiv" runat="server">
                    <img class="iconNoTut" src="./images/coursePageImages/credit.svg" />
                </div>
                <div class="iconLineDiv" id="lectureDiv" runat="server">
                    <img class="iconNoTut" src="./images/coursePageImages/lecture.svg" />
                </div>
                <div class="iconLineDiv" id="tutDiv" runat="server">
                    <img class="iconTut" src="./images/coursePageImages/tutorial.svg" />
                </div>
                <div class="iconLineDiv" id="labDiv" runat="server">
                    <img class="iconNoTut" src="./images/coursePageImages/lab.svg" />
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
                const element = document.getElementById("labDiv");
                element.scrollIntoView();

            }
            function funcDescription() {
                const element = document.getElementById("descriptionID");
                element.scrollIntoView();
            }
            function funcPrerequisites() {
                const element = document.getElementById("prerequisitesID");
                element.scrollIntoView();
            }
            function funcSyllabus() {
                const element = document.getElementById("syllabusID");
                element.scrollIntoView();
            }
            function funcInstructors() {
                const element = document.getElementById("instructorsID");
                element.scrollIntoView();
            }
            function funcResources() {
                const element = document.getElementById("resourcesID");
                element.scrollIntoView();
            };
        </script>

        <section id="courseUpdates" class="courseUpdates" runat ="server">
             <div class="infoTitleDiv">
                <label class="infoTitle">Course Updates</label>
            </div>
            <div class="listDiv">
                <ul id ="updatesList" runat="server">

                </ul>
            </div>
        </section>
        

        <div class="gradientBar" id="descriptionID">

        </div>

        <section id="description" class="description" runat ="server">
             <div class="infoTitleDiv">
                <label class="infoTitle">Description</label>
            </div>
            <div class="textDiv" id="textDiv" runat="server">
                
            </div>
        </section>

        <div class="gradientBar" id="prerequisitesID">

        </div>

        <section id="prerequisites" class="prerequisites" runat ="server">
             <div class="infoTitleDiv">
                <label class="infoTitle">Prerequisites</label>
            </div>
            <div class="listDiv">
                <ul id ="prereqList" runat="server">
                    
                </ul>
            </div>
        </section>

        <div class="gradientBar" id="syllabusID">

        </div>

        <section id="syllabus" class="syllabus" runat ="server">
             <div class="infoTitleDiv">
                <label class="infoTitle">Syllabus</label>
            </div>

            <span id="space3"></span>
            <span id="more3" runat ="server">
             
            </span>

            <div id="buttonMore3"  runat= "server" class="showMoreDiv" >
                <asp:Button ID="mybtn3" CssClass="showMore" runat="server" Text="Show More" OnClientClick="myFunction3();return false;" />
            </div>
            
        </section>

        <script>
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
        </script>

        <div class="gradientBar" id="instructorsID">

        </div>

        <section id="instructors" class="instructors" runat ="server">
             <div class="infoTitleDiv">
                <label class="infoTitle">Instructors</label>
            </div>
            
            <div class="instructorsLabelDiv">
                <label class="instructorsLabel">Lecturers:</label>
            </div>
            <div class="instructorsListDiv">
                <ul class="instructorsList" id="lecturersList" runat="server">
                    
                </ul>
            </div>
            <div class="instructorsLabelDiv">
                <label class="instructorsLabel">Teaching Assistants:</label>
            </div>
            <div class="instructorsListDiv">
                <ul class="instructorsList"  id="tasList" runat="server">
                    
                </ul>
            </div>
        </section>

        <div class="gradientBar" id="resourcesID">

        </div>

        <section id="resources" class="resources" runat ="server">
             <div class="infoTitleDiv">
                <label class="infoTitle">Resources</label>
            </div>
            
        </section>

        <div class="blank">
            &nbsp;
        </div>

    </form>
</body>
</html>

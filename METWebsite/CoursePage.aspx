<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CourePage.aspx.cs" Inherits="METWebsite.CourePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Course Page</title>
    <link rel="icon" href="./images/gucLogo.png" />
    <link rel="stylesheet" href="./StyleSheets/HomeStyles.css" />
    <link rel="stylesheet" href="./StyleSheets/CoursePage.css" />

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
            <div id="ctitle" class="flex-child-1" runat="server">
            </div>

            <div class="flex-child-1 center">
                <div class="margin-bottom">
                    <img class="nav2-img" src="./images/coursePageImages/credit.svg" />
                    <span id="ccredits" runat="server"></span>
                </div>
                <div class="margin-bottom">
                    <img class="nav2-img" src="./images/coursePageImages/lecture.svg" />
                    <span id="clecs" runat="server"></span>
                </div>
                <div class="margin-bottom">
                    <img class="nav2-img" src="./images/coursePageImages/tutorial.svg" />
                    <span id="ctuts" runat="server"></span>
                </div>
                <div class="margin-bottom">
                    <img class="nav2-img" src="./images/coursePageImages/lab.svg" />
                    <span id="clabs" runat="server"></span>
                </div>
            </div>

        </div>
        <div class="navbar2">
            <div>
                <a class="hover-underline-animation" href="#updates">Course Updates</a>
            </div>
            <div>
                <a class="hover-underline-animation" href="#description">Description</a>
            </div>
            <div>
                <a class="hover-underline-animation" href="#prerequisites">Prerequisites</a>
            </div>
            <div>
                <a class="hover-underline-animation" href="#syllabus">Syllabus</a>
            </div>
            <div>
                <a class="hover-underline-animation" href="#instructors">Instructors</a>
            </div>
            <div>
                <a class="hover-underline-animation" href="#resources">Resources</a>
            </div>
            <br />
        </div>
        <div class="line" id="updates">
        </div>


        <div class="title">
            <p>Course Updates</p>
        </div>
        <div>
            <ul id="cupdates" runat="server" class="updates">
            </ul>
        </div>
        <div class="line2 centerdiv" id="description">
        </div>


        <div class="title">
            <p>Description</p>
        </div>
        <div class="description" id="cdescription" runat="server">
        </div>
        <div class="line2 centerdiv" id="prerequisites">
        </div>


        <div class="title">
            <p>Prerequisites</p>
        </div>
        <div>
            <ul id="cpre" runat="server" class="prerequisites">
            </ul>
        </div>
        <div class="line2 centerdiv" id="syllabus">
        </div>

        <div class="title">
            <p>Syllabus</p>
        </div>
        <div id="csyllabus" runat="server">
        </div>

        <span id="space"></span>
        <span id="more7">
            <div id="csyllabus2" runat="server">
            </div>
        </span>
        <script>
            document.documentElement.style.scrollBehavior = "smooth";
            function myFunction() {
                var space = document.getElementById("space");
                var moreText = document.getElementById("more7");
                var btnText = document.getElementById("mybtn7");

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

        <div class="show-moreDiv">
            <asp:Button ID="mybtn7" CssClass="show-more" runat="server" Text="Show More" OnClientClick="myFunction();return false;" />
        </div>

        <div class="line2 centerdiv" id="instructors">
        </div>


        <div class="title">
            <p>Instructors</p>
        </div>
        <div>
            <p class="instructors-title">Lecturers :</p>
            <ul class="instructors-names" id="cprof" runat="server">
            </ul>
        </div>
        <div>
            <p class="instructors-title">Teaching Assistants :</p>
            <ul class="instructors-names" id="cta" runat="server">
            </ul>
        </div>

        <div class="line2 centerdiv" id="resources">
        </div>


   
            <p class="title">Resources</p>
    

        <div class="margin-bottom margin-left" id="cres" runat="server">

        </div>

    </form>
</body>
</html>

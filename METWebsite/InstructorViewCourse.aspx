<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InstructorViewCourse.aspx.cs" Inherits="METWebsite.InstructorViewCourse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link rel="stylesheet" href="./StyleSheets/HomeStyles.css" />
    <link rel="stylesheet" href="./StyleSheets/CoursePage.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">

            <img class="logo" src="./images/topBarImages/GUC-logo 2.svg" />


            <img class="bar" src="./images/topBarImages/bar.svg" />


            <label class="label1">Faculty of Media Engineering & Technology</label>
             <button class="logout" runat="server" onserverclick="logOut_click">
                 <img class="logoutIcon" src="./images/InstructorHome/logout.svg" /><span id="logoutlabel">Log Out</span></></button>
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
            <p>Resources</p>
        </div>

        <div class="margin-bottom margin-left" id="cres" runat="server">
        </div>
    </form>
</body>
</html>

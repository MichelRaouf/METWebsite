<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="METWebsite.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MET Website</title>
    <link rel="icon" href="./images/gucLogo.png">
    <link  rel="stylesheet" href="HomeStyles.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <div class="gucLogoDiv">
                <img class="gucLogo" src="./images/homePageImages/gucFullLogo.svg"/>
            </div>
            <div class="verticalBarDiv">
                <img class="verticalBar" src="./images/homePageImages/verticalBar.svg"/>
            </div>
            <div class="labelDiv">
                <label class="facultyLabel">
                    Faculty of Media Engineering & Technology
                </label>
            </div>
            <div class="loginDiv">
                <asp:Button ID="loginButton" CssClass="login" runat="server" Text="Login" OnClick="loginButton_Click"/>
            </div>
        </div>

        <div class="navBar">
            <div>
                <img href="HomePage.aspx" class="navIcons" src="./images/homePageImages/inHome.svg"/>
                <asp:Button ID="homeButton" CssClass="navButtonIn" runat="server" Text="Home" OnClick="homeButton_Click"/>
            </div>
            <div>
                <img href="CoursesPage.aspx" class="navIcons" src="./images/homePageImages/courses.svg"/>
                <asp:Button ID="coursesButton" CssClass="navButton" runat="server" Text="Courses" OnClick="coursesButton_Click"/>
            </div>
            <div>
                <img href="StaffPage.aspx" class="navIcons" src="./images/homePageImages/staff.svg"/>
                <asp:Button ID="staffButton" CssClass="navButton" runat="server" Text="Staff" OnClick="staffButton_Click"/>
            </div>
            <div>
                <img href="StudentActivitiesPage.aspx" class="navIcons" src="./images/homePageImages/studentActivities.svg"/>
                <asp:Button ID="studentActivitiesButton" CssClass="navButton" runat="server" Text="Student Activities" OnClick="studentActivitiesButton_Click"/>
            </div>
            <div>
                <img href="AboutUsPage.aspx" class="navIcons" src="./images/homePageImages/aboutUs.svg"/>
                <asp:Button ID="aboutUsButton" CssClass="navButton" runat="server" Text="About Us" OnClick="aboutUsButton_Click"/>
            </div>
        </div>

        <div class="graduationImageDiv">
            <img class="graduationImage" src="./images/homePageImages/graduation.svg"/>
        </div>

        <div class="aboutParagraphDiv">
            <label class="aboutParagraph">
                Media Engineering and Technology aims at the evolving field of nearly all aspects of
                information and multimedia processing. The study program in Media Engineering and Technology
                rests on the same fundamentals as for Information Technology, i.e., mathematics,
                physics, electronics, computer science, communications, and their related methodologies,
                with specialization and extension to media technologies such as voice, audio and video,
                multimedia, media design, information retrieval and representation concepts.
            </label>
        </div>

        <div class="readMoreDiv">
            <asp:Button ID="readMoreButton" CssClass="readMore" runat="server" Text="Read More" OnClick="readMoreButton_Click"/>
        </div>

        <div class="latestNewsDiv">
            <div class="latestNewsLabel">
                <label>
                    Latest News
                </label>
            </div>
            <div class="latestNewsElements">

            </div>
        </div>

        <div class="pathsDiv">
            <div class="pathsTextDiv">
                <div class="pathsLabel">
                    <label>
                        Paths for Every Passion
                    </label>
                </div>
                <div class="pathsParagraph">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do e cupidatat non
                    proident, sunt in.amet, consectetur adipiscing elit, sed do e cupidatat non
                    proident, sunt in.
                </div>
                <div class="pathsButton">
                    <asp:Button ID="viewCoursesButton" CssClass="viewCourses" runat="server" Text="View Courses" OnClick="viewCoursesButton_Click"/>
                </div>
            </div>
            <div class="pathsPhotoDiv">
                <img class="pathsPhoto" src="./images/homePageImages/pathsPhoto.svg"/>
            </div>
        </div>

    </form>
</body>
</html>
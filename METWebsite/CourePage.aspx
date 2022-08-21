<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CourePage.aspx.cs" Inherits="METWebsite.CourePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Course Page</title>
    <link rel="icon" href="./images/gucLogo.png">
    <link rel="stylesheet" href="./StyleSheets/HomeStyles.css" />
    <link rel="stylesheet" href="./StyleSheets/CoursePage.css" />

</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <div class="gucLogoDiv">
                <img class="gucLogo" src="./images/homePageImages/gucFullLogo.svg" />
            </div>
            <div class="verticalBarDiv">
                <img class="verticalBar" src="./images/homePageImages/verticalBar.svg" />
            </div>
            <div class="labelDiv">
                <label class="facultyLabel">
                    Faculty of Media Engineering & Technology
               
                </label>
            </div>
            <div class="loginDiv">
                <asp:Button ID="loginButton" CssClass="login" runat="server" Text="Login" OnClick="loginButton_Click" />
            </div>
        </div>

        <div class="navBar">
            <div>
                <img href="HomePage.aspx" class="navIcons" src="./images/homePageImages/home.png" />
                <asp:Button ID="homeButton" CssClass="navButton" runat="server" Text="Home" OnClick="homeButton_Click" />
            </div>
            <div>
                <img href="CoursesHomePage.aspx" class="navIcons" src="./images/homePageImages/coursesopen.svg" />
                <asp:Button ID="coursesButton" CssClass="navButtonIn" runat="server" Text="Courses" OnClick="coursesButton_Click" />
            </div>
            <div>
                <img href="StaffHomePage.aspx" class="navIcons" src="./images/homePageImages/staff.svg" />
                <asp:Button ID="staffButton" CssClass="navButton" runat="server" Text="Staff" OnClick="staffButton_Click" />
            </div>
            <div>
                <img href="StActivitiesHomePage.aspx" class="navIcons" src="./images/homePageImages/studentActivities.svg" />
                <asp:Button ID="studentActivitiesButton" CssClass="navButton" runat="server" Text="Student Activities" OnClick="studentActivitiesButton_Click" />
            </div>
            <div>
                <img href="AlumniPage.aspx" class="navIcons" src="./images/homePageImages/alumni.svg" />
                <asp:Button ID="alumniButton" CssClass="navButton" runat="server" Text="Alumni" OnClick="alumniButton_Click" />
            </div>
            <div>
                <img href="AboutUsPage.aspx" class="navIcons" src="./images/homePageImages/aboutUs.svg" />
                <asp:Button ID="aboutUsButton" CssClass="navButton" runat="server" Text="About Us" OnClick="aboutUsButton_Click" />
            </div>
        </div>
        <div class="course-title">
            <div class="course-title-text">
                (CSEN301) Data Structures and Algorithms
            </div>

            <div class="course-title-info center">
                <div class="margin-bottom">
                    <img class="navIcons" src="./images/coursePageImages/credit.svg" />
                    <span>&nbsp;&nbsp;6 Credits Hours</span>
                </div>
                <div class="margin-bottom">
                    <img class="navIcons" src="./images/coursePageImages/lecture.svg" />
                    <span>&nbsp;&nbsp;12 Lectures</span>
                </div>
                <div class="margin-bottom">
                    <img class="navIcons" src="./images/coursePageImages/tutorial.svg" />
                    <span>&nbsp;&nbsp;11 Tutorials</span>
                </div>
                <div class="margin-bottom">
                    <img class="navIcons" src="./images/coursePageImages/lab.svg" />
                    <span>&nbsp;&nbsp;6 Labs</span>
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
        <div class="line">
        </div>
        <div style="height: 75px;">
        </div>

        <div class="title" id="updates">
            <p>Course Updates</p>
        </div>
        <div>
            <ul class="updates">
                <li>Quiz 2 is set to be on Tuesday 2/12/2022 at 2:00 PM. Personalized seats will be sent via mail.</li>
                <li>Milestone deadline is extended for 2 more weeks.</li>
                <li>The midterm will contain only the first five lectures, their labs and tutorials.</li>
            </ul>
        </div>
        <div class="line2 centerdiv">
        </div>
        <div style="height: 75px;">
        </div>

        <div class="title" id="description">
            <p>Description</p>
        </div>
        <div class="description">
            The Computer Programming Lab is about:
                <ul>
                    <li>Working within a team
                    </li>
                    <li>Learning the basics of Object-Oriented software development
                    </li>
                    <li>Establishing a deeper understanding of the Java programming language</li>
                    <li>Planning and implementing a software project in a small team</li>
                </ul>
            Contrary to the previous courses you have encountered, the Computer Programming Lab is
            a course that leaves it up to the students to identify and obtain the required knowledge to complete the course tasks.
        </div>
        <div class="line2 centerdiv">
        </div>
        <div style="height: 75px;">
        </div>

        <div class="title" id="prerequisites">
            <p>Prerequisites</p>
        </div>
        <div>
            <ul class="prerequisites">
                <li>CSEN101 Introduction to Computer Science
                </li>
                <li>CSEN201 Introduction to Java Programming
                </li>
            </ul>
        </div>
        <div class="line2 centerdiv">
        </div>
        <div style="height: 75px;">
        </div>

        <div class="title" id="syllabus">
            <p>Syllabus</p>
        </div>
        <div class="flex-container-2">
            <div class="flex-child">
                <p class="syllabus-title">Week</p>
                <p class="week-number">1</p>

            </div>
            <div class="flex-child">
                <p class="syllabus-title">Arrays</p>
                <p class="syllabus-description">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed 
                do e cupidatat non proident, sunt in.amet, consectetur adipiscing elit, sed do e cupidatat non proident, sunt in.
                </p>
            </div>
        </div>
        <img class="syllabus-line" src="./images/coursePageImages/line.svg" />

        <div class="flex-container-2">
            <div class="flex-child">
                <p class="syllabus-title">Week</p>
                <p class="week-number">2</p>

            </div>
            <div class="flex-child">
                <p class="syllabus-title">Arrays</p>
                <p class="syllabus-description">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed 
                do e cupidatat non proident, sunt in.amet, consectetur adipiscing elit, sed do e cupidatat non proident, sunt in.
                </p>
            </div>
        </div>
        <img class="syllabus-line" src="./images/coursePageImages/line.svg" />


        <div class="flex-container-2">
            <div class="flex-child">
                <p class="syllabus-title">Week</p>
                <p class="week-number">3</p>

            </div>
            <div class="flex-child">
                <p class="syllabus-title">Arrays</p>
                <p class="syllabus-description">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed 
                do e cupidatat non proident, sunt in.amet, consectetur adipiscing elit, sed do e cupidatat non proident, sunt in.
                </p>
            </div>
        </div>
        <div class="show-moreDiv">
            <asp:Button ID="Button1" CssClass="show-more" runat="server" Text="Show More" OnClick="showMore_Click" />
        </div>

        <div class="line2 centerdiv">
        </div>
        <div style="height: 75px;">
        </div>

        <div class="title" id="instructors">
            <p>Instructors</p>
        </div>
        <div>
            <p class="instructors-title">Lecturers :</p>
            <ul class="instructors-names">
                <li>Assoc. Prof. Haythem Ismail</li>
            </ul>
        </div>
        <div>
            <p class="instructors-title">Teaching Assistants :</p>
            <ul class="instructors-names">
                <li>Assoc. Prof. Haythem Ismail</li>
                <li>Assoc. Prof. Haythem Ismail</li>
                <li>Assoc. Prof. Haythem Ismail</li>
                <li>Assoc. Prof. Haythem Ismail</li>

            </ul>
        </div>

        <div class="line2 centerdiv">
        </div>
        <div style="height: 75px;">
        </div>

        <div class="title" id="resources">
            <p>Resources</p>
        </div>
        <div class="margin-bottom margin-left">
            <img class="navIcons" src="./images/coursePageImages/book.svg" />
            <span class="resources">&nbsp;&nbsp;Data Structures And Algorithms By Shi-Kuo</span>
        </div>
        <div class="margin-bottom margin-left">
            <img class="navIcons" src="./images/coursePageImages/link.svg" />
            <span class="resources">&nbsp;&nbsp;<a href="https://www.w3schools.in/data-structures/intro#:~:text=A%20data%20structure%20is%20said,using%20a%20linear%20memory%20location." style="direction: ltr">
                W3 Schools Lesson</a></span>
        </div>
    </form>
</body>
</html>

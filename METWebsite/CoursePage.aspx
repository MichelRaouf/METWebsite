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
        <div class="header">
            <img class="logo" src="./images/topBarImages/GUC-logo 2.svg" />
            <img class="bar" src="./images/topBarImages/bar.svg" />
            <label class="label1">Faculty of Media Engineering & Technology</label>
            <asp:Button ID="Button2" CssClass="login" runat="server" Text="Login" />

        </div>
        <div class="navbar">
            <div>
                <img src="images/topBarImages/home.svg" alt="Alternate Text" class="navimg" />
                <asp:Button Text="Home" runat="server" CssClass="navbtn" OnClick="toHome" />
            </div>
            <div>
                <img src="images/coursePageImages/coursesopen.svg" alt="Alternate Text" class="navimg3" />
                <asp:Button Text="Courses" runat="server" CssClass="navbtn" OnClick="toCourses" />
            </div>
            <div>
                <img src="images/topBarImages/staff.svg" alt="Alternate Text" class="navimg" />
                <asp:Button Text="Staff" runat="server" CssClass="navbtn" OnClick="toStaff" />
            </div>
            <div>
                <img src="images/topBarImages/studactiv.svg" alt="Alternate Text" class="navimg" />
                <asp:Button Text="Student Activity" runat="server" CssClass="navbtn" OnClick="toStudentActiv" />
            </div>
            <div>
                <img src="images/topBarImages/Alumni.svg" alt="Alternate Text" class="navimg" />
                <asp:Button Text="Alumni" runat="server" CssClass="navbtn" OnClick="toAlumni" />
            </div>
            <div>
                <img src="images/topBarImages/about.svg" alt="Alternate Text" class="navimg" />
                <asp:Button Text="About Us" runat="server" CssClass="navbtn" OnClick="toAbout" />
            </div>

        </div>

        <div class="flex-container-1">
            <div class="flex-child-1">
                (CSEN301) Data Structures and Algorithms
            </div>

            <div class="flex-child-1 center">
                <div class="margin-bottom">
                    <img class="nav2-img" src="./images/coursePageImages/credit.svg" />
                    <span>&nbsp;&nbsp;6 Credits Hours</span>
                </div>
                <div class="margin-bottom">
                    <img class="nav2-img" src="./images/coursePageImages/lecture.svg" />
                    <span>&nbsp;&nbsp;12 Lectures</span>
                </div>
                <div class="margin-bottom">
                    <img class="nav2-img" src="./images/coursePageImages/tutorial.svg" />
                    <span>&nbsp;&nbsp;11 Tutorials</span>
                </div>
                <div class="margin-bottom">
                    <img class="nav2-img" src="./images/coursePageImages/lab.svg" />
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
        <div class="line" id="updates">
        </div>


        <div class="title">
            <p>Course Updates</p>
        </div>
        <div>
            <ul class="updates">
                <li>Quiz 2 is set to be on Tuesday 2/12/2022 at 2:00 PM. Personalized seats will be sent via mail.</li>
                <li>Milestone deadline is extended for 2 more weeks.</li>
                <li>The midterm will contain only the first five lectures, their labs and tutorials.</li>
            </ul>
        </div>
        <div class="line2 centerdiv" id="description">
        </div>


        <div class="title">
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
        <div class="line2 centerdiv" id="prerequisites">
        </div>


        <div class="title">
            <p>Prerequisites</p>
        </div>
        <div>
            <ul class="prerequisites">
                <li class="itemDiv">CSEN101 Introduction to Computer Science
                </li>
                <li class="itemDiv">CSEN201 Introduction to Java Programming
                </li>
            </ul>
        </div>
        <div class="line2 centerdiv" id="syllabus">
        </div>

        <div class="title">
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

        <span id="space"></span>
        <span id="more7">
            <div class="flex-container-2">
                <div class="flex-child">
                    <p class="syllabus-title">Week</p>
                    <p class="week-number">4</p>

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
                    <p class="week-number">5</p>

                </div>
                <div class="flex-child">
                    <p class="syllabus-title">Arrays</p>
                    <p class="syllabus-description">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed 
                do e cupidatat non proident, sunt in.amet, consectetur adipiscing elit, sed do e cupidatat non proident, sunt in.
                    </p>
                </div>
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

        <div class="line2 centerdiv" id="resources">
        </div>


        <div class="title">
            <p>Resources</p>
        </div>
        <div class="margin-bottom margin-left">
            <img class="navimg" src="./images/coursePageImages/book.svg" />
            <span class="resources">&nbsp;&nbsp;Data Structures And Algorithms By Shi-Kuo</span>
        </div>
        <div class="margin-bottom margin-left">
            <img class="navimg" src="./images/coursePageImages/link.svg" />
            <span class="resources">&nbsp;&nbsp;<a href="https://www.w3schools.in/data-structures/intro#:~:text=A%20data%20structure%20is%20said,using%20a%20linear%20memory%20location." style="direction: ltr">
                W3 Schools Lesson</a></span>
        </div>
    </form>
</body>
</html>

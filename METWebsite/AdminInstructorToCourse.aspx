<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminInstructorToCourse.aspx.cs" Inherits="METWebsite.AdminInstructorToCourse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="./StyleSheets/AdminInstructorToCourse.css" />
    <link rel="stylesheet" href="StyleSheets/AdminHeaderNav.css" />

</head>
<body>
    <form id="form1" runat="server">
        <script>
            function selectedCourse() {
                document.getElementById("courses").style.display = "none";
                document.getElementById("courseSelected").style.display = "block";
                document.getElementById("instructors").style.display = "block";
            };

            function deselectedCourse() {
                document.getElementById("courseSelected").style.display = "none";
                document.getElementById("courses").style.display = "block";
                document.getElementById("instructors").style.display = "none";

            }

            function selectRole() {
                document.getElementById("instructorsSelected").style.display = "block";
                document.getElementById("instructors").style.display = "none";

            }
        </script>
        <div class="header">

            <img class="logo" src="./images/topBarImages/GUC-logo 2.svg" />


            <img class="bar" src="./images/topBarImages/bar.svg" />


            <label class="label1">Faculty of Media Engineering & Technology</label>

            <img class="adminLogo" src="./images/adminImages/adminLogo.svg" />
            <label class="adminLabel">Admin</label>

        </div>


        <nav>

            <ul class="navUl">
                <li>
                    <img class="dashboardIcon" src="./images/adminImages/dashboardIcon-white.svg" /></li>
                <li><a class="dashboard" href="AdminHomePage.aspx">Admin Dashboard</a></li>


                <li class="dropdown"><a>Main</a>
                    <ul class="dropdown-content" id="dropdown-main">
                        <li><a href="AdminDefineWeeks.aspx">Settings</a></li>
                        <li><a href="AdminDefineWeeks.aspx">Define Weeks</a></li>
                    </ul>
                </li>
                <li class="dropdown"><a href="#">Guest View</a>
                    <ul class="dropdown-content" id="dropdown-guest">
                        <li><a href="AdminStudentActivity.aspx">Edit Photo Gallery</a></li>
                        <li><a href="AdminStudentActivity.aspx">Edit News</a></li>
                        <li><a href="AdminAddStudentActivity.aspx">Add Student Activity</a></li>
                        <li><a href="AdminRemoveStudentActivity.aspx">Remove Student Activity</a></li>
                        <li><a href="AdminAddAlumni.aspx">Add Alumni</a></li>
                        <li><a href="AdminRemoveAlumni.aspx">Remove Alumni</a></li>
                    </ul>
                </li>
                <li class="dropdown"><a href="#">Courses</a>
                    <ul class="dropdown-content" id="dropdown-studentActivity">
                        <li><a href="AdminAddCourse.aspx">Add Course</a></li>
                        <li><a href="ARemoveC.aspx">Remove Course</a></li>
                    </ul>
                </li>
                <li class="dropdown"><a href="#">Instructor</a>
                    <ul class="dropdown-content" id="dropdown-others">
                        <li><a href="AdminAddInstructor.aspx">Add Instructor</a></li>
                        <li><a href="AdminRemoveInstructor.aspx">Remove Instructor</a></li>
                        <li><a href="AdminInstructorToCourse.aspx">Add Instructor to Course</a></li>
                        <li><a href="AdminRemoveInstructorFromCourse.aspx">Remove Instructor from Course</a></li>
                    </ul>
                </li>


            </ul>
        </nav>
        <div class="assignDiv">
            <label>Assign Instructor to Course</label>
        </div>

        <div class="courses" id="courses">
            <label class="selectCourseLabel">Select Course</label>
            <br />
            <input type="text" id="courseInput" runat="server" name="courseInput" placeholder="search" />
            <div class="coursesList">
                <div class="courseItem">
                    <div class="courseLabel">
                        <label class="courseCode">(CSEN401)</label>
                        <label class="courseName">Computer Programming Lab</label>
                    </div>
                    <asp:Button ID="button1" CssClass="select" runat="server" Text="Select" OnClientClick="selectedCourse();return false;" />
                </div>
                <div class="courseItem">
                    <div class="courseLabel">
                        <label class="courseCode">(CSEN401)</label>
                        <label class="courseName">Computer Programming Lab</label>
                    </div>
                    <asp:Button ID="button2" CssClass="select" runat="server" Text="Select" OnClientClick="selectedCourse();return false;" />
                </div>
                <div class="courseItem">
                    <div class="courseLabel">
                        <label class="courseCode">(CSEN401)</label>
                        <label class="courseName">Computer Programming Lab</label>
                    </div>
                    <asp:Button ID="button3" CssClass="select" runat="server" Text="Select" OnClientClick="selectedCourse();return false;" />
                </div>
                <div class="courseItem">
                    <div class="courseLabel">
                        <label class="courseCode">(CSEN401)</label>
                        <label class="courseName">Computer Programming Lab</label>
                    </div>
                    <asp:Button ID="button4" CssClass="select" runat="server" Text="Select" OnClientClick="selectedCourse();return false;" />
                </div>
                <div class="courseItem">
                    <div class="courseLabel">
                        <label class="courseCode">(CSEN401)</label>
                        <label class="courseName">Computer Programming Lab</label>
                    </div>
                    <asp:Button ID="button5" CssClass="select" runat="server" Text="Select" OnClientClick="selectedCourse();return false;" />
                </div>
                <div class="courseItem">
                    <div class="courseLabel">
                        <label class="courseCode">(CSEN401)</label>
                        <label class="courseName">Computer Programming Lab</label>
                    </div>
                    <asp:Button ID="button6" CssClass="select" runat="server" Text="Select" OnClientClick="selectedCourse();return false;" />
                </div>
                <div class="bottom">
                </div>
            </div>
        </div>

        <div class="courseSelected" id="courseSelected">
            <div class="courseItemSelected">
                <div class="courseLabel">
                    <label class="courseCode">(CSEN401)</label>
                    <label class="courseName">Computer Programming Lab</label>
                </div>
                <asp:Button ID="button7" CssClass="deselect" runat="server" Text="Deselect" OnClientClick="deselectedCourse();return false;" />
            </div>
            <div class="bottom">
            </div>
        </div>

        <div class="instructors" id="instructors">
            <label class="selectInstructorsLabel">Select Instructor(s)</label>
            <br />
            <input type="text" id="instructorInput" runat="server" name="instructorInput" placeholder="search" />
            <div class="instructorsList">
                <div class="instructorItem">
                    <label class="instructorName">Assoc. Prof. Haythem Ismail</label>
                    <input type="checkbox" id="selectInstructor1" name="selectInstructor" />

                </div>
                <div class="instructorItem">
                    <label class="instructorName">Assoc. Prof. Haythem Ismail</label>
                    <input type="checkbox" id="selectInstructor2" name="selectInstructor" />

                </div>
                <div class="instructorItem">
                    <label class="instructorName">Assoc. Prof. Haythem Ismail</label>
                    <input type="checkbox" id="selectInstructor3" name="selectInstructor" />

                </div>
                <div class="instructorItem">
                    <label class="instructorName">Assoc. Prof. Haythem Ismail</label>
                    <input type="checkbox" id="selectInstructor4" name="selectInstructor" />

                </div>
                <div class="instructorItem">
                    <label class="instructorName">Assoc. Prof. Haythem Ismail</label>
                    <input type="checkbox" id="selectInstructor5" name="selectInstructor" />

                </div>
                <div class="instructorItem">
                    <label class="instructorName">Assoc. Prof. Haythem Ismail</label>
                    <input type="checkbox" id="selectInstructor6" name="selectInstructor" />

                </div>




            </div>
            <asp:Button ID="button8" CssClass="selectRoles" runat="server" Text="Select Roles" OnClientClick="selectRole();return false;" />

            <div class="bottom">
            </div>
        </div>

        <div class="instructorsSelected" id="instructorsSelected">
            <label class="selectInstructorsLabel">Select Instructor(s)</label>
            <br />
            <div class="instructorsListSelected">
                <div class="instructorItem">
                    <label class="instructorName">Assoc. Prof. Haythem Ismail</label>
                    <div class="radioList">
                        <input type="radio" id="lecturer1" name="position1" />
                        <label class="positionLabel">Lecturer</label>
                        <input type="radio" id="ta1" name="position1" />
                        <label class="positionLabel">TA</label>
                    </div>

                </div>
                <div class="instructorItem">
                    <label class="instructorName">Assoc. Prof. Haythem Ismail</label>
                    <div class="radioList">
                        <input type="radio" id="lecturer2" name="position2" />
                        <label class="positionLabel">Lecturer</label>
                        <input type="radio" id="ta2" name="position2" />
                        <label class="positionLabel">TA</label>
                    </div>
                </div>
                <div class="instructorItem">
                    <label class="instructorName">Assoc. Prof. Haythem Ismail</label>
                    <div class="radioList">
                        <input type="radio" id="lecturer3" name="position3" />
                        <label class="positionLabel">Lecturer</label>
                        <input type="radio" id="ta3" name="position3" />
                        <label class="positionLabel">TA</label>
                    </div>
                </div>





            </div>
            <asp:Button ID="button9" CssClass="selectRoles" runat="server" Text="Assign" />

            <div class="bottom">
            </div>
        </div>

    </form>
</body>
</html>

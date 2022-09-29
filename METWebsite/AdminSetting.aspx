<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminSetting.aspx.cs" Inherits="METWebsite.AdminSetting" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="./StyleSheets/AdminSetting.css" />
    <link rel="stylesheet" href="StyleSheets/AdminHeaderNav.css" />
    <link rel="stylesheet" href="StyleSheets/AdminAddAlumni.css" />
   
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
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
            <label>Settings</label>
        </div>

        <div class="yearSeason">

            <div class="season">
                <label class="seasonLabel" for="nameInput">Season :</label>
                <br />
                <select required class="seasonInput" name="seasonInput" id="seasonInput" runat="server">
                    <option value="" disabled selected>Select a Season</option>
                    <option class="seasonOption" value="summer">Summer</option>
                    <option class="seasonOption" value="spring">Spring</option>
                    <option class="seasonOption" value="winter">Winter</option>
                    <option class="seasonOption" value="autumn">Autumn</option>
                </select>
            </div>

            <div class="year" id="yearDiv" runat="server">
                <label class="yearLabel" for="nameInput">Year :</label>
                <br />
                <select required class="yearInput" name="yearInput" id="yearInput" runat="server">
                    <option value="" disabled selected>Select a Year</option>
                </select>
            </div>

        </div>
        <div class="updateSettingDiv">
            <asp:Button CssClass="updateSetting" runat="server" Text="Update" OnClick="updateSetting" OnClientClick="giveValues();"/>
        </div>
        <input id="yearScript" type="hidden" runat="server" />
        <input id="seasonScript" type="hidden" runat="server" />

        <asp:Button ID="button2" CssClass="yesnobtn" runat="server" Text="Yes" OnClick="Yes_Click" Visible="false" UseSubmitBehavior="false" />
        <asp:Button ID="button3" CssClass="yesnobtn" runat="server" Text="No" Visible="false" UseSubmitBehavior="false" />
        <script>
            let counter = 2002;
            let max = new Date().getFullYear();
            for (var i = counter; i <= max; i++) {
                let optionElement = document.createElement("option");
                optionElement.className= "yearOption";
                optionElement.value = i;
                optionElement.innerHTML = i;
                document.getElementById("yearInput").appendChild(optionElement);

                document.getElementById("yearInput").value = document.getElementById("hidden").getAttribute("settingYear");
            }

            function giveValues() {
                var e = document.getElementById("yearInput");
                document.getElementById("yearScript").value = e.value;

                var e2 = document.getElementById("seasonInput");
                document.getElementById("seasonScript").value = e2.value;
            }

            function confirmAlumni() {
                const element = document.getElementById("successOverlay");
                element.remove();
            }

            function refresh() {
                document.location.reload();
            }
            
        </script>
        
    </form>
</body>
</html>

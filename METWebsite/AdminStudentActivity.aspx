<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminStudentActivity.aspx.cs" Inherits="METWebsite.AdminStudentActivity" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="./StyleSheets/AdminStudentActivity.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="scrollable">
            <div class="header">

                <img class="logo" src="./images/topBarImages/GUC-logo 2.svg" />


                <img class="bar" src="./images/topBarImages/bar.svg" />


                <label class="label1">Faculty of Media Engineering & Technology</label>

                <img class="adminLogo" src="./images/adminImages/adminLogo.svg" />
                <label class="adminLabel">Admin</label>

            </div>
        </div>

        <div class="navBar">
            <div class="dashIconLabel">
                <img class="dashboardIcon" src="./images/adminImages/dashboardIcon-white.svg" />
                <a class="dashboard" href="AdminHomePage.aspx">Admin Dashboard</a>
            </div>
            <div class="navLabels">Home</div>
            <div class="navLabels">Courses</div>
            <div class="navLabels">Student Activity</div>
            <div class="navLabels">Other</div>
        </div>

        <div class="addStudentActivityDiv">
            <label>Add Student Activity</label>
        </div>

        <div class="twoColumns">
            <div class="column1">
                <div class="section">
                    <label class="label">Title</label>
                    <input class="input" type="text" />
                </div>
                <div class="section">
                    <label class="label">Type</label>
                    <input class="input" type="text" />
                </div>
                <div class="section">
                    <label class="label">Icon</label>
                    <asp:Button  CssClass="addIcon" runat="server" Text="Choose Image" />
                </div>
                <div class="section">
                    <label class="label">Background-Color</label>
                    <div class="colors">
                        <div class="color1"></div>
                        <div class="color2"></div>
                        <div class="color3"></div>
                        <div class="color4"></div>
                    </div>
                </div>
                <div class="section">
                    <label class="label">About</label>
                    <input class="inputAbout" type="text" />
                </div>
            </div>

            <div class="column2">
                <div class="section">
                    <label class="label">Tracks</label>
                    <span id="hidden"></span>
                    <label name="labelTrackName" class="labelTrack"><span id="plus" class="plus" onclick="myFunction();return false;">+ </span> Add Track</label>

                </div>
                <div class="section">
                    <label class="label">Facebook Page Link</label>
                    <input class="input" type="text" />
                </div>
                <div class="section">
                    <label class="label">Instagram Page Link</label>
                    <input class="input" type="text" />
                </div>
            </div>
        </div>
        <div class="addDiv">
            <asp:Button CssClass="add" runat="server" Text="Add" />
        </div>

        <script>
            function myFunction() {
                var textBox = document.createElement("input");
                textBox.setAttribute("type", "text");
                textBox.setAttribute("class", "input");
                textBox.classList.add("labelTrackName");
                document.getElementById("hidden").appendChild(textBox);
            }
        </script>  
    </form>
</body>
</html>

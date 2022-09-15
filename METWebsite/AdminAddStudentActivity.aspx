<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminAddStudentActivity.aspx.cs" Inherits="METWebsite.AdminAddStudentActivity" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="./StyleSheets/AdminStudentActivity.css" />
    <link rel="stylesheet" href="./StyleSheets/AdminNavbar.css" />
    <link rel="stylesheet" href="./StyleSheets/AdminOverlay.css" />
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
                    <input id="title" runat="server" class="input" type="text" required />
                </div>
                <div class="section">
                    <label class="label">Type</label>
                    <input id="type" runat="server" class="input" type="text" required />
                </div>
                <div class="section">
                    <label class="label">Icon</label>
                    <input type="file" accept="image/*" name="file" id="fileUpload" runat="server" class="addIcon" />

                </div>
                <div class="section">
                    <label class="label">Background-Color</label>
                    <div class="colors">
                        <div id="color1" runat="server" class="gradients" onclick="selectGradient(id);"></div>
                        <div id="color2" runat="server" class="gradients" onclick="selectGradient(id);"></div>
                        <div id="color3" runat="server" class="gradients" onclick="selectGradient(id);"></div>
                        <div id="color4" runat="server" class="gradients" onclick="selectGradient(id);"></div>
                        <div id="color5" runat="server" class="gradients" onclick="selectGradient(id);"></div>
                    </div>
                </div>
                <div class="section">
                    <label class="label">About</label>
                    <input id="about" runat="server" class="inputAbout" type="text" required />
                </div>
            </div>

            <script>
                function selectGradient(id) {

                    var x = document.getElementsByClassName("gradients");
                    for (var i = 0; i < x.length; i++) {
                        x[i].style.width = '20px';
                        x[i].style.height = '20px';

                        document.getElementById("Hidden" + (i + 1)).value = "2";
                    }
                    var color = document.getElementById(id);
                    color.style.width = '25px';
                    color.style.height = '25px';

                    if (id === "color1")
                        document.getElementById("Hidden1").value = "1";
                    else if (id === "color2")
                        document.getElementById("Hidden2").value = "1";
                    else if (id == "color3")
                        document.getElementById("Hidden3").value = "1";
                    else if (id == "color4")
                        document.getElementById("Hidden4").value = "1";
                    else if (id == "color5")
                        document.getElementById("Hidden5").value = "1";
                }
                //window.onloadstart = function () {
                //    document.getElementById('title').value = '';
                //}
            </script>

            <div class="column2">
                <div class="section">
                    <label class="label">Tracks</label>
                    <div id="tracks" runat="server">
                        <input id="TextTrack1" runat="server" class="input" type="text" required />
                        <input id="TextTrack2" runat="server" class="input" type="text" />
                        <input id="TextTrack3" runat="server" class="input" type="text" />
                        <input id="TextTrack4" runat="server" class="input" type="text" />
                        <input id="TextTrack5" runat="server" class="input" type="text" />
                    </div>
                    <%--<div>
                        <asp:Button runat="server" Text="+" CssClass="plus" OnClick="addTextBox"  />
                        <asp:Button runat="server" Text="add track" CssClass="labelTrack" OnClick="addTextBox"  />
                    </div>--%>

                    <%--<label name="labelTrackName" class="labelTrack"><span id="plus" class="plus" onclick="addTrack();return false;">+ </span> Add Track</label>--%>
                </div>
                <div class="section">
                    <label class="label">Facebook Page Link</label>
                    <input id="facebook" runat="server" class="input" type="text" />
                </div>
                <div class="section">
                    <label class="label">Instagram Page Link</label>
                    <input id="instagram" runat="server" class="input" type="text" />
                </div>
            </div>
        </div>
        <div class="addDiv">
            <asp:Button CssClass="add" runat="server" Text="Add" OnClick="addStudentActivity" />
        </div>
        <asp:Button ID="button2" CssClass="yesnobtn" runat="server" Text="Yes" OnClick="Yes_Click" Visible="false" />
        <asp:Button ID="button3" CssClass="yesnobtn" runat="server" Text="No" Visible="false" />

        <input id="Hidden1" type="hidden" runat="server" />
        <input id="Hidden2" type="hidden" runat="server" />
        <input id="Hidden3" type="hidden" runat="server" />
        <input id="Hidden4" type="hidden" runat="server" />
        <input id="Hidden5" type="hidden" runat="server" />


        <script>
            var x = 0;
            function addTrack() {
                var textBox = document.createElement("input");
                textBox.setAttribute("type", "text");
                textBox.setAttribute("class", "input");
                textBox.setAttribute("id", "trackInput" + (++x));
                textBox.setAttribute("runat", "server");
                textBox.classList.add("labelTrackName");
                document.getElementById("hidden").appendChild(textBox);
            }
        </script>
    </form>
</body>
</html>

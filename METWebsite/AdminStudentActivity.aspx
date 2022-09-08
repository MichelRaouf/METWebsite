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
                    <input id="title" runat="server" class="input" type="text" />
                </div>
                <div class="section">
                    <label class="label">Type</label>
                    <input id="type" runat="server"  class="input" type="text" />
                </div>
                <div class="section">
                    <label class="label">Icon</label>
                    <input id="icon" type="file" accept="image/*" name="image" id="file" class="addIcon" />
                    
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
                    <input id="about" runat="server" class="inputAbout" type="text" />
                </div>
            </div>

            <script>
                function selectGradient(id) {
          
                    var x = document.getElementsByClassName("gradients");
                    for (var i = 0; i < x.length; i++) {
                       
                        x[i].style.width = '20px';
                        x[i].style.height = '20px';
                        x[i].setAttribute("ok", "");
                    }
                    var color = document.getElementById(id);
                    color.style.width = '25px';
                    color.style.height = '25px';
                    color.setAttribute("ok", "1");
                    
                }
            </script>

            <div class="column2">
                <div class="section">
                    <label class="label">Tracks</label>
                    <span id="hidden" runat="server"></span>
                    <%--<div>
                         <asp:Button runat="server" Text="+" CssClass="plus" OnClick="Unnamed2_Click" />
                        <asp:Button runat="server" Text="Add Track" CssClass="labelTrack" OnClick="Unnamed2_Click" />
                    </div>--%>

                    <label name="labelTrackName" class="labelTrack"><span id="plus" class="plus" onclick="addTrack();return false;">+ </span> Add Track</label>

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
            <asp:Button CssClass="add" runat="server" Text="Add" OnClick="addStudentActivity"/>
        </div>

        <input id="Hidden1" type="hidden" runat="server" />


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
                    document.getElementById("Hidden1").value = x;
            }
        </script>  
    </form>
</body>
</html>

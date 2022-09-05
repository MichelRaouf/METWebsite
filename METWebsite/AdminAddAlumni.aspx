<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminAddAlumni.aspx.cs" Inherits="METWebsite.AdminAddAlumni" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link rel="stylesheet" href="./StyleSheets/AdminAddAlumni.css" />
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
            <div class="navLabels" onmouseover="homeDiv()">Home</div>
            <div class="navLabels" onmouseover="courseDiv()">Courses</div>
            <div class="navLabels" onmouseover="activDiv()">Student Activity</div>
            <div class="navLabels" onmouseover="otherDiv()">Other</div>
        </div>
        <div class="addAlumniDiv">
            <label>Add Alumni</label>
        </div>

        <div class="inputs">
            <div class="name">
                <label class="nameLabel" for="nameInput">Name: </label>
                <br />
                <input type="text" id="nameInput" required runat="server" name="nameInput" placeholder="name" />
            </div>
            <div class="profile">
                <label class="profileLabel">Profile Picture: </label>
                <br />
                <br />

                <label for="input1" class="profilePicture" id="labelforpic">Choose Image               
                <input type="file"   id="input1" onchange="func()" />  
                    </label> 
                <div class="files"></div>
                
                <br />
            </div>
            <div class="about">
                <label class="aboutLabel" for="aboutInput">About: </label>
                <br />
                <input type="text" id="aboutInput" runat="server" required name="aboutInput" placeholder="about" />
            </div>            
        </div>
        <div class="buttonDiv">
            <asp:Button ID="button1" CssClass="addAlumni" runat="server" Text="Add Alumni" OnClick="button1_Click" />

<%--            <button  class="addAlumni" onclick="confirmAlumni()" > Add Alumni</button>--%>
        </div>
                                <asp:Button ID="button2" CssClass="yesnobtn" runat="server" Text="Yes" OnClick="Yes_Click" Visible="false" />
            <asp:Button ID="button3" CssClass="yesnobtn" runat="server" Text="No" visible="true" />

    </form>
    <script>
        function confirmAlumni() {
            var div = document.createElement("div");
            var label = document.createElement("label");
            label.innerHTML = "Are you sure that you want to add " + document.getElementById("nameInput").nodeValue;
            div.setAttribute("class", "confirmdiv");
            document.getElementById("form1").appendChild(div);

        }
        function confirmed() {
            alert(12)
        }
        function func() {
            var y = document.getElementById("labelforpic");
            var x = document.getElementById("input1");
            var div = document.getElementsByClassName("files")[0];
            div.innerHTML = x.files.item(0).name;
            div.style.left = y.offsetLeft + 170 + "px";
            div.style.top = y.offsetTop+"px"
            div.style.position = "absolute";
        }
        
    </script>
</body>
</html>

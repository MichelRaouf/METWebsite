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
              
                <li> <asp:Button CssClass="coursebtn" runat="server" Text="Hello" /> </li>
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
            <div class="navLabels" onmouseover="homeDiv()" >Home</div>
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
        function removeDiv() {
            var x = document.getElementById("addeddiv");
            if (x != null) {
                document.querySelector("body").removeChild(x);
            }
        }
        function homeDiv() {
            var x = document.getElementById("addeddiv");
            if (x != null) {
                document.querySelector("body").removeChild(x);
            }
            var div = document.createElement("div");
            div.setAttribute("id", "addeddiv");
            div.setAttribute("onmouseleave", "removeDiv()")
            var ul = document.createElement("ul");
            ul.style.marginRight = "2vw";

            div.setAttribute("class", "navdiv");
            var li1 = document.createElement("li");
            li1.setAttribute("class", "dropitem");
            var a1 = document.createElement("a");
            a1.innerHTML = "Edit Photo Gallery";
            a1.setAttribute("href", "AdminHomePage.aspx");
            a1.style.color = "white";
            li1.appendChild(a1);
            var li2 = document.createElement("li");
            
            var a2 = document.createElement("a");
            
            a2.innerHTML = "Add News";
           
            a2.style.color = "white";
            a2.setAttribute("href", "AdminHomePage.aspx");
            
            li2.appendChild(a2);
            
            li2.setAttribute("class", "dropitem");
            ul.appendChild(li1);
            ul.appendChild(li2);
            div.appendChild(ul);
            div.style.position = "absolute";
            div.style.top = event.srcElement.offsetTop + 40 + "px";
            div.style.left = event.srcElement.offsetLeft + "px";
            document.querySelector("body").appendChild(div);
        }
        function courseDiv() {
            var x = document.getElementById("addeddiv");
            if (x != null) {
                document.querySelector("body").removeChild(x);
            }
            var div = document.createElement("div");
            div.setAttribute("id", "addeddiv");
            div.setAttribute("onmouseleave", "removeDiv()")
            var ul = document.createElement("ul");
            ul.style.marginRight = "2vw";

            div.setAttribute("class", "navdiv");
            var li1 = document.createElement("li");
            li1.setAttribute("class", "dropitem");
            var a1 = document.createElement("a");
            a1.innerHTML = "Add Course";
            a1.setAttribute("href", "AdminHomePage.aspx");
            a1.style.color = "white";
            li1.appendChild(a1);
            var li2 = document.createElement("li");

            var a2 = document.createElement("a");

            a2.innerHTML = "Remove Course";

            a2.style.color = "white";
            a2.setAttribute("href", "AdminHomePage.aspx");

            li2.appendChild(a2);

            li2.setAttribute("class", "dropitem");
            var li3 = document.createElement("li");

            var a3 = document.createElement("a");

            a3.innerHTML = "Add Instructor";

            a3.style.color = "white";
            a3.setAttribute("href", "AdminHomePage.aspx");

            li3.appendChild(a3);

            li3.setAttribute("class", "dropitem");

            var li4 = document.createElement("li");

            var a4 = document.createElement("a");

            a4.innerHTML = "Remove Instructor";

            a4.style.color = "white";
            a4.setAttribute("href", "AdminHomePage.aspx");

            li4.appendChild(a4);

            li4.setAttribute("class", "dropitem");

            var li5 = document.createElement("li");

            var a5 = document.createElement("a");

            a5.innerHTML = "Assing Instructor to Course";

            a5.style.color = "white";
            a5.setAttribute("href", "AdminHomePage.aspx");

            li5.appendChild(a5);

            li5.setAttribute("class", "dropitem");

            var li6 = document.createElement("li");

            var a6 = document.createElement("a");

            a6.innerHTML = "Remove Instructor from Course";

            a6.style.color = "white";
            a6.setAttribute("href", "AdminHomePage.aspx");

            li6.appendChild(a6);

            li6.setAttribute("class", "dropitem");
            ul.appendChild(li1);
            ul.appendChild(li2);
            ul.appendChild(li3);
            ul.appendChild(li4);
            ul.appendChild(li5);
            ul.appendChild(li6);
            div.appendChild(ul);
            div.style.position = "absolute";
            div.style.top = event.srcElement.offsetTop + 40 + "px";
            div.style.left = event.srcElement.offsetLeft + "px";
            document.querySelector("body").appendChild(div);


        }
        function activDiv() {
            var x = document.getElementById("addeddiv");
            if (x != null) {
                document.querySelector("body").removeChild(x);
            }
            var div = document.createElement("div");
            div.setAttribute("id", "addeddiv");
            div.setAttribute("onmouseleave", "removeDiv()")
            var ul = document.createElement("ul");
            ul.style.marginRight = "2vw";

            div.setAttribute("class", "navdiv");
            var li1 = document.createElement("li");
            li1.setAttribute("class", "dropitem");
            var a1 = document.createElement("a");
            a1.innerHTML = "Add Student Activity";
            a1.setAttribute("href", "AdminHomePage.aspx");
            a1.style.color = "white";
            li1.appendChild(a1);
            var li2 = document.createElement("li");

            var a2 = document.createElement("a");

            a2.innerHTML = "Remove Student Activity";

            a2.style.color = "white";
            a2.setAttribute("href", "AdminHomePage.aspx");

            li2.appendChild(a2);

            li2.setAttribute("class", "dropitem");
            ul.appendChild(li1);
            ul.appendChild(li2);
            div.appendChild(ul);
            div.style.position = "absolute";
            div.style.top = event.srcElement.offsetTop + 40 + "px";
            div.style.left = event.srcElement.offsetLeft + "px";
            document.querySelector("body").appendChild(div);

        }
        function otherDiv() {
            var x = document.getElementById("addeddiv");
            if (x != null) {
                document.querySelector("body").removeChild(x);
            }
            var div = document.createElement("div");
            div.setAttribute("id", "addeddiv");
            div.setAttribute("onmouseleave", "removeDiv()")
            var ul = document.createElement("ul");
            ul.style.marginRight="2vw";
            div.setAttribute("class", "navdiv");
            var li1 = document.createElement("li");
            li1.setAttribute("class", "dropitem");
            var a1 = document.createElement("a");
            a1.innerHTML = "Add New Alumni";
            a1.setAttribute("href", "AdminHomePage.aspx");
            a1.style.color = "white";
            li1.appendChild(a1);
            var li2 = document.createElement("li");

            var a2 = document.createElement("a");

            a2.innerHTML = "Define Weeks";

            a2.style.color = "white";
            a2.setAttribute("href", "AdminHomePage.aspx");

            li2.appendChild(a2);

            li2.setAttribute("class", "dropitem");
            var li3 = document.createElement("li");

            var a3 = document.createElement("a");

            a3.innerHTML = "Change Settings";

            a3.style.color = "white";
            a3.setAttribute("href", "AdminHomePage.aspx");

            li3.appendChild(a3);

            li3.setAttribute("class", "dropitem");
            ul.appendChild(li1);
            ul.appendChild(li2);
            ul.appendChild(li3);
            div.appendChild(ul);
            div.style.position = "absolute";
            div.style.top = event.srcElement.offsetTop + 40 + "px";
            div.style.left = event.srcElement.offsetLeft + "px";
            document.querySelector("body").appendChild(div);


        }
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

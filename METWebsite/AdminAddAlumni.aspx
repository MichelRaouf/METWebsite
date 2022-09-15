<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminAddAlumni.aspx.cs" Inherits="METWebsite.AdminAddAlumni" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link rel="stylesheet" href="./StyleSheets/AdminAddAlumni.css" />
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
                <li><img class="dashboardIcon" src="./images/adminImages/dashboardIcon-white.svg" /></li>
                <li><a class="dashboard" href="AdminHomePage.aspx">Admin Dashboard</a></li>


                <li class="dropdown"><a>Home</a>
                    <ul class="dropdown-content" id="dropdown-home">
                        <li><a>Edit Photo Gallery</a></li>
                        <li><a>Add News</a></li>
                    </ul>
                </li>
                <li class="dropdown"><a href="#">Courses</a>
                    <ul class="dropdown-content" id="dropdown-course" >
                        <li><a>Add Course</a></li>
                        <li><a>Remove Course</a></li>
                        <li><a>Add Instructor</a></li>
                        <li><a>Remove Instructor</a></li>
                        <li><a>Assign Instructor</a></li>
                        <li><a>Remove Instructor</a></li>
                    </ul>
                </li>
                <li class="dropdown"><a href="#">Student Activity</a>
                    <ul class="dropdown-content" id="dropdown-studentActivity">
                        <li><a>Add Student Activity</a></li>
                        <li><a>Remove Student Activity</a></li>
                    </ul>
                </li>
                <li class="dropdown"><a href="#">Other</a>
                    <ul class="dropdown-content" id="dropdown-others">
                         <li><a>Add New Alumni</a></li>
                        <li><a>Define Weeks </a></li>
                        <li><a>Define Weeks </a></li>
                    </ul>
                </li>
                
                
            </ul>
        </nav>



        <div class="addAlumniDiv">
            <label>Add Alumni</label>
        </div>
        <div class="container">
        <div class="inputs">
            <div class="name">
                <label class="nameLabel" for="nameInput">Name </label>
                <br />
                <input type="text" id="nameInput" required runat="server" name="nameInput" placeholder="Alumni Name" />
            </div>

            <div class="profile">

                

                <label class="profileLabel">Profile Picture </label>
            
                <br />
                <br />
                <div class="profileButtonContainer">
                <label for="input1" class="profilePicture" id="labelforpic">Choose Image               
                <input type="file"   id="input1" onchange="func()" />  
                    </label> 
                <div class="files"></div>
                
                </div>
  

            </div>
            <div class="about">
                <label class="aboutLabel" for="aboutInput">About: </label>
                <br />
                <input type="text" id="aboutInput" runat="server" required name="aboutInput" placeholder="About" />
            </div>            
        </div>
        <div class="buttonDiv">
            <asp:Button ID="button1" CssClass="addAlumni" runat="server" Text="Add Alumni" OnClick="button1_Click" />
        </div>
            <asp:Button ID="button2" CssClass="yesnobtn" runat="server" Text="Yes" OnClick="Yes_Click" Visible="false" />
            <asp:Button ID="button3" CssClass="yesnobtn" runat="server" Text="No" visible="false" />
            </div> 
        

 
    </form>
    <script>
      
        function confirmAlumni() {
            const element = document.getElementById("successOverlay");
            element.remove();

        }
        function confirmed() {
            alert(12)
        }
        function func() {
            var y = document.getElementById("labelforpic");
            var x = document.getElementById("input1");
            var div = document.getElementsByClassName("files")[0];
            div.innerHTML = x.files.item(0).name;
           
            
        }
        
    </script>
</body>
</html>

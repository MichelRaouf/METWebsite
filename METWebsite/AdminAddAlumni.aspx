<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminAddAlumni.aspx.cs" Inherits="METWebsite.AdminAddAlumni" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link rel="stylesheet" href="./StyleSheets/AdminAddAlumni.css" />
        <link rel="stylesheet" href="StyleSheets/AdminHeaderNav.css" />
       
</head>
<body>
    <form id="form1" method="post" runat="server" enctype="multipart/form-data" action="AdminAddAlumni.aspx">
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


                <li class="dropdown"><a>Main</a>
                    <ul class="dropdown-content" id="dropdown-main">
                        <li><a href="AdminDefineWeeks.aspx">Settings</a></li>
                        <li><a href="AdminDefineWeeks.aspx">Define Weeks</a></li>
                    </ul>
                </li>
                <li class="dropdown"><a href="#">Guest View</a>
                    <ul class="dropdown-content" id="dropdown-guest" >
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
                <input type="file" runat="server" id="input1" onchange="func()" />  
                    </label> 
                <div class="files" id="files"></div>
                    <div id="filesDiv" runat="server">

                    </div>
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
            //var div = document.getElementsByClassName("files")[0];
            //div.innerHTML = x.files.item(0).name;
            document.getElementById("filesDiv").innerHTML = x.files.item(0).name;            
        }
        
    </script>
</body>
</html>

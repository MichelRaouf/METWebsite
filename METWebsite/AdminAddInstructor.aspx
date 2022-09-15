    <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminAddInstructor.aspx.cs" Inherits="METWebsite.AdminAddInstructor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="./StyleSheets/AdminAddInstructor.css" />
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


        <div class="addInstructorDiv">
            <label>Add Instructor</label>
        </div>

        <div class="container">
        <div class="inputs">
            <div class="name">
                <label class="nameLabel" for="nameInput">Name </label>
                <br />
                <input type="text" id="nameInput" runat="server" name="nameInput" placeholder="name" />
            </div>
             <div class="position">
                <label class="positionLabel" for="nameInput">Position </label>
                <br />
                <select required name="languages" id="positionInput" runat="server">
                  <option value="" disabled selected>Select a Position</option>
                  <option class="ddOption" value="Dean">Dean</option>
                  <option class="ddOption" value="ViceDean">Vice Dean</option>
                  <option class="ddOption" value="lecturer">Lecturer</option>
                  <option class="ddOption"  value="ta">Teaching Assistant</option>
                 
                </select>
      
            </div>
            
            <div class="email">
                <label class="emailLabel" for="emailInput">E-mail </label>
                <br />
                <input type="text" id="emailInput" runat="server" name="emailInput" placeholder="email" />
            </div>
        </div>


        <div class="buttonDiv">
            <asp:Button ID="Button1" CssClass="sendInvite" runat="server" Text="Send Invitation Link" OnClick="Button1_Click" />
            <asp:Button ID="button2" CssClass="yesnobtn" runat="server" Text="Yes" OnClick="Yes_Click" Visible="false" />
            <asp:Button ID="button3" CssClass="yesnobtn" runat="server" Text="No" visible="false" />
            <label class="email" id="mailmessage" runat="server"></label>

            
        </div>
            </div>
    </form>
</body>
</html>

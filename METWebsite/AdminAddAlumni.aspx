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
            <div class="navLabels">Home</div>
            <div class="navLabels">Courses</div>
            <div class="navLabels">Student Activity</div>
            <div class="navLabels">Other</div>
        </div>
        <div class="addAlumniDiv">
            <label>Add Alumni</label>
        </div>

        <div class="inputs">
            <div class="name">
                <label class="nameLabel" for="nameInput">Name: </label>
                <br />
                <input type="text" id="nameInput" runat="server" name="nameInput" placeholder="name" />
            </div>
            <div class="profile">
                <label class="profileLabel">Profile Picture: </label>
                <br />
                <asp:Button ID="Button1" CssClass="profilePicture" runat="server" Text="Choose Image" />
                <br />
            </div>
            <div class="about">
                <label class="aboutLabel" for="aboutInput">About: </label>
                <br />
                <input type="text" id="aboutInput" runat="server" name="aboutInput" placeholder="about" />
            </div>            
        </div>
        <div class="buttonDiv">
            <asp:Button ID="Button3" CssClass="addAlumni" runat="server" Text="Add Alumni" />
        </div>
    </form>
</body>
</html>

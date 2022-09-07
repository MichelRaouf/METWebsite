<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminAddInstructor.aspx.cs" Inherits="METWebsite.AdminAddInstructor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="./StyleSheets/AdminAddInstructor.css" />
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
        <div class="addInstructorDiv">
            <label>Add Instructor</label>
        </div>
        <div class="inputs">
            <div class="name">
                <label class="nameLabel" for="nameInput">Name: </label>
                <input type="text" id="nameInput" runat="server" name="nameInput" placeholder="name" />
            </div>
            <div class="password">
                <label class="passwordLabel" for="passwordInput">Password: </label>
                <input type="text" id="passwordInput" runat="server" name="passwordInput" placeholder="password" />
            </div>
            <div class="email">
                <label class="emailLabel" for="emailInput">E-mail: </label>
                <input type="text" id="emailInput" runat="server" name="emailInput" placeholder="email" />
            </div>
        </div>


        <div class="buttonDiv">
            <asp:Button ID="Button1" CssClass="sendInvite" runat="server" Text="Send Invitation Link" OnClick="Button1_Click" />
            <label class="email" id="mailmessage" runat="server"></label>
        </div>
    </form>
</body>
</html>

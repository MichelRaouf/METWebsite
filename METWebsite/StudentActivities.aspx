<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentActivities.aspx.cs" Inherits="METWebsite.StudentActivities" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link rel="stylesheet" href="StyleSheets/studentActivities.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <div>
                <img class="logo" src="./images/stActivitiesPageImages/GUC-logo 2.svg" /></div>
            <div>
                <img class="bar" src="./images/stActivitiesPageImages/bar.svg" /></div>
            <div>
                <label class="label1">Faculty of Media Engineering & Technology</label></div>
            <div>
                <asp:Button ID="Button1" CssClass="login" runat="server" Text="Login" /></div>
        </div>


        <div class="navbar">
            <div class="home">
                <img src="./images/stActivitiesPageImages/home.svg" />
                <asp:Button ID="Button4" CssClass="navbtn" runat="server" Text="Home" />
            </div>

            <div class="courses">
                <img src="./images/stActivitiesPageImages/course.svg" />
                <asp:Button ID="Button5" CssClass="navbtn" runat="server" Text="Courses" />
            </div>

            <div class="staff">
                <img src="./images/stActivitiesPageImages/staff.svg" />
                <asp:Button ID="Button3" CssClass="navbtn" runat="server" Text="Staff" />
            </div>

            <div class="stud">
                <img src="./images/stActivitiesPageImages/studentActivityClicked.svg" />
                <asp:Button ID="Button6" CssClass="navbtn" runat="server" Text="Student Activities" />
            </div>

            <div class="alumni">
                <img src="./images/stActivitiesPageImages/alumni.svg" />
                <asp:Button ID="Button7" CssClass="navbtn" runat="server" Text="Alumni" />
            </div>

            <div class="about">
                <img src="./images/stActivitiesPageImages/about.svg" />
                <asp:Button ID="Button8" CssClass="navbtn" runat="server" Text="About Us" />
            </div>
        </div>

        
        <div class="studentActivity">
            <div class="incuabator">
                 <img class="image" src="./images/stActivitiesPageImages/incubatorN.svg" />
            </div>
            <div class="brain">
                 <img class="image" src="./images/stActivitiesPageImages/brainN.svg" />
            </div>
            <div class="acm">
                  <img class="image" src="./images/stActivitiesPageImages/acmN.svg" />
            </div>
            <div class="gdg">
                   <img class="image" src="./images/stActivitiesPageImages/gdgN.svg" />
            </div>
            <div class="ieee">
                   <img class="image" src="./images/stActivitiesPageImages/ieeeN.svg" />
            </div>
            <div class="svy">
                   <img class="image" src="./images/stActivitiesPageImages/svyN.svg" />
            </div>
        </div>
    </form>
</body>
</html>

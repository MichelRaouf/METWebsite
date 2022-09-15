<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminRemoveAlumni.aspx.cs" Inherits="METWebsite.AdminRemoveAlumni" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="./StyleSheets/AdminRemoveAlumni.css" />
    <link rel="stylesheet" href="./StyleSheets/AdminRemoveInstructor.css" />
    <link rel="stylesheet" href="./StyleSheets/AdminNavbar.css" />
    <link rel="stylesheet" href="./StyleSheets/AdminOverlay.css" />

    <title></title>
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
        <div class="assignDiv">
            <label>Remove Alumni</label>
        </div>

        <div class="alumni" id="alumni">

            <div class="hierarchyTitle">
                <div>
                    <asp:ImageButton runat="server" ImageUrl="images/staff/search.png" CssClass="searchButton" OnClick="toSearchRes" />
                    <asp:TextBox placeholder="Search.." ID="searchInput" runat="server" />
                </div>
            </div>

            <div class="alumniList" id="alumniList" runat="server">
            </div>
            <div class="bottom"></div>
            <asp:Button ID="button2" CssClass="yesnobtn" runat="server" Text="Yes" OnClick="Yes_Click" Visible="false" />
            <asp:Button ID="button3" CssClass="yesnobtn" runat="server" Text="No" Visible="false" />

        </div>
    </form>
</body>
</html>

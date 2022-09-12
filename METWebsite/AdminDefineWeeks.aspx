<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDefineWeeks.aspx.cs" Inherits="METWebsite.AdminDefineWeeks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="./StyleSheets/AdminDefineWeeks.css" />
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
            <label>Define Weeks</label>
        </div>

        <div class="weekDiv">
            <div class="startDate">
                <label class="startDateLabel">Start Date</label>
                <input type="date" id="startDate" runat="server" name="startDate" required>
            </div>

            <div class="endDate">
                <label class="endDateLabel">End Date</label>
                <input type="date" id="endDate" runat="server" name="endDate" required>
            </div>

            <asp:Button ID="button1" CssClass="addWeek" runat="server" Text="Add Week" OnClick="addWeek"/>
        </div>

    </form>
</body>
</html>

﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminRemoveStudentActivity.aspx.cs" Inherits="METWebsite.adminRemoveStudentActivity" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="./StyleSheets/AdminRemoveStudentActivity.css" />
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
            <label>Remove Student Activity</label>
        </div>

        <div class="studentActivity" >

            <div class="studentActivityList" id="studentActivityList" runat="server">
                <%--<div class="studentActivityItem">
                    <div class="studentActivityLabelDiv">
                        <label class="studentActivityLabel">IEEE</label>
                    </div>
                    <asp:Button ID="button1" CssClass="delete" runat="server" Text="Delete" />
                </div>--%>

            </div>
            <div class="bottom"></div>
        </div>
    </form>
</body>
</html>

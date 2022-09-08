<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminInstructorToCourse1.aspx.cs" Inherits="METWebsite.AdminInstructorToCourse1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="./StyleSheets/AdminInstructorToCourse1.css" />
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
            <div class="navLabels" onmouseover="homeDiv()" >Home</div>
            <div class="navLabels" onmouseover="courseDiv()">Courses</div>
            <div class="navLabels" onmouseover="activDiv()">Student Activity</div>
            <div class="navLabels" onmouseover="otherDiv()">Other</div>
        </div>
        <div class="assignDiv">
            <label>Assign Instructor to Course</label>
        </div>

        <%--<div class="instructors">
            <label class="selectInstructorLabel">Select An Instructor To Assign</label>
            <br />
            <input type="text" id="instructorInput" runat="server" name="instructorInput" placeholder="search" />
            <div class="instructorsList">
                <div class="instructorItem">
                    <label class="instructorName">Assoc. Prof. Haythem Ismail</label>
                    <asp:Button ID="button1" CssClass="select" runat="server" Text="Select" />
                </div>
                <div class="instructorItem">
                    <label class="instructorName">Assoc. Prof. Haythem Ismail</label>
                    <asp:Button ID="button2" CssClass="select" runat="server" Text="Select" />
                </div>
                <div class="instructorItem">
                    <label class="instructorName">Assoc. Prof. Haythem Ismail</label>
                    <asp:Button ID="button3" CssClass="select" runat="server" Text="Select" />
                </div>
                <div class="instructorItem">
                    <label class="instructorName">Assoc. Prof. Haythem Ismail</label>
                    <asp:Button ID="button4" CssClass="select" runat="server" Text="Select" />
                </div>
                <div class="instructorItem">
                    <label class="instructorName">Assoc. Prof. Haythem Ismail</label>
                    <asp:Button ID="button5" CssClass="select" runat="server" Text="Select" />
                </div>
                <div class="instructorItem">
                    <label class="instructorName">Assoc. Prof. Haythem Ismail</label>
                    <asp:Button ID="button6" CssClass="select" runat="server" Text="Select" />
                </div>
            </div>
        </div>--%>



    </form>
</body>
</html>

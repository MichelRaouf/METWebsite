<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminHomePage.aspx.cs" Inherits="METWebsite.AdminHomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link  rel="stylesheet" href="./StyleSheets/AdminHome.css"/>
</head>
<body>
    <form id="form1" runat="server">
             <div class="scrollable">
            <div class="header">
            
                            <img class="logo" src="./images/topBarImages/GUC-logo 2.svg" />
           
           
                            <img class="bar" src="./images/topBarImages/bar.svg"/>
            
          
                            <label class="label1">Faculty of Media Engineering & Technology</label>
            
                <img class="adminLogo" src="./images/adminImages/adminLogo.svg" />
                <label class="adminLabel">Admin</label>
            
        </div>
        </div>
        <div class="dashboard">
            <img class="dashboardIcon" src="./images/adminImages/dashboardIcon.svg" />
            <label class="dashboardLabel">Admin Dashboard</label>
        </div>
        <div class="cardsDiv">
            <div class="cards">
                <img class="homeIcon" src="./images/adminImages/homeIcon.svg" />
                <label class="cardLabel">Home</label>
            </div>
            <div class="cards">
                <img class="coursesIcon" src="./images/adminImages/coursesIcon.svg" />
                <label class="cardLabel">Courses</label>
            </div>
            <div class="cards">
                <img class="stActivityIcon" src="./images/adminImages/stActivityIcon.svg" />
                <label class="cardLabel">Student Activity</label>
            </div>
            <div class="cards">
                <img class="otherIcon" src="./images/adminImages/otherIcon.svg" />
                <label class="cardLabel">Other</label>
            </div>
        </div>
    </form>
</body>
</html>

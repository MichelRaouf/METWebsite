<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InstructorHome.aspx.cs" Inherits="METWebsite.InstructorHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" href="./StyleSheets/InstructorHome.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <div class="header">

            <img class="logo" src="./images/topBarImages/GUC-logo 2.svg" />


            <img class="bar" src="./images/topBarImages/bar.svg" />


            <label class="label1">Faculty of Media Engineering & Technology</label>
             <button class="logout" runat="server" onserverclick="logOut_click">
                 <img class="logoutIcon" src="./images/InstructorHome/logout.svg" /><span id="logoutlabel">Log Out</span></></button>
        </div>
        <div id="Welcome_div" runat="server">
            
                 <label class="title" id="Welcome_label" runat="server" > Welcome!</label>
            <button id="viewProfile" runat="server" onserverclick="viewProfile_click">
            <img class="logoutIcon"  src="./images/InstructorHome/profile.svg" /> View Profile </button>
        </div>
        <div id="semesterTitleDiv">
            <label id="currentSemester" class="semesterTitle" runat="server"></label>
        </div>
        
        <table id="coursesTable" runat="server">
           
        </table>
    </form>
</body>
</html>

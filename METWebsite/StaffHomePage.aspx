<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StaffHomePage.aspx.cs" Inherits="METWebsite.temp1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Staff Home</title>
    <link rel="icon" href="./images/gucLogo.png"/>
    <link  rel="stylesheet" href="./StyleSheets/StaffHomePage.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="scrollable">

            <div class="header">
                <img class="logo" src="./images/topBarImages/GUC-logo 2.svg" />
                <img class="bar" src="./images/topBarImages/bar.svg"/>
                <label class="facultyLabel">Faculty of Media Engineering & Technology</label>
                <asp:Button ID="Button1" CssClass="login" runat="server" Text="Login" OnClick="toLogin" />
            </div>

            <div class="navbar">
            <div>
                <img src="images/staff/home.png" alt="Alternate Text" class="navImgHomeBookHeadphones" />
                <asp:Button Text="Home" runat="server" CssClass="navbtn" OnClick="toHome" />
            </div>
            <div>
                <img src="images/staff/book.png" alt="Alternate Text"class="navImgHomeBookHeadphones"/>
                <asp:Button Text="Courses" runat="server" CssClass="navbtn" OnClick="toCourses" />
            </div>
            <div>
                <img src="images/staff/group.png" alt="Alternate Text" class="navImgGroup"/>
                <asp:Button Text="Staff" runat="server" CssClass="navbtnin" OnClick="toStaff" />
            </div>
            <div >
                <img src="images/staff/headphones.png" alt="Alternate Text"class="navImgHomeBookHeadphones" />
                <asp:Button Text="Student Activity" runat="server" CssClass="navbtn" OnClick="toStudentActiv" />
            </div>
            <div >
                <img src="images/staff/graduated.png" alt="Alternate Text"class="navImgGrad" />
                <asp:Button Text="Alumni" runat="server" CssClass="navbtn" OnClick="toAlumni" />
            </div>
            <div >
                <img src="images/staff/info.png" alt="Info" class="navImgAbout" />
                 <asp:Button Text="About Us" runat="server" CssClass="navbtn" OnClick="toAbout" />
            </div> 
        </div>

        </div>

        <div class="meetLecturers">     
            <img class="lecturersImg" src="images/staff/class 1.png" />
            <a href="LecturersProfiles.aspx" class="imageTxt">  
                <span >Meet Your Lectures </span>
            </a>
        </div>
        <div class="meetTAs">
            <img  class="TAsImg" src="images/staff/TA .png" />
            <a href="TAsProfiles.aspx" class="imageTxt"> 
                <span >Meet Your TAs </span> 
            </a>
        </div>

    </form>
</body>
</html>

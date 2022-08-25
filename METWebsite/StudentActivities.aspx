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
            
                            <img class="logo" src="./images/topBarImages/GUC-logo 2.svg" />
           
           
                            <img class="bar" src="./images/topBarImages/bar.svg"/>
            
          
                            <label class="label1">Faculty of Media Engineering & Technology</label>
            
                    <asp:Button ID="Button1" CssClass="login" runat="server" Text="Login"  />
            
        </div>
        <div class="navbar">
            <div >
                <img src="images/topBarImages/home.svg" alt="Alternate Text" class="navimg" />
                                    <asp:Button Text="Home" runat="server" CssClass="navbtn" OnClick="toHome" />
            </div>
                <div>
                <img src="images/topBarImages/course.svg" alt="Alternate Text"class="navimg"/>
                                    <asp:Button Text="Courses" runat="server" CssClass="navbtn" OnClick="toCourses" />
            </div>
                <div>
                <img src="images/topBarImages/staff.svg" alt="Alternate Text" class="navimg"/>
                                    <asp:Button Text="Staff" runat="server" CssClass="navbtn" OnClick="toStaff" />
            </div>
                <div >
                <img src="images/topBarImages/studactive-red.svg" alt="Alternate Text"class="navimg3" />
                                    <asp:Button Text="Student Activity" runat="server" CssClass="navbtnin"  />
            </div>
                <div >
                <img src="images/topBarImages/Alumni.svg" alt="Alternate Text"class="navimg2" />
                                    <asp:Button Text="Alumni" runat="server" CssClass="navbtn" OnClick="toAlumni" />
            </div>
                <div >
                <img src="images/topBarImages/about.svg" alt="Alternate Text" class="navimg4" />
                                    <asp:Button Text="About Us" runat="server" CssClass="navbtn" OnClick="toAbout" />
            </div>
           
            
        </div>

        
        <div class="studentActivity">
            <div class="incuabator">
                 <asp:ImageButton runat="server" class="image" src="./images/stActivitiesPageImages/incubatorN.svg" OnClick="incubator" />
            </div>
            <div class="brain">
                 <asp:ImageButton runat="server" class="image" src="./images/stActivitiesPageImages/brainN.svg" OnClick="GucBrain" />
            </div>
            <div class="acm">
                  <asp:ImageButton runat="server" class="image" src="./images/stActivitiesPageImages/acmN.svg" OnClick="ACM" />
            </div>
            <div class="gdg">
                   <asp:ImageButton runat="server" class="image" src="./images/stActivitiesPageImages/gdgN.svg" OnClick="GDG" />
            </div>
            <div class="ieee">
                   <asp:ImageButton runat="server" class="image" src="./images/stActivitiesPageImages/ieeeN.svg" OnClick="IEEE" />
            </div>
            <div class="svy">
                   <asp:ImageButton runat="server" class="image" src="./images/stActivitiesPageImages/svyN.svg" OnClick="Savvy" />
            </div>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StaffHomePage.aspx.cs" Inherits="METWebsite.staffHomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link  rel="stylesheet" href="./StyleSheets/StaffHomePage.css"/>
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
                <img src="images/staff/home.png" alt="Alternate Text" class="navimg" />
                                    <asp:Button Text="Home" runat="server" CssClass="navbtn" OnClick="toHome" />
            </div>
                <div>
                <img src="images/staff/book.png" alt="Alternate Text"class="navimg"/>
                                    <asp:Button Text="Courses" runat="server" CssClass="navbtn" OnClick="toCourses" />
            </div>
                <div>
                <img src="images/staff/group.png" alt="Alternate Text" class="navimg2"/>
                                    <asp:Button Text="Staff" runat="server" CssClass="navbtn" OnClick="toStaff" />
            </div>
                <div >
                <img src="images/staff/headphones.png" alt="Alternate Text"class="navimg" />
                                    <asp:Button Text="Student Activity" runat="server" CssClass="navbtn" OnClick="toStudentActiv" />
            </div>
                <div >
                <img src="images/staff/graduated.png" alt="Alternate Text"class="navimg3" />
                                    <asp:Button Text="Alumni" runat="server" CssClass="navbtn" OnClick="toAlumni" />
            </div>
                <div >
                <img src="images/staff/info.png" alt="Info" class="navimg4" />
                                    <asp:Button Text="About Us" runat="server" CssClass="navbtn" OnClick="toAbout" />
            </div>
          
             
        </div>


          <div class="meetLecturers">
             
                <img class="lecturersImg" src="images/staff/class 1.png" style="width:100%" />
                  <span class="imageTxt">Meet Your Lectures </span>

            </div>
         <div class="meetTAs">
                <img  class="TAsImg" src="images/staff/TA .png" style="width:100%"/>
             <span class="imageTxt">Meet Your TAs </span>


            </div>
         
    </form>
</body>
</html>

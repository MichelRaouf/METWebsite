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
                <img src="images/topBarImages/home.svg" alt="Alternate Text" class="navimg" />
                                    <asp:Button Text="Home" runat="server" CssClass="navbtn" />
            </div>
                <div>
                <img src="images/topBarImages/course.svg" alt="Alternate Text"class="navimg2"/>
                                    <asp:Button Text="Courses" runat="server" CssClass="navbtn" />
            </div>
                <div>
                <img src="images/topBarImages/staff.svg" alt="Alternate Text" class="navimg"/>
                                    <asp:Button Text="Staff" runat="server" CssClass="navbtn" />
            </div>
                <div >
                <img src="images/topBarImages/studactiv.svg" alt="Alternate Text"class="navimg" />
                                    <asp:Button Text="Student Activity" runat="server" CssClass="navbtn" />
            </div>
                <div >
                <img src="images/topBarImages/alumni-red.svg" alt="Alternate Text"class="navimg3" />
                                    <asp:Button Text="Alumni" runat="server" CssClass="navbtn" />
            </div>
                <div >
                <img src="images/topBarImages/about.svg" alt="Alternate Text" class="navimg4" />
                                    <asp:Button Text="About Us" runat="server" CssClass="navbtn" />
            </div>
          
             
        </div>


          <div class="meetLecturers">
                <img src="images/staff/class 1.png" style="width:100%"/>

            </div>
         
    </form>
</body>
</html>

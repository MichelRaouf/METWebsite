<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Savvy.aspx.cs" Inherits="METWebsite.Savvy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="StyleSheets/Savvy.css" />
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
                <img src="images/topBarImages/course.svg" alt="Alternate Text"class="navimg"/>
                                    <asp:Button Text="Courses" runat="server" CssClass="navbtn" />
            </div>
                <div>
                <img src="images/topBarImages/staff.svg" alt="Alternate Text" class="navimg"/>
                                    <asp:Button Text="Staff" runat="server" CssClass="navbtn" />
            </div>
                <div >
                <img src="images/topBarImages/studactive-red.svg" alt="Alternate Text"class="navimg3" />
                                    <asp:Button Text="Student Activity" runat="server" CssClass="navbtn" />
            </div>
                <div >
                <img src="images/topBarImages/Alumni.svg" alt="Alternate Text"class="navimg2" />
                                    <asp:Button Text="Alumni" runat="server" CssClass="navbtn" />
            </div>
                <div >
                <img src="images/topBarImages/about.svg" alt="Alternate Text" class="navimg4" />
                                    <asp:Button Text="About Us" runat="server" CssClass="navbtn" />
            </div>
           
            
        </div>

        <div class="Header">
                <div>
                    <img class="Icon" src="./images/stActivitiesPageImages/SavvyIcon.svg" />
                </div>

                <div>
                    <label class="title">SAVVY</label>
                </div>

                <div class="typeDiv">
                    <label class="type">club</label>
                </div>
        </div>


        <div class="Info">
            <div>
                    <label class="subTitle">About</label>
                    <label class="titleInfo" > Savvy provides helpful, impactful, and educational Computer Science content for all.</label>
            </div>



            <div>
                    <label class="subTitle">MET Related Tracks</label>
                    <ul class"list" style="margin-top:0;font-family: 'Montserrat', sans-serif;font-size:2.1739130434782608vw;margin-left:0;">
                      <li class"item">Web Development</li>
                      <li class"item">Cyber Security</li>
                      <li class"item">Android Development</li>
                     </ul>
            </div>


                <div class="section" style="width:12%;">
                    <label class="subTitle">Socials</label>
                    <div class="socialIcons">
                        <a href="https://www.facebook.com/savvy.guc">
                            <img class="facebook" alt="facebook" src="./images/stActivitiesPageImages/facebook.svg" style="width:4.428341384863124vw ;height:4.428341384863124vw";>
                        </a>
                        
                    </div>
                </div>
            </div>
        

    </form>
</body>
</html>

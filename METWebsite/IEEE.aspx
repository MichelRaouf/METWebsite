<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IEEE.aspx.cs" Inherits="METWebsite.IEEE" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="StyleSheets/IEEE.css" />
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
                    <img class="Icon" src="./images/stActivitiesPageImages/IEEEIcon.svg" />
                </div>

                <div>
                    <label class="title">IEEE Student Branch</label>
                </div>

                <div class="typeDiv">
                    <label class="type">club</label>
                </div>
        </div>


        <div class="Info">
            <div>
                    <label class="subTitle">About</label>
                    <label class="titleInfo" > IEEE is a nonprofit global organization dedicated to advancing technology for the benefit of humanity. IEEE GUC students branch aims to maintain this identity by inspiring students to innovate for a better future through our events, workshops, sessions and educational activities.</label>
            </div>



            <div>
                    <label class="subTitle">MET Related Tracks</label>
                    <ul class"list" style="margin-top:0;font-family: 'Montserrat', sans-serif;font-size:2.1739130434782608vw;margin-left:0;">
                      <li class"item">Web Development</li>
                      <li class"item">Data Science</li>
                      <li class"item">Hardware</li>
                     </ul>
            </div>


                <div class="section" style="width:12%;">
                    <label class="subTitle">Socials</label>
                    <div class="socialIcons">
                        <a href="https://www.facebook.com/IEEE.GUC.SB/about/?ref=page_internal">
                            <img class="facebook" alt="facebook" src="./images/stActivitiesPageImages/facebook.svg" style="width:4.428341384863124vw ;height:4.428341384863124vw";>
                        </a>
                        <a class="instagram" href="https://www.instagram.com/ieeegucsb/">
                            <img alt="instagram" src="./images/stActivitiesPageImages/instagram.png" style="width:4.428341384863124vw ;height:4.428341384863124vw";>
                        </a>
                    </div>
                </div>
            </div>
        

    </form>
</body>
</html>

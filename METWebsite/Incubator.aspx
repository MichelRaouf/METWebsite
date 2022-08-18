<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Incubator.aspx.cs" Inherits="METWebsite.Incubator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="StyleSheets/Incubator.css" />
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

        <div class="IncubatorHeader">
                <div>
                    <img class="incubatorIcon" src="./images/stActivitiesPageImages/incubatorIcon.svg" />
                </div>

                <div>
                    <label class="title">INCUBATOR</label>
                </div>

                <div class="typeDiv">
                    <label class="type">club</label>
                </div>
        </div>


        <div class="IncubatorInfo">
            <div>
                    <label class="subTitle">About</label>
                    <label class="titleInfo" > Incubator is a student activity at the GUC.Their visionis to prepare every student to be future inventors and researchers. As the starnova lightens the sky by creating stars, we aim to lighten the world by their discoveries.</label>
            </div>



            <div>
                    <label class="subTitle">MET Related Tracks</label>
                    <ul class"list" style="margin-top:0;font-family: 'Montserrat', sans-serif;font-size:27px;margin-left:0;">
                      <li class"item">Software Development</li>
                      <li class"item">App Development</li>
                      <li class"item">R & D</li>
                     </ul>
            </div>


                <div class="section" style="width:12%;">
                    <label class="subTitle">Socials</label>
                    <div class="socialIcons">
                        <a href="https://www.facebook.com/IncubatorGUC/?ref=page_internal">
                            <img class="facebook" alt="facebook" src="./images/stActivitiesPageImages/facebook.svg" width="55" height="55">
                        </a>
                        <a class="instagram" href="https://www.instagram.com/incubator_guc/">
                            <img alt="instagram" src="./images/stActivitiesPageImages/instagram.png" style="width:55px ;height:55px";>
                        </a>
                    </div>
                </div>
            </div>
        

    </form>
</body>
</html>

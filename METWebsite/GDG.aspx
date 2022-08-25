<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GDG.aspx.cs" Inherits="METWebsite.GDG" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="StyleSheets/GDG.css" />
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
                                    <asp:Button Text="Home" runat="server" CssClass="navbtn" OnClick="toHome"/>
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
                                    <asp:Button Text="Student Activity" runat="server" CssClass="navbtn" OnClick="toStudentActiv" />
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

        <div class="Header">
                <div>
                    <img class="Icon" src="./images/stActivitiesPageImages/GDGIcon.svg" />
                </div>

                <div>
                    <label class="title">GDG</label>
                </div>

                <div class="typeDiv">
                    <label class="type">club</label>
                </div>
        </div>


        <div class="Info">
            <div>
                    <label class="subTitle">About</label>
                    <label class="titleInfo" > GDG GUC is part of the biggest technical communities in the world. They aim to establish interesting conferences, competitions, and many other creative activities.</label>
            </div>


            <div>
                    <label class="subTitle">MET Related Tracks</label>
                    <ul class"list" style="margin-top:0;font-family: 'Montserrat', sans-serif;font-size:2.1739130434782608vw;margin-left:0;">
                      <li class"item">Software</li>
                      <li class"item">Hardware</li>
                      <li class"item">App Development</li>
                     </ul>
            </div>


                <div class="section" style="width:12%;">
                    <label class="subTitle">Socials</label>
                    <div class="socialIcons">
                        <a href="https://www.facebook.com/GDG.GUC.sc">
                            <img class="facebook" alt="facebook" src="./images/stActivitiesPageImages/facebook.svg" style="width:4.428341384863124vw ;height:4.428341384863124vw";>
                        </a>
                        <a class="instagram" href="https://www.instagram.com/gdg.guc/?fbclid=IwAR33niFuVbxlHxFo1nqwM__PBD7DsYGS0s3ilCxzasoHx8az95-6n79e1cU">
                            <img alt="instagram" src="./images/stActivitiesPageImages/instagram.png" style="width:4.428341384863124vw ;height:4.428341384863124vw";>
                        </a>
                    </div>
                </div>
            </div>
        

    </form>
</body>
</html>

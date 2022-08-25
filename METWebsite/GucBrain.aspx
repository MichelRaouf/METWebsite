<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GucBrain.aspx.cs" Inherits="METWebsite.GucBrain" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="StyleSheets/GucBrain.css" />
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
                    <img class="Icon" src="./images/stActivitiesPageImages/BrainIcon.svg" />
                </div>

                <div>
                    <label class="title">GUC BRAIN</label>
                </div>

                <div class="typeDiv">
                    <label class="type">club</label>
                </div>
        </div>


        <div class="Info">
            <div>
                    <label class="subTitle">About</label>
                    <label class="titleInfo" > GUC Brain is an Artificial Intelligence Research club at the GUC. Their main activities are doing Machine Learning sessions for students and research in the field of AI. In addition, They organize ML related talks and events. </label>
            </div>



            <div>
                    <label class="subTitle">MET Related Tracks</label>
                    <ul class"list" style="margin-top:0;font-family: 'Montserrat', sans-serif;font-size:1.9vw;margin-left:0;">
                      <li class"item">Machine Learning</li>
                      <li class"item">Deep Learning</li>
                      <li class"item">Introduction to AI</li>
                     </ul>
            </div>


                <div class="section" style="width:12%;">
                    <label class="subTitle">Socials</label>
                    <div class="socialIcons">
                        <a href="https://www.facebook.com/GUCBrains/">
                            <img class="facebook" alt="facebook" src="./images/stActivitiesPageImages/facebook.svg" style="width:4.428341384863124vw ;height:4.428341384863124vw";>
                        </a>
                        <a class="instagram" href="https://www.instagram.com/gucbrain/">
                            <img alt="instagram" src="./images/stActivitiesPageImages/instagram.png" style="width:4.428341384863124vw ;height:4.428341384863124vw";>
                        </a>
                    </div>
                </div>
            </div>
        

    </form>
</body>
</html>

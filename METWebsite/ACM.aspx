<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ACM.aspx.cs" Inherits="METWebsite.ACM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="StyleSheets/ACM.css" />
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
                    <img class="Icon" src="./images/stActivitiesPageImages/ACMIcon.svg" />
                </div>

                <div>
                    <label class="title">ACM</label>
                </div>

                <div class="typeDiv">
                    <label class="type">community</label>
                </div>
        </div>


        <div class="Info">
            <div>
                    <label class="subTitle">About</label>
                    <label class="titleInfo" > ACM is the ICPC community at the German University in Cairo. International Collegiate Programming Contest (ICPC) is an annual multi-tiered competitive programming competition among the best universities of the world.</label>
            </div>

            <div>
                    <label class="subTitle">MET Related Tracks</label>
                    <ul class"list" style="margin-top:0;font-family: 'Montserrat', sans-serif;font-size:1.9vw;margin-left:0;">
                      <li class"item">Student Plan</li>
                      <li class"item">Specialist Plan</li>
                     </ul>
            </div>


                <div class="section" style="width:12%;">
                    <label class="subTitle">Socials</label>
                    <div class="socialIcons">
                        <a href="https://www.facebook.com/acm.guc.community/about/?ref=page_internal">
                            <img class="facebook" alt="facebook" src="./images/stActivitiesPageImages/facebook.svg" style="width:4.428341384863124vw ;height:4.428341384863124vw";>
                        </a>
                    </div>
                </div>
           </div>

    </form>
</body>
</html>

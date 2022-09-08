﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentActivityProfile.aspx.cs" Inherits="METWebsite.ACM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="StyleSheets/StudentActivityProfile.css" />
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

        <div id="Header" class="Header"  runat="server">
                <div id="iconDiv" runat="server">
                    
                </div>

                <div id="titleDiv" runat="server">
                    
                </div>

                <div class="typeDiv" id="typeDiv" runat="server">
                    
                </div>
        </div>


        <div class="Info">
            <div id="aboutDiv" runat="server">
                    <label class="subTitle" id="subTitleAbout" runat="server">About</label>
            </div>

            <div id="listDiv" runat="server">
                    <label class="subTitle" id="subTitleTracks" runat="server">MET Related Tracks</label>
            </div>

            <div class="section" style="width:12%;">
                <label class="subTitle" id="subTitleSocials" runat="server">Socials</label>
                <div class="socialIcons" id="socialIcons" runat="server">
                        
                </div>
           </div>
        </div>

    </form>
</body>
</html>

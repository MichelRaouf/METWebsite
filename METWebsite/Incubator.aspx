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
            <div>
                <img class="logo" src="./images/stActivitiesPageImages/GUC-logo 2.svg" />
            </div>
            <div>
                <img class="bar" src="./images/stActivitiesPageImages/bar.svg" />
            </div>
            <div>
                <label class="label1">Faculty of Media Engineering & Technology</label>
            </div>
            <div>
                <asp:Button ID="Button1" CssClass="login" runat="server" Text="Login"/>
            </div>
        </div>


        <div class="navbar">
            <div class="home">
                <img src="./images/stActivitiesPageImages/home.svg" />
                <asp:Button ID="Button4" CssClass="navbtn" runat="server" Text="Home" />
            </div>

            <div class="courses">
                <img src="./images/stActivitiesPageImages/course.svg" />
                <asp:Button ID="Button5" CssClass="navbtn" runat="server" Text="Courses" />
            </div>

            <div class="staff">
                <img src="./images/stActivitiesPageImages/staff.svg" />
                <asp:Button ID="Button3" CssClass="navbtn" runat="server" Text="Staff" />
            </div>

            <div class="stud">
                <img src="./images/stActivitiesPageImages/studentActivityClicked.svg" />
                <asp:Button ID="Button6" CssClass="navbtn" runat="server" Text="Student Activities" />
            </div>

            <div class="alumni">
                <img src="./images/stActivitiesPageImages/alumni.svg" />
                <asp:Button ID="Button7" CssClass="navbtn" runat="server" Text="Alumni" />
            </div>

            <div class="about">
                <img src="./images/stActivitiesPageImages/about.svg" />
                <asp:Button ID="Button8" CssClass="navbtn" runat="server" Text="About Us" />
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

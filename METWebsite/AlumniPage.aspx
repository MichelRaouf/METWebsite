<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AlumniPage.aspx.cs" Inherits="METWebsite.alumniPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link  rel="stylesheet" href="./StyleSheets/Alumni.css"/>
</head>
<body>
    <form id="form1" runat="server">
         <div class="header">
            <div>
                            <img class="logo" src="./images/alumniPageImages/GUC-logo 2.svg" />

            </div>
            <div>
                            <img class="SeparatingBar" src="./images/alumniPageImages/bar.svg"/>

            </div>
            <div>
                            <label class="label1">Faculty of Media Engineering & Technology</label>

            </div>
            <div>
                             <asp:Button ID="Button1" CssClass="login" runat="server" Text="Login"  />

            </div>
        </div>
        <div class="navbar">
            <div class="home">
                <img src="./images/alumniPageImages/homeclicked.svg" style="width:25px;height:25px;margin-right:1px" />
                <asp:Button ID="Button4" CssClass="navbtn" runat="server" Text="Home"   />

            </div>
            <div class="courses">
                <img src="./images/alumniPageImages/course.svg" style="width:25px;height:25px;margin-right:1px" />
                <asp:Button ID="Button5" CssClass="navbtn" runat="server" Text="Courses"   />

            </div>
            <div class="staff">
                <img src="./images/alumniPageImages/staff.svg" style="width:25px;height:25px;margin-right:1px" />
                <asp:Button ID="Button3" CssClass="navbtn" runat="server" Text="Staff"   />

            </div>
            <div class="stud">
                <img src="./images/alumniPageImages/studactiv.svg" style="width:25px;height:25px;margin-right:1px" />
                <asp:Button ID="Button6" CssClass="navbtn" runat="server" Text="Student Activities"   />

            </div>
            <div class="alumni">
                <img src="./images/alumniPageImages/alumni.svg" style="width:25px;height:25px;margin-right:1px" />
                <asp:Button ID="Button7" CssClass="navbtn" runat="server" Text="Alumni"   />

            </div>
            <div class="about">
                <img src="./images/alumniPageImages/about.svg"  style="width:25px;height:25px;margin-right:1px" />
                <asp:Button ID="Button8" CssClass="navbtn" runat="server" Text="About Us"   />

            </div>

        </div>




        <div class="honors"> 
            <div style="width:100%;display:flex;flex-direction:row;justify-content:center;margin-top:-30px">
            <h4 class="honorsTitle">#we_<span style="font-size:58px;">GUC</span>inas</h4>
                </div>

            <div class="honorsProfile">
                <img src="images/alumniPageImages/image 6.png" class="img"/>
                <div class="profileTextContainer">
                    <h4 class="honorName"> Ahmed Sabah</h4>
                    <p class="honorParagraph">Co-Founder & CTO  of Swvl Forbes Middle East ARAB 30 UNDER 30: Class of 2018 Category of Consumer Technology.</p>
                </div> 
            </div>

            <img src="images/alumniPageImages/Rectangle 28.svg" class="spereatingBar"/>

             <div class="honorsProfile">
                <img src="images/alumniPageImages/Hayat.png" class="img"/>
                <div class="profileTextContainer">
                    <label class="honorName"> Hayat Mohamed </label>
                    <p class="honorParagraph">Talented Worldwide Music Composer Won  the Young Talent Award Game Music composition competition in Hamburg, Germany, 2016.</p>
                </div>               
            </div>

            <img src="images/alumniPageImages/Rectangle 28.svg" class="spereatingBar"/>

             <div class="honorsProfile">
                <img src="images/alumniPageImages/Hussien.png" class="img"/>
                <div class="profileTextContainer">
                    <h4 class="honorName"> Hussein Adel</h4>
                    <p class="honorParagraph">IBM Austria Choice Award 2014 & 2016. Honored by The President Abdel Fattah El Sisi at The National Youth Conference 2016</p>
                </div>    
            </div>

             <div class="honorsProfile">
                <img src="images/alumniPageImages/Christine.png" class="img"/>
                <div class="profileTextContainer">
                    <h4 class="honorName"> Christine Farahat</h4>
                    <p class="honorParagraph">Co-Founder & CTO  of Swvl Forbes Middle East ARAB 30 UNDER 30: Class of 2018 Category of Consumer Technology</p>
                </div>
            </div>

            <img src="images/alumniPageImages/Rectangle 28.svg" class="spereatingBar"/>

             <div class="honorsProfile">
                <img src="images/alumniPageImages/Youmna.png" class="img"/>
                <div class="profileTextContainer">
                    <h4 class="honorName">Yomna Abdelrahman</h4>
                    <p class="honorParagraph">Talented Worldwide Music Composer Won  the Young Talent Award Game Music composition competition in Hamburg, Germany, 2016</p>
                </div>
            </div>

         
            
          

            


        </div>

       
    </form>
</body>
</html>

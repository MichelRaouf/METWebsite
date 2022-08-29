<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LecturersProfiles.aspx.cs" Inherits="METWebsite.LecturersProfiles" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link  rel="stylesheet" href="./StyleSheets/LecturersProfiles.css"/>
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
                <img src="images/staff/home.png" alt="Alternate Text" class="navimg" />
                                    <asp:Button Text="Home" runat="server" CssClass="navbtn" OnClick="toHome" />
            </div>
                <div>
                <img src="images/staff/book.png" alt="Alternate Text"class="navimg"/>
                                    <asp:Button Text="Courses" runat="server" CssClass="navbtn" OnClick="toCourses" />
            </div>
                <div>
                <img src="images/staff/group.png" alt="Alternate Text" class="navimg2"/>
                                    <asp:Button Text="Staff" runat="server" CssClass="navbtn" OnClick="toStaff" />
            </div>
                <div >
                <img src="images/staff/headphones.png" alt="Alternate Text"class="navimg" />
                                    <asp:Button Text="Student Activity" runat="server" CssClass="navbtn" OnClick="toStudentActiv" />
            </div>
                <div >
                <img src="images/staff/graduated.png" alt="Alternate Text"class="navimg3"  />
                                    <asp:Button Text="Alumni" runat="server" CssClass="navbtn" OnClick="toAlumni" />
            </div>
                <div >
                <img src="images/staff/info.png" alt="Info" class="navimg4" />
                                    <asp:Button Text="About Us" runat="server" CssClass="navbtn" OnClick="toAbout" />
            </div>
             
        </div>


        <div class="profileContainer" id="deandiv" runat="server" >

            <div class="hierarchyTitle">DEAN <div><img src="images/staff/search.png" style="width:1.6vw;height:1.4vw;"/><input type="text" placeholder="Search.."/></div> </div>

              <%--<div class="profileData">

                <img src="images/staff/Haytham.png" style="width:16.276041666666668vw"/><br />
                    <div class="Name"> Assoc. Prof. Haytham Ismail</div>

                    <div class="mailContainer">
                        <img src="images/staff/email.png"/>
                        haytham.imail@guc.edu.eg
                    </div>

                    <div class="officeContainer">
                        <img src="images/staff/workplace.png" />
                        C7.203
                    </div>

                    <asp:Button ID="Button3" CssClass="viewProfile" runat="server" Text="View Profile"  />

            </div>--%>
 

        </div>



<div style="width:100%;height:fit-content;display:flex;flex-direction:row;justify-content:center;margin-top:2.5vw;margin-bottom:3vw"><div class="separatingBar2"></div></div>



         <div class="profileContainer" >

            <div class="hierarchyTitle">VICE DEANS</div>

              <div class="profileData">

                <img src="images/staff/AmrElmougy.png" style="width:16.276041666666668vw"/><br />
                    <div class="Name"> Assoc. Prof. Haytham Ismail</div>

                    <div class="mailContainer">
                        <img src="images/staff/email.png"/>
                        haytham.imail@guc.edu.eg
                    </div>

                    <div class="officeContainer">
                        <img src="images/staff/workplace.png" />
                        C7.203
                    </div>

                    <asp:Button ID="Button4" CssClass="viewProfile" runat="server" Text="View Profile"  />

            </div>


             <div class="profileData">

                <img src="images/staff/Mervat.png" style="width:16.276041666666668vw"/><br />
                    <div class="Name"> Assoc. Prof. Haytham Ismail</div>

                    <div class="mailContainer">
                        <img src="images/staff/email.png"/>
                        haytham.imail@guc.edu.eg
                    </div>

                    <div class="officeContainer">
                        <img src="images/staff/workplace.png" />
                        C7.203
                    </div>

                    <asp:Button ID="Button5" CssClass="viewProfile" runat="server" Text="View Profile"  />

            </div>


        </div>

<div style="width:100%;height:fit-content;display:flex;flex-direction:row;justify-content:center;margin-top:2.5vw;margin-bottom:3vw"><div class="separatingBar2"></div></div>

          
         <div class="profileContainer" >

            <div class="hierarchyTitle">PROFESSORS</div>

              <div class="profileData">

                <img src="images/staff/Soubra.png" style="width:16.276041666666668vw"/><br />
                    <div class="Name"> Assoc. Prof. Haytham Ismail</div>

                    <div class="mailContainer">
                        <img src="images/staff/email.png"/>
                        haytham.imail@guc.edu.eg
                    </div>

                    <div class="officeContainer">
                        <img src="images/staff/workplace.png" />
                        C7.203
                    </div>

                    <asp:Button ID="Button2" CssClass="viewProfile" runat="server" Text="View Profile"  />

            </div>


             <div class="profileData">

                <img src="images/staff/Remoon.png" style="width:16.276041666666668vw"/><br />
                    <div class="Name"> Assoc. Prof. Haytham Ismail</div>

                    <div class="mailContainer">
                        <img src="images/staff/email.png"/>
                        haytham.imail@guc.edu.eg
                    </div>

                    <div class="officeContainer">
                        <img src="images/staff/workplace.png" />
                        C7.203
                    </div>

                    <asp:Button ID="Button6" CssClass="viewProfile" runat="server" Text="View Profile"  />

            </div>


            <div class="profileData">

                <img src="images/staff/MohammedSalem.png" style="width:16.276041666666668vw"/><br />
                    <div class="Name"> Assoc. Prof. Haytham Ismail</div>

                    <div class="mailContainer">
                        <img src="images/staff/email.png"/>
                        haytham.imail@guc.edu.eg
                    </div>

                    <div class="officeContainer">
                        <img src="images/staff/workplace.png" />
                        C7.203
                    </div>

                    <asp:Button ID="Button7" CssClass="viewProfile" runat="server" Text="View Profile"  />

            </div>


            <div class="profileData">

                <img src="images/staff/Seif.png" style="width:16.276041666666668vw"/><br />
                    <div class="Name"> Assoc. Prof. Haytham Ismail</div>

                    <div class="mailContainer">
                        <img src="images/staff/email.png"/>
                        haytham.imail@guc.edu.eg
                    </div>

                    <div class="officeContainer">
                        <img src="images/staff/workplace.png" />
                        C7.203
                    </div>

                    <asp:Button ID="Button8" CssClass="viewProfile" runat="server" Text="View Profile"  />

            </div>


        </div>



<div style="width:100%;height:fit-content;display:flex;flex-direction:row;justify-content:center;margin-top:2.5vw;margin-bottom:3vw"><div class="separatingBar2"></div></div>


          
         <div class="profileContainer" >

            <div class="hierarchyTitle">LECTURERS</div>

              <div class="profileData">

                <img src="images/staff/Hesham.png" style="width:16.276041666666668vw"/><br />
                    <div class="Name"> Assoc. Prof. Haytham Ismail</div>

                    <div class="mailContainer">
                        <img src="images/staff/email.png"/>
                        haytham.imail@guc.edu.eg
                    </div>

                    <div class="officeContainer">
                        <img src="images/staff/workplace.png" />
                        C7.203
                    </div>

                    <asp:Button ID="Button9" CssClass="viewProfile" runat="server" Text="View Profile"  />

            </div>


             <div class="profileData">

                <img src="images/staff/Wael.png" style="width:16.276041666666668vw"/><br />
                    <div class="Name"> Assoc. Prof. Haytham Ismail</div>

                    <div class="mailContainer">
                        <img src="images/staff/email.png"/>
                        haytham.imail@guc.edu.eg
                    </div>

                    <div class="officeContainer">
                        <img src="images/staff/workplace.png" />
                        C7.203
                    </div>

                    <asp:Button ID="Button10" CssClass="viewProfile" runat="server" Text="View Profile"  />

            </div>


            <div class="profileData">

                <img src="images/staff/Milad.png" style="width:16.276041666666668vw"/><br />
                    <div class="Name"> Assoc. Prof. Haytham Ismail</div>

                    <div class="mailContainer">
                        <img src="images/staff/email.png"/>
                        haytham.imail@guc.edu.eg
                    </div>

                    <div class="officeContainer">
                        <img src="images/staff/workplace.png" />
                        C7.203
                    </div>

                    <asp:Button ID="Button11" CssClass="viewProfile" runat="server" Text="View Profile"  />

            </div>


           


        </div>
               




    </form>
</body>
</html>

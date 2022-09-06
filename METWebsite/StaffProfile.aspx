<!D<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StaffProfile.aspx.cs" Inherits="METWebsite.StaffProfile" %>
OCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="StyleSheets/StaffProfile.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">

            <img class="logo" src="./images/topBarImages/GUC-logo 2.svg"/>


            <img class="bar" src="./images/topBarImages/bar.svg" />


            <label class="label1">Faculty of Media Engineering & Technology</label>

            <asp:Button ID="Button1" CssClass="login" runat="server" Text="Login" />

        </div>
        <div class="navbar">
            <div>
                <img src="images/topBarImages/home.svg" alt="Alternate Text" class="navimg" />
                <asp:Button Text="Home" runat="server" CssClass="navbtn" OnClick="toHome" />
            </div>
            <div>
                <img src="images/topBarImages/course.svg" alt="Alternate Text" class="navimg" />
                <asp:Button Text="Courses" runat="server" CssClass="navbtn" OnClick="toCourses" />
            </div>
            <div>
                <img src="images/topBarImages/staff-red.svg" alt="Alternate Text" class="navimg3" />
                <asp:Button Text="Staff" runat="server" CssClass="navbtn" OnClick="toStaff" />
            </div>
            <div>
                <img src="images/topBarImages/studactiv.svg" alt="Alternate Text" class="navimg" />
                <asp:Button Text="Student Activity" runat="server" CssClass="navbtn" OnClick="toStudentActiv" />
            </div>
            <div>
                <img src="images/topBarImages/Alumni.svg" alt="Alternate Text" class="navimg2" />
                <asp:Button Text="Alumni" runat="server" CssClass="navbtn" OnClick="toAlumni" />
            </div>
            <div>
                <img src="images/topBarImages/about.svg" alt="Alternate Text" class="navimg4" />
                <asp:Button Text="About Us" runat="server" CssClass="navbtn" OnClick="toAbout" />
            </div>
        </div>

        <div class="ProfileHeader" id="ProfileHeader" runat="server">
 
        </div>

           <div></div>
        <div id="PersonalInfo"></div>

        <div id="navbar2" class="navbar2">
            <div class="AboutNav">
                <asp:Label Text="Personal Info" runat="server" onClick="funcPersonalInfo()"/>
            </div>
            <div class="AboutNav">
                <asp:Label Text="Teaching" runat="server" onClick="funcTeaching()" />
            </div>
            <div class="AboutNav">
                <asp:Label Text="Research" runat="server" onClick="funcResearch()" />
            </div>
            <div class="AboutNav">
                <asp:Label Text="Publication" runat="server" onClick="funcPublications()" />
            </div>
            <div class="AboutNav">
                <asp:Label Text="Activities" runat="server" onClick="funcActivities()" />
            </div>
        </div>

        <script>
            document.documentElement.style.scrollBehavior = "smooth";

            function funcPersonalInfo() {
                const element = document.getElementById("PersonalInfo");
                element.scrollIntoView();

            }
            function funcTeaching() {
                const element = document.getElementById("Teaching");
                element.scrollIntoView();
            }
            function funcResearch() {
                const element = document.getElementById("Research");
                element.scrollIntoView();
            }
            function funcPublications() {
                const element = document.getElementById("Publications");
                element.scrollIntoView();
            }
            function funcActivities() {
                const element = document.getElementById("Activities");
                element.scrollIntoView();
            };
        </script>

        
        <section id="PersonalInfo" class="PersonalInfo" runat ="server">
             <div class="infoTitleDiv">
                <label class="infoTitle">Personal Info</label>
            </div>
 
        </section>\

        <section id="educationSection" class="Education" runat="server">
            <div class="infoSubTitleDiv">
                <label class="infoSubTitle">Education</label>
            </div>

        </section>


        <section id="employmentSection" class="Employment" runat="server">
          <div class="infoSubTitleDiv">
                <label class="infoSubTitle">Employment</label>
            </div>

            <span id="space"></span>
            <span id="more" runat="server">

            </span>
            <script>
                document.documentElement.style.scrollBehavior = "smooth";
                function myFunction() {
                    var space = document.getElementById("space");
                    var moreText = document.getElementById("more");
                    var btnText = document.getElementById("myBtn");

                    if (space.style.display === "none") {
                        space.style.display = "inline";
                        btnText.value = "Show More";
                        moreText.style.display = "none";
                    } else {
                        space.style.display = "none";
                        btnText.value = "Show Less";
                        moreText.style.display = "inline";
                    }
                }

                function myFunction2() {
                    var space = document.getElementById("space2");
                    var moreText = document.getElementById("more2");
                    var btnText = document.getElementById("mybtn2");

                    if (space.style.display === "none") {
                        space.style.display = "inline";
                        btnText.value = "Show More";
                        moreText.style.display = "none";
                    } else {
                        space.style.display = "none";
                        btnText.value = "Show Less";
                        moreText.style.display = "inline";
                    }
                }

                function myFunction3() {
                    var space = document.getElementById("space3");
                    var moreText = document.getElementById("more3");
                    var btnText = document.getElementById("mybtn3");

                    if (space.style.display === "none") {
                        space.style.display = "inline";
                        btnText.value = "Show More";
                        moreText.style.display = "none";
                    } else {
                        space.style.display = "none";
                        btnText.value = "Show Less";
                        moreText.style.display = "inline";
                    }
                }

                function myFunction4() {
                    var space = document.getElementById("space4");
                    var moreText = document.getElementById("more4");
                    var btnText = document.getElementById("mybtn4");

                    if (space.style.display === "none") {
                        space.style.display = "inline";
                        btnText.value = "Show More";
                        moreText.style.display = "none";
                    } else {
                        space.style.display = "none";
                        btnText.value = "Show Less";
                        moreText.style.display = "inline";
                    }
                }

                function myFunction5() {
                    var space = document.getElementById("space5");
                    var moreText = document.getElementById("more5");
                    var btnText = document.getElementById("mybtn5");

                    if (space.style.display === "none") {
                        space.style.display = "inline";
                        btnText.value = "Show More";
                        moreText.style.display = "none";
                    } else {
                        space.style.display = "none";
                        btnText.value = "Show Less";
                        moreText.style.display = "inline";
                    }
                }
            </script>

            <div id="buttonMore1" class="showMoreDiv" runat="server">
                <asp:Button ID="myBtn" CssClass="showMore" runat="server" Text="Show More" OnClientClick="myFunction();return false;"/>
            </div>  
            <div class="x" id="Teaching"></div>
            
        </section>
        <br />
        <br />
        <div  class="gradientbar" >
                <img class="center" src="./images/profile/gradientBar.svg" />
            </div>
        
        <section  class="Teaching" id ="TeachingSection" runat="server">
            <div class="infoTitleDiv">
                <label class="infoTitle">Teaching</label>
            </div>



            <span id="space2"></span>
            <span id="more2" runat="server">
   <!--             <div class="section">
                <div class="dateDiv">
                    <label class="date">September, 2005 to June, 2011</label>
                </div>
                <div>
                    <div class="vertical"></div>
                </div>

                <div class="list">
                    <div class="itemDiv">
                        <ul style="margin-top: 0;font-family: 'Montserrat', sans-serif; font-size: 1.3687600644122384vw; font-weight: 600; margin-left: 0;">
                            <li class"item">(MATH 203) Mathematics I</li>
                        </ul>  
                     </div>
                     <div class="itemDiv">
                        <ul style="margin-top: 0; font-family: 'Montserrat', sans-serif; font-size: 1.3687600644122384vw; font-weight: 600; margin-left: 0;">
                            <li class"item">(MATH 203) Mathematics I</li>
                        </ul>
                     </div>
                    <div class="itemDiv">
                        <ul style="margin-top: 0; font-family: 'Montserrat', sans-serif; font-size: 1.3687600644122384vw; font-weight: 600; margin-left: 0;">
                            <li class"item">(MATH 203) Mathematics I</li>
                        </ul>
                    </div>
                    <div style="padding-top: 0.8051529790660226vw;">
                        <hr style="height: 0.024154589371980676vw; border-width: 0; color: gray; background-color: gray; opacity: 0.3">
                    </div>
                </div>
            </div>  -->
            </span>

            
            <div id="buttonTeach" class="showMoreDiv" runat="server" >
                <asp:Button ID="mybtn2" CssClass="showMore" runat="server" Text="Show More" OnClientClick="myFunction2();return false;" />
            </div>
            <div class="x" id="Research"></div>
           
        </section>
        <br />
        <br />
         <div class="gradientbar" >
                <img class="center" src="./images/profile/gradientBar.svg" />
            </div>
       
        <section  class="Research">
            <div class="infoTitleDiv">
                <label class="infoTitle">Research</label>
            </div>
            <div class="infoSubTitleDiv">
                <label class="infoSubTitle">Research Interests</label>
            </div>
            <div  class="section">
                <div class="dateDiv">
                    
                </div>
                <div>
                    <div class="vertical" style="height:9.07258064516129vw;"></div>
                </div>

                <div class="listDiv">
                    <ul  class="list" style="margin-top:0;margin-bottom:0;font-family: 'Montserrat', sans-serif;font-size:1.3687600644122384vw;font-weight:500;margin-left:0;">
                      <div id ="research_interests" runat ="server" > 
            
                      </div>
                    
                     </ul>
                </div>
            </div>
        </section>

        <section   id="LinksSection" runat="server" >
            <div class="infoSubTitleDiv">
                <label class="infoSubTitle">Research Links</label>
            </div>
             
     
            <span id="space3"></span>
            <span id="more3" runat ="server">
             
            </span>

            <div id="buttonMore3"  runat= "server" class="showMoreDiv" >
                <asp:Button ID="mybtn3" CssClass="showMore" runat="server" Text="Show More" OnClientClick="myFunction3();return false;" />
            </div>
            <div class="x" id="Publications"></div>
           
        </section>
         <br />
        <br />
         <div class="gradientbar">
                <img class="center" src="./images/profile/gradientBar.svg" />
            </div>
       



        <section id="PublicationSection" runat="server"   class ="Publications">
            <div class="infoTitleDiv">
                <label class="infoTitle">Publications</label>
            </div>
     

            <span id="space4"></span>
            <span id="more4" runat ="server">
        
            </span>

            <div id="buttonMore4" runat="server"  class="showMoreDiv" >
                <asp:Button ID="mybtn4" CssClass="showMore" runat="server" Text="Show More" OnClientClick="myFunction4();return false;" />
            </div>
            <div class="x" id="Activities"></div>
        
        </section>
        <br />
        <br />
            <div class="gradientbar" >
                <img class="center" src="./images/profile/gradientBar.svg" />
            </div>


        <section  id="ActivitiesSec" runat="server"  class="Activities">
            <div class="infoTitleDiv">
                <label class="infoTitle">Activities</label>
            </div>


  

            <span id="space5"></span>
            <span id="more5" runat="server">
              
            </span>
            <div class="showMoreDiv" id ="buttonMore5" runat="server">
                <asp:Button ID="mybtn5" CssClass="showMore" runat="server" Text="Show More" OnClientClick="myFunction5();return false;" />
            </div>
            
        </section>
    </form>
</body>
</html>

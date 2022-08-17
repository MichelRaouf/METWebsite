<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="METWebsite.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MET Website</title>
    <link rel="icon" href="./images/gucLogo.png">
    <link  rel="stylesheet" href="./StyleSheets/HomeStyles.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <div class="gucLogoDiv">
                <img class="gucLogo" src="./images/homePageImages/gucFullLogo.svg"/>
            </div>
            <div class="verticalBarDiv">
                <img class="verticalBar" src="./images/homePageImages/verticalBar.svg"/>
            </div>
            <div class="labelDiv">
                <label class="facultyLabel">
                    Faculty of Media Engineering & Technology
                </label>
            </div>
            <div class="loginDiv">
                <asp:Button ID="loginButton" CssClass="login" runat="server" Text="Login" OnClick="loginButton_Click"/>
            </div>
        </div>

        <div class="navBar">
            <div>
                <img href="HomePage.aspx" class="navIcons" src="./images/homePageImages/inHome.svg"/>
                <asp:Button ID="homeButton" CssClass="navButtonIn" runat="server" Text="Home" OnClick="homeButton_Click"/>
            </div>
            <div>
                <img href="CoursesHomePage.aspx" class="navIcons" src="./images/homePageImages/courses.svg"/>
                <asp:Button ID="coursesButton" CssClass="navButton" runat="server" Text="Courses" OnClick="coursesButton_Click"/>
            </div>
            <div>
                <img href="StaffHomePage.aspx" class="navIcons" src="./images/homePageImages/staff.svg"/>
                <asp:Button ID="staffButton" CssClass="navButton" runat="server" Text="Staff" OnClick="staffButton_Click"/>
            </div>
            <div>
                <img href="StActivitiesHomePage.aspx" class="navIcons" src="./images/homePageImages/studentActivities.svg"/>
                <asp:Button ID="studentActivitiesButton" CssClass="navButton" runat="server" Text="Student Activities" OnClick="studentActivitiesButton_Click"/>
            </div>
            <div>
                <img href="AlumniPage.aspx" class="navIcons" src="./images/homePageImages/alumni.svg"/>
                <asp:Button ID="alumniButton" CssClass="navButton" runat="server" Text="Alumni" OnClick="alumniButton_Click"/>
            </div>
            <div>
                <img href="AboutUsPage.aspx" class="navIcons" src="./images/homePageImages/aboutUs.svg"/>
                <asp:Button ID="aboutUsButton" CssClass="navButton" runat="server" Text="About Us" OnClick="aboutUsButton_Click"/>
            </div>
        </div>

        <div class="graduationImageDiv">
            <img class="graduationImage" src="./images/homePageImages/graduation.svg"/>
        </div>

        <div class="aboutParagraphDiv">
            <label class="aboutParagraph">
                Media Engineering and Technology aims at the evolving field of nearly all aspects of
                information and multimedia processing. The study program in Media Engineering and Technology
                rests on the same fundamentals as for Information Technology, i.e., mathematics,
                physics, electronics, computer science, communications, and their related methodologies,
                with specialization and extension to media technologies such as voice, audio and video,
                multimedia, media design, information retrieval and representation concepts.
            </label>
        </div>

        <div class="readMoreDiv">
            <asp:Button ID="readMoreButton" CssClass="readMore" runat="server" Text="Read More" OnClick="readMoreButton_Click"/>
        </div>

        <div class="latestNewsDiv">
            <div class="latestNewsLabel">
                <label>
                    Latest News
                </label>
            </div>
            <div class="latestNewsElements">

            </div>
        </div>

        <div class="pathsDiv">
            <div class="pathsTextDiv">
                <div class="pathsLabel">
                    <label>
                        Paths for Every Passion
                    </label>
                </div>
                <div class="pathsParagraph">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do e cupidatat non
                    proident, sunt in.amet, consectetur adipiscing elit, sed do e cupidatat non
                    proident, sunt in.
                </div>
                <div class="pathsButton">
                    <asp:Button ID="viewCoursesButton" CssClass="viewCourses" runat="server" Text="View Courses" OnClick="viewCoursesButton_Click"/>
                </div>
            </div>
            <div class="pathsPhotoDiv">
                <img class="pathsPhoto" src="./images/homePageImages/pathsPhoto.svg"/>
            </div>
        </div>
<div class="wegucians">
            <div class="redlabel">
                <label class="gucianlabel">#We_Gucians</label>
        </div>
            <div class="gucianinfo">
                <div>
                <img src="./images/person1.svg"/>
                <div class="alumniinfo">
                <label class="name">Ahmed Sabah</label>
                <br />
                <label class="description"> Co-Founder & CTO  of Swvl Forbes Middle East ARAB 30 UNDER 30: Class of 2018 Category of Consumer Technology</label>

                </div>
            </div>
            <div>
                <img src="./images/verticalbar.svg" />
            </div>
            <div>
                <img src="./images/person1.svg"/>
<div class="alumniinfo">
                <label class="name">Ahmed Sabah</label>
                <br />
                <label class="description"> Co-Founder & CTO  of Swvl Forbes Middle East ARAB 30 UNDER 30: Class of 2018 Category of Consumer Technology</label>

                </div>              
                
            </div>
            <div>
                <img src="./images/verticalbar.svg" />
            </div>
            <div>
                <img src="./images/person1.svg"/>
                <div class="alumniinfo">
                <label class="name">Ahmed Sabah</label>
                <br />
                <label class="description"> Co-Founder & CTO  of Swvl Forbes Middle East ARAB 30 UNDER 30: Class of 2018 Category of Consumer Technology</label>

                </div>
            </div>

            </div>
        
            <div>
                <asp:button id="button10" cssclass="showmore" runat="server" text="Show More"   />
            </div>

        </div>
        <div class="ContactUs">
           <div class="contacttitle">
               <label class="contactustext">Contact Us</label>
           </div>
            <div class="contactInfo" >
               <div class="hotlines">
                  <div class ="Iconandtitle">
                      <img class="contactIcons" src="./images/homePageImages/callLogo.svg"/>
                      <label class="contactTitlesText">
                          GUC Hotlines:
                      </label>
                  </div>
                   <div class="info">
                       <label class="contactText">
                           16482
                       </label>
                       <br />
                       <br />
                       <label class="contactTitlesText">
                           IT:
                       </label>
                       <br />
                            <label class="contactText">
                            +201006820746 
                       </label>
                       <br />
                        <label class="contactText">
                            +201006820746 
                       </label>
                       <br />
                       <br />
                       <label class="contactTitlesText">
                           MET Coordinator:
                       </label>
                       <br />
                       <label class="contactText">
                            +201006820746 
                       </label>
                       <br />
                       <label class="contactText">
                            +201006820746 
                       </label>
                       <br />
                   </div>
               </div>
                <div class="emails">
                    <div class ="Iconandtitle">
                        <img class="contactIcons" src="./images/homePageImages/mailLogo.svg"/>
                      <label class="contactTitlesText">
                          Admission:
                      </label>
                  </div>
                   <div class="info">
                       <label class="contactText">
                           admission@guc.edu.eg
                       </label>
                       <br />
                       <br />
                       <label class="contactTitlesText">
                           IT:
                       </label>
                       <br />
                            <label class="contactText">
                             it1@guc.edu.eg
                       </label>
                        <label class="contactText">
                                    it2@guc.edu.eg 
                       </label>
                       <br />
                       <br />
                       <label class="contactTitlesText">
                           MET Coordinator:
                       </label>
                       <br />
                       <label class="contactText">
                                     coordinator1@guc.edu.eg 
                       </label>
                       <br />
                       <label class="contactText">
                                     coordinator2@guc.edu.eg 
                       </label>
                       <br />
                       <label class="contactText">
                                     coordinator3@guc.edu.eg 
                       </label>
                       <br />
                   </div>

                </div>
                <div class="office">
                      <div class ="Iconandtitle">
                          <img class="contactIcons" src="./images/homePageImages/deskLogo.svg"/>
                      <label class="contactTitlesText">
                          IT:
                      </label>

                  </div>
                   <div class="info">
                       <label class="contactText">
                            C6.123
                       </label>
                       <br />
                       <label class="contactText">
                            C6.123
                       </label>
                       <br />
                       <br />
                       <label class="contactTitlesText">
                           MET Coordinator:
                       </label>
                       <br />
                            <label class="contactText">
                             C7.235
                       </label>
                       <br />
                        <label class="contactText">
                             C7.235
                       </label>
                   </div>
                </div>

            </div>
            



        </div>
    </form>
</body>
</html>
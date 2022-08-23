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

            <img class="logo" src="./images/topBarImages/GUC-logo 2.svg" />


            <img class="bar" src="./images/topBarImages/bar.svg" />


            <label class="label1">Faculty of Media Engineering & Technology</label>

            <asp:Button ID="Button1" CssClass="login" runat="server" Text="Login" />

        </div>
        <div class="navbar">
            <div>
                <img src="images/topBarImages/home.svg" alt="Alternate Text" class="navimg" />
                <asp:Button Text="Home" runat="server" CssClass="navbtn" />
            </div>
            <div>
                <img src="images/topBarImages/course.svg" alt="Alternate Text" class="navimg" />
                <asp:Button Text="Courses" runat="server" CssClass="navbtn" />
            </div>
            <div>
                <img src="images/topBarImages/staff-red.svg" alt="Alternate Text" class="navimg3" />
                <asp:Button Text="Staff" runat="server" CssClass="navbtn" />
            </div>
            <div>
                <img src="images/topBarImages/studactiv.svg" alt="Alternate Text" class="navimg" />
                <asp:Button Text="Student Activity" runat="server" CssClass="navbtn" />
            </div>
            <div>
                <img src="images/topBarImages/Alumni.svg" alt="Alternate Text" class="navimg2" />
                <asp:Button Text="Alumni" runat="server" CssClass="navbtn" />
            </div>
            <div>
                <img src="images/topBarImages/about.svg" alt="Alternate Text" class="navimg4" />
                <asp:Button Text="About Us" runat="server" CssClass="navbtn" />
            </div>
        </div>

        <div class="ProfileHeader">
            <div class="profileImageDiv">
                <img class="profileImage" src="images/profile/Haythem.svg" alt="Alternate Text" />
            </div>
            <div>
                <label class="name">Assoc. Prof. Haythem Ismail</label>
                <div class="titleDiv">
                    <label class="title">Faculty of Media Engineering & Technology</label>
                </div>
            </div>
            <div>
                <div class="info">
                    <div>
                        <img class="icon" src="images/Profile/officeIcon.svg" alt="Alternate Text" />
                    </div>
                    <div>
                        <label class="iconLabel">C7.307</label>
                    </div>
                </div>
                <div class="info">
                    <div>
                        <img class="icon" src="images/Profile/emailIcon.svg" alt="Alternate Text" />
                    </div>
                    <div>
                        <label class="iconLabel">haythem.ismail@guc.edu.eg</label>
                    </div>
                </div>
                <div class="info">
                    <div>
                        <img class="icon" src="images/Profile/faxIcon.svg" alt="Alternate Text" />
                    </div>
                    <div>
                        <label class="iconLabel">20-2-7581041</label>
                    </div>
                </div>
                <div class="info">
                    <div>
                        <img class="icon" src="images/Profile/phoneIcon.svg" alt="Alternate Text" />
                    </div>
                    <div>
                        <label class="iconLabel">20-2-7589990</label>
                    </div>
                </div>
            </div>
        </div>

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

        <div id="PersonalInfo">
        </div>
        <section class="PersonalInfo">
            <div class="infoTitleDiv">
                <label class="infoTitle">Personal Info</label>
            </div>
            <div class="listDiv">
                <ul class"list" >
                  <li class"item">Born in Cairo, Egypt on Saturday, March 14, 1970</li>
                  <li class"item">Nationality: Egyptian</li>
                  <li class"item">Married with a son and a daughter</li>
                  <li class"item">Language(s): Arabic , English</li>
                 </ul>
            </div>
        </section>

        <section class"Education">
            <div class="infoSubTitleDiv">
                <label class="infoSubTitle">Education</label>
            </div>
            <div class="section">
                <div class="dateDiv">
                    <label class="date">Septemper, 2001</label>
                </div>
                <div >
                    <div class="vertical"></div>
                </div>

                <div class="titles">
                    <div class="title1Div">
                        <label style="font-size: 1.7713365539452497vw;">Ph.D.</label>
                    </div>
                    <div class="title2Div">
                        <label style="font-size: 1.3687600644122384vw;">State University of New York at Buffalo</label >
                    </div>
                   <div class="title3Div">
                        <label style="font-size: 1.3687600644122384vw;">(Computer Science and Engineering, Linguistics Minor, Cognitive Science Ph.D. Track)</label>
                   </div>
                    <div style="padding-top: 0.8051529790660226vw;">
                        <hr style="height: 0.040257648953301126vw; border-width: 0; color: gray; background-color: gray; opacity: 0.3">
                    </div>
                </div> 
            </div>

            <div class="section">
                <div class="dateDiv">
                    <label class="date">Septemper, 2001</label>
                </div>
                <div>
                    <div class="vertical"></div>
                </div>

                <div class="titles">
                    <div class="title1Div">
                        <label style="font-size: 1.7713365539452497vw;">M.Sc.</label>
                    </div>
                    <div class="title2Div">
                        <label style="font-size: 1.3687600644122384vw;">cairo university</label>
                    </div>
                    <div class="title3Div">
                        <label style="font-size: 1.3687600644122384vw;">Engineering Mathematics/Computer Science</label>
                    </div>
                    <div style="padding-top: 0.8051529790660226vw;">
                        <hr style="height: 0.040257648953301126vw; border-width: 0; color: gray; background-color: gray; opacity: 0.3">
                    </div>
                </div>
            </div>
           

            <div class="section">
                <div class="dateDiv">
                    <label class="date">Septemper, 2001</label>
                </div>
                <div>
                    <div class="vertical"></div>
                </div>

                <div class="titles">
                    <div class="title1Div">
                        <label style="font-size: 1.7713365539452497vw;">B.Sc.</label>
                    </div>
                    <div class="title2Div">
                        <label style="font-size: 1.3687600644122384vw;">Cairo University</label>
                    </div>
                    <div class="title3Div">
                        <label style="font-size: 1.3687600644122384vw;">Communications and electronics</label>
                    </div>
                    <div style="padding-top: 0.8051529790660226vw;">
                        <hr style="height: 0.024154589371980676vw; border-width: 0; color: gray; background-color: gray; opacity: 0.3">
                    </div>
                </div>
            </div>
        </section>


        <section class="Employment">
            <div class="infoSubTitleDiv">
                <label class="infoSubTitle">Employment</label>
            </div>
            <div class="section">
                <div class="dateDiv">
                    <label class="date">July, 2011 to Still running</label>
                </div>
                <div>
                    <div class="vertical"></div>
                </div>

                <div class="titles">
                    <div class="title1Div">
                        <label style="font-size: 1.7713365539452497vw;">Associate Professor.</label>
                    </div>
                    <div class="title2Div">
                        <label style="font-size: 1.3687600644122384vw;">Cairo University</label>
                    </div>
                    <div class="title3Div">
                        <label style="font-size: 1.3687600644122384vw;">Department of Engineering Mathematics and Physics</label>
                    </div>
                    <div style="padding-top: 0.8051529790660226vw;">
                        <hr style="height: 0.040257648953301126vw; border-width: 0; color: gray; background-color: gray; opacity: 0.3">
                    </div>
                </div>
            </div>

            <div class="section">
                <div class="dateDiv">
                    <label class="date">July, 2011 to Still running</label>
                </div>
                <div>
                    <div class="vertical"></div>
                </div>

                <div class="titles">
                    <div class="title1Div">
                        <label style="font-size: 1.7713365539452497vw;">Associate Professor</label>
                    </div>
                    <div class="title2Div">
                        <label style="font-size: 1.3687600644122384vw;">German University in Cairo</label>
                    </div>
                    <div class="title3Div">
                        <label style="font-size: 1.3687600644122384vw;">Department of Computer Science</label>
                    </div>
                    <div style="padding-top: 0.8051529790660226vw;">
                        <hr style="height: 0.040257648953301126vw; border-width: 0; color: gray; background-color: gray; opacity: 0.3">
                    </div>
                </div>
            </div>


            <div class="section">
                <div class="dateDiv">
                    <label class="date">September, 2005 to June, 2011</label>
                </div>
                <div>
                    <div class="vertical"></div>
                </div>

                <div class="titles">
                    <div class="title1Div">
                        <label style="font-size: 1.7713365539452497vw;">Assistant Professor</label>
                    </div>
                    <div class="title2Div">
                        <label style="font-size: 1.3687600644122384vw;">German University in Cairo</label>
                    </div>
                    <div class="title3Div">
                        <label style="font-size: 1.3687600644122384vw;">Computer Science Department</label>
                    </div>
                    <div style="padding-top: 0.8051529790660226vw;">
                        <hr style="height: 0.024154589371980676vw; border-width: 0; color: gray; background-color: gray; opacity: 0.3">
                    </div>
                </div>
            </div>
            <div class="showMoreDiv">
                <asp:Button ID="Button2" CssClass="showMore" runat="server" Text="Show More" />
            </div>
            <div class="gradientbar" id="Teaching">
                <img class="center" src="./images/profile/gradientBar.svg" />
            </div>
        </section>

        

        <section  class="Teaching">
            <div class="infoTitleDiv">
                <label class="infoTitle">Teaching</label>
            </div>

            <div class="section">
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
            </div>

            <div class="section">
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
            </div>

            <div class="section">
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
            </div>

            <div class="showMoreDiv">
                <asp:Button ID="Button3" CssClass="showMore" runat="server" Text="Show More" />
            </div>
            <div class="gradientbar" id="Research">
                <img class="center" src="./images/profile/gradientBar.svg" />
            </div>
        </section>

        <div></div>
        <section  class="Research">
            <div class="infoTitleDiv">
                <label class="infoTitle">Research</label>
            </div>
            <div class="infoSubTitleDiv">
                <label class="infoSubTitle">Research Interests</label>
            </div>
            <div class="section">
                <div class="dateDiv">
                    
                </div>
                <div>
                    <div class="vertical" style="height:9.07258064516129vw;"></div>
                </div>

                <div class="listDiv">
                    <ul class"list" style="margin-top:0;margin-bottom:0;font-family: 'Montserrat', sans-serif;font-size:1.3687600644122384vw;font-weight:500;margin-left:0;">
                      <li class"item">Knowledge Representation and Reasoning</li>
                      <li class"item">Cognitive Science</li>
                      <li class"item">Natural Language Understanding</li>
                      <li class"item">Formal Ontology</li>
                      <li class"item">Cognitive Semantics</li>
                     </ul>
                </div>
            </div>
        </section>

        <section>
            <div class="infoSubTitleDiv">
                <label class="infoSubTitle">Research Links</label>
            </div>
            <div class="section">
                <div class="dateDiv">
                    <label class="date">Septemper, 2001</label>
                </div>
                <div>
                    <div class="vertical"></div>
                </div>

                <div class="titles">
                    <div class="title1Div">
                        <label style="font-size: 1.7713365539452497vw;">Ph.D.</label>
                    </div>
                    <div class="title2Div">
                        <label style="font-size: 1.3687600644122384vw;">State University of New York at Buffalo</label>
                    </div>
                    <div class="title3Div">
                        <label style="font-size: 1.3687600644122384vw;">(Computer Science and Engineering, Linguistics Minor, Cognitive Science Ph.D. Track)</label>
                    </div>
                    <div style="padding-top: 0.8051529790660226vw;">
                        <hr style="height: 0.040257648953301126vw; border-width: 0; color: gray; background-color: gray; opacity: 0.3">
                    </div>
                </div>
            </div>
            <div class="section">
                <div class="dateDiv">
                    <label class="date">Septemper, 2001</label>
                </div>
                <div>
                    <div class="vertical"></div>
                </div>

                <div class="titles">
                    <div class="title1Div">
                        <label style="font-size: 1.7713365539452497vw;">Ph.D.</label>
                    </div>
                    <div class="title2Div">
                        <label style="font-size: 1.3687600644122384vw;">State University of New York at Buffalo</label>
                    </div>
                    <div class="title3Div">
                        <label style="font-size: 1.3687600644122384vw;">(Computer Science and Engineering, Linguistics Minor, Cognitive Science Ph.D. Track)</label>
                    </div>
                    <div style="padding-top: 0.8051529790660226vw;">
                        <hr style="height: 0.040257648953301126vw; border-width: 0; color: gray; background-color: gray; opacity: 0.3">
                    </div>
                </div>
            </div>
            <div class="section">
                <div class="dateDiv">
                    <label class="date">Septemper, 2001</label>
                </div>
                <div>
                    <div class="vertical"></div>
                </div>

                <div class="titles">
                    <div class="title1Div">
                        <label style="font-size: 1.7713365539452497vw;">Ph.D.</label>
                    </div>
                    <div class="title2Div">
                        <label style="font-size: 1.3687600644122384vw;">State University of New York at Buffalo</label>
                    </div>
                    <div class="title3Div">
                        <label style="font-size: 1.3687600644122384vw;">(Computer Science and Engineering, Linguistics Minor, Cognitive Science Ph.D. Track)</label>
                    </div>
                    <div style="padding-top: 0.8051529790660226vw;">
                        <hr style="height: 0.040257648953301126vw; border-width: 0; color: gray; background-color: gray; opacity: 0.3">
                    </div>
                </div>
            </div>

            <div class="showMoreDiv">
                <asp:Button ID="Button4" CssClass="showMore" runat="server" Text="Show More" />
            </div>
            <div class="gradientbar" id="Publications">
                <img class="center" src="./images/profile/gradientBar.svg" />
            </div>
        </section>

        <section  class="Publications">
            <div class="infoTitleDiv">
                <label class="infoTitle">Publications</label>
            </div>
            <div class="section">
                <div class="dateDiv">
                    <label class="date">Septemper, 2001</label>
                </div>
                <div>
                    <div class="vertical"></div>
                </div>

                <div class="titles">
                    <div class="title1Div">
                        <label style="font-size: 1.7713365539452497vw;">Ph.D.</label>
                    </div>
                    <div class="title2Div">
                        <label style="font-size: 1.3687600644122384vw;">State University of New York at Buffalo</label>
                    </div>
                    <div class="title3Div">
                        <label style="font-size: 1.3687600644122384vw;">(Computer Science and Engineering, Linguistics Minor, Cognitive Science Ph.D. Track)</label>
                    </div>
                    <div style="padding-top: 0.8051529790660226vw;">
                        <hr style="height: 0.040257648953301126vw; border-width: 0; color: gray; background-color: gray; opacity: 0.3">
                    </div>
                </div>
            </div>
            <div class="section">
                <div class="dateDiv">
                    <label class="date">Septemper, 2001</label>
                </div>
                <div>
                    <div class="vertical"></div>
                </div>

                <div class="titles">
                    <div class="title1Div">
                        <label style="font-size: 1.7713365539452497vw;">Ph.D.</label>
                    </div>
                    <div class="title2Div">
                        <label style="font-size: 1.3687600644122384vw;">State University of New York at Buffalo</label>
                    </div>
                    <div class="title3Div">
                        <label style="font-size: 1.3687600644122384vw;">(Computer Science and Engineering, Linguistics Minor, Cognitive Science Ph.D. Track)</label>
                    </div>
                    <div style="padding-top: 0.8051529790660226vw;">
                        <hr style="height: 0.040257648953301126vw; border-width: 0; color: gray; background-color: gray; opacity: 0.3">
                    </div>
                </div>
            </div>
            <div class="section">
                <div class="dateDiv">
                    <label class="date">Septemper, 2001</label>
                </div>
                <div>
                    <div class="vertical"></div>
                </div>

                <div class="titles">
                    <div class="title1Div">
                        <label style="font-size: 1.7713365539452497vw;">Ph.D.</label>
                    </div>
                    <div class="title2Div">
                        <label style="font-size: 1.3687600644122384vw;">State University of New York at Buffalo</label>
                    </div>
                    <div class="title3Div">
                        <label style="font-size: 1.3687600644122384vw;">(Computer Science and Engineering, Linguistics Minor, Cognitive Science Ph.D. Track)</label>
                    </div>
                    <div style="padding-top: 0.8051529790660226vw;">
                        <hr style="height: 0.040257648953301126vw; border-width: 0; color: gray; background-color: gray; opacity: 0.3">
                    </div>
                </div>
            </div>

            <div class="showMoreDiv">
                <asp:Button ID="Button5" CssClass="showMore" runat="server" Text="Show More" />
            </div>
            <div class="gradientbar" id="Activities">
                <img class="center" src="./images/profile/gradientBar.svg" />
            </div>
        </section>

        <section  class="Activities">
            <div class="infoTitleDiv">
                <label class="infoTitle">Activities</label>
            </div>
            <div class="section">
                <div class="dateDiv">
                    <label class="date">9/13/2016 to 9/14/2016</label>
                </div>
                <div>
                    <div class="vertical"></div>
                </div>

                <div class="titles">
                    <div class="title1Div">
                        <label style="font-size: 1.3687600644122384vw;">Program Committee Member for WFLP 2016:24th International Workshop on Functional and (Constraint) Logic Programming, Leipzig, Germany</label>
                    </div>
                    <div style="padding-top: 0.8051529790660226vw;">
                        <hr style="height: 0.040257648953301126vw; border-width: 0; color: gray; background-color: gray; opacity: 0.3">
                    </div>
                </div>
            </div>
            <div class="section">
                <div class="dateDiv">
                    <label class="date">9/13/2016 to 9/14/2016</label>
                </div>
                <div>
                    <div class="vertical"></div>
                </div>

                <div class="titles">
                    <div class="title1Div">
                        <label style="font-size: 1.3687600644122384vw;">Program Committee Member for LOPSTR 2016: 26th International Symposium on Logic-Based Program Synthesis and Transformation, Edinburgh, UK</label>
                    </div>
                    <div style="padding-top: 0.8051529790660226vw;">
                        <hr style="height: 0.040257648953301126vw; border-width: 0; color: gray; background-color: gray; opacity: 0.3">
                    </div>
                </div>
            </div>
            <div class="section">
                <div class="dateDiv">
                    <label class="date">9/13/2016 to 9/14/2016</label>
                </div>
                <div>
                    <div class="vertical"></div>
                </div>

                <div class="titles">
                    <div class="title1Div">
                        <label style="font-size: 1.3687600644122384vw;">Program Committee Member for DEXA 2016: 27th International Conference on Database and Expert Systems Applications, Porto, Portugal</label>
                    </div>
                
                    <div style="padding-top: 0.8051529790660226vw;">
                        <hr style="height: 0.040257648953301126vw; border-width: 0; color: gray; background-color: gray; opacity: 0.3">
                    </div>
                </div>
            </div>

            <div class="showMoreDiv">
                <asp:Button ID="Button6" CssClass="showMore" runat="server" Text="Show More" />
            </div>
            <div class="gradientbar">
                <img class="center" src="./images/profile/gradientBar.svg" />
            </div>
        </section>
    </form>
</body>
</html>

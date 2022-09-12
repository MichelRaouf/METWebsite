<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="temp.aspx.cs" Inherits="METWebsite.temp8" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Staff</title>
    <link rel="icon" href="./images/gucLogo.png"/>
    <link  rel="stylesheet" href="./StyleSheets/temp.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="scrollable">

            <div class="header">
                <img class="logo" src="./images/topBarImages/GUC-logo 2.svg" />
                <img class="bar" src="./images/topBarImages/bar.svg"/>
                <label class="facultyLabel">Faculty of Media Engineering & Technology</label>
                <asp:Button ID="Button1" CssClass="login" runat="server" Text="Login" OnClick="toLogin" />
            </div>

            <div class="navbar">
            <div>
                <img src="images/staff/home.png" alt="Alternate Text" class="navImgHomeBookHeadphones" />
                <asp:Button Text="Home" runat="server" CssClass="navbtn" OnClick="toHome" />
            </div>
            <div>
                <img src="images/staff/book.png" alt="Alternate Text"class="navImgHomeBookHeadphones"/>
                <asp:Button Text="Courses" runat="server" CssClass="navbtn" OnClick="toCourses" />
            </div>
            <div>
                <img src="images/staff/group.png" alt="Alternate Text" class="navImgGroup"/>
                <asp:Button Text="Staff" runat="server" CssClass="navbtnin" OnClick="toStaff" />
            </div>
            <div >
                <img src="images/staff/headphones.png" alt="Alternate Text"class="navImgHomeBookHeadphones" />
                <asp:Button Text="Student Activity" runat="server" CssClass="navbtn" OnClick="toStudentActiv" />
            </div>
            <div >
                <img src="images/staff/graduated.png" alt="Alternate Text"class="navImgGrad" />
                <asp:Button Text="Alumni" runat="server" CssClass="navbtn" OnClick="toAlumni" />
            </div>
            <div >
                <img src="images/staff/info.png" alt="Info" class="navImgAbout" />
                 <asp:Button Text="About Us" runat="server" CssClass="navbtn" OnClick="toAbout" />
            </div> 
        </div>

        </div>

        <div class="ProfileHeader" id="ProfileHeader" runat="server">
            <div class="profileName">
                <div class="profileImageDiv" id="profileImageDiv" runat="server">

                </div>
                <div class="namePosition" id="namePosition" runat="server">
                   
                </div>
            </div>
            
            <div class="iconsValues">
                <div class="iconLineDiv" id="officeDiv" runat="server">
                    <img class="iconNoPhone" src="images/Profile/officeIcon.svg" />
                </div>
                <div class="iconLineDiv" id="emailDiv" runat="server">
                    <img class="iconNoPhone" src="images/Profile/emailIcon.svg" />
                </div>
                <div class="iconLineDiv" id="faxDiv" runat="server">
                    <img class="iconNoPhone" src="images/Profile/faxIcon.svg" />
                </div>
                <div class="iconLineDiv" id="phoneDiv" runat="server">
                    <img class="iconPhone" src="images/Profile/phoneIcon.svg" />
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
            <div class="listDiv">
                <ul id ="personalList" runat="server">
                    
                </ul>
            </div>
        </section>

        <section id="educationSection" class="Education" runat="server">
            <div class="infoSubTitleDiv">
                <label class="infoSubTitle">Education</label>
            </div>
            
        </section>

        <section id="employmentSection" class="Employment" runat="server">
            <div class="infoSubTitleDiv">
                <label class="infoSubTitle">Employment</label>
            </div>
            <div id="buttonMore1" class="showMoreDiv" runat="server">
                <asp:Button ID="myBtn" CssClass="showMore" runat="server" Text="Show More" OnClientClick="myFunction();return false;"/>
            </div>
        </section>

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

        <div class="gradientBar">

        </div>

        <section id="teachingSection" class="teaching" runat ="server">
             <div class="infoTitleDiv">
                <label class="infoTitle">Teaching</label>
            </div>
            <div class="infoItem">
                <div class="dateDiv">
                    <label class="date">September, 2001</label>
                </div>
                <div class="vertical">

                </div>
                <div class="text">
                    <ul class="course">
                        <li>(MATH 203) Mathematics I</li>
                        <li>(MATH 203) Mathematics I</li>
                        <li>(MATH 203) Mathematics I</li>
                    </ul>
                    <div class="horizontal">
                    </div>
                </div>    
            </div>
            <div class="infoItem">
                <div class="dateDiv">
                    <label class="date">September, 2001</label>
                </div>
                <div class="vertical">

                </div>
                <div class="text">
                    <ul class="course">
                        <li>(MATH 203) Mathematics I</li>
                        <li>(MATH 203) Mathematics I</li>
                        <li>(MATH 203) Mathematics I</li>
                    </ul>
                    <div class="horizontal">
                    </div>
                </div>    
            </div>
            <div class="infoItem">
                <div class="dateDiv">
                    <label class="date">September, 2001</label>
                </div>
                <div class="vertical">

                </div>
                <div class="text">
                    <ul class="course">
                        <li>(MATH 203) Mathematics I</li>
                        <li>(MATH 203) Mathematics I</li>
                        <li>(MATH 203) Mathematics I</li>
                    </ul>
                    <div class="horizontal">
                    </div>
                </div>    
            </div>
            <div id="buttonMore2" class="showMoreDiv" runat="server" >
                <asp:Button ID="mybtn2" CssClass="showMore" runat="server" Text="Show More" OnClientClick="myFunction2();return false;" />
            </div>
        </section>

        <div class="gradientBar">

        </div>

        <section id="researchSection" class="research" runat ="server">
             <div class="infoTitleDiv">
                <label class="infoTitle">Research</label>
            </div>
            <div class="infoSubTitleDiv">
                <label class="infoSubTitle">Research Interests</label>
            </div>
            <div class="infoItem">
                <div class="dateDiv">
                    <label class="date"></label>
                </div>
                <div class="vertical">

                </div>
                <div class="text">
                    <ul class="reInterests">
                        <li>Knowledge Representation and Reasoning</li>
                        <li>Cognitive Science</li>
                        <li>Natural Language Understanding</li>
                        <li>Formal Ontology</li>
                        <li>Cognitive Semantics</li>
                    </ul>
                    <div class="horizontal">
                    </div>
                </div>    
            </div>
            <div class="infoSubTitleDiv">
                <label class="infoSubTitle">Research Links</label>
            </div>
            <div class="infoItem">
                <div class="dateDiv">
                    <label class="date"></label>
                </div>
                <div class="vertical">

                </div>
                <div class="text">
                    <div class="university">
                        <label>The Snepts Research group</label>
                    </div>
                    <div class="description1">
                        <label>http://www.cse.buffalo.edu/sneps/</label>
                    </div>
                    <div class="horizontal">
                    </div>
                </div>    
            </div>
            <div class="infoItem">
                <div class="dateDiv">
                    <label class="date"></label>
                </div>
                <div class="vertical">

                </div>
                <div class="text">
                    <div class="university">
                        <label>The Snepts Research group</label>
                    </div>
                    <div class="description1">
                        <label>http://www.cse.buffalo.edu/sneps/</label>
                    </div>
                    <div class="horizontal">
                    </div>
                </div>    
            </div>
            <div class="infoItem">
                <div class="dateDiv">
                    <label class="date"></label>
                </div>
                <div class="vertical">

                </div>
                <div class="text">
                    <div class="university">
                        <label>The Snepts Research group</label>
                    </div>
                    <div class="description1">
                        <label>http://www.cse.buffalo.edu/sneps/</label>
                    </div>
                    <div class="horizontal">
                    </div>
                </div>    
            </div>
            <div id="buttonMore3"  runat= "server" class="showMoreDiv" >
                <asp:Button ID="mybtn3" CssClass="showMore" runat="server" Text="Show More" OnClientClick="myFunction3();return false;" />
            </div>
        </section>

        <div class="gradientBar">

        </div>

        <section id="publicationsSection" class="publication" runat ="server">
             <div class="infoTitleDiv">
                <label class="infoTitle">Publications</label>
            </div>
            <div class="infoItem">
                <div class="dateDiv">
                    <label class="date">Journal 2020</label>
                </div>
                <div class="vertical">

                </div>
                <div class="text">
                    <div class="university">
                        <label>LogAG: An Algebraic Non-Monotonic Logic for Reasoning
                            with Graded Propositions</label>
                    </div>
                    <div class="description1">
                        <label class="description">Nourhan Ehab and Haythem O. Ismail : 
                            LogAG: An Algebraic Non-Monotonic Logic for
                            Reasoning with Graded Propositions , Annals of Mathematics and Artificial
                            Intelligence, 2020.</label>
                    </div>
                    <div class="linkTitle">
                        <label>https://doi.org/10.1007/s10472-020-09697-0</label>
                    </div>
                    <div class="horizontal">
                    </div>
                </div>    
            </div>
            <div class="infoItem">
                <div class="dateDiv">
                    <label class="date">Journal 2020</label>
                </div>
                <div class="vertical">

                </div>
                <div class="text">
                    <div class="university">
                        <label>LogAG: An Algebraic Non-Monotonic Logic for Reasoning
                            with Graded Propositions</label>
                    </div>
                    <div class="description1">
                        <label class="description">Nourhan Ehab and Haythem O. Ismail : 
                            LogAG: An Algebraic Non-Monotonic Logic for
                            Reasoning with Graded Propositions , Annals of Mathematics and Artificial
                            Intelligence, 2020.</label>
                    </div>
                    <div class="linkTitle">
                        <label>https://doi.org/10.1007/s10472-020-09697-0</label>
                    </div>
                    <div class="horizontal">
                    </div>
                </div>    
            </div>
            <div class="infoItem">
                <div class="dateDiv">
                    <label class="date">Journal 2020</label>
                </div>
                <div class="vertical">

                </div>
                <div class="text">
                    <div class="university">
                        <label>LogAG: An Algebraic Non-Monotonic Logic for Reasoning
                            with Graded Propositions</label>
                    </div>
                    <div class="description1">
                        <label class="description">Nourhan Ehab and Haythem O. Ismail : 
                            LogAG: An Algebraic Non-Monotonic Logic for
                            Reasoning with Graded Propositions , Annals of Mathematics and Artificial
                            Intelligence, 2020.</label>
                    </div>
                    <div class="linkTitle">
                        <label>https://doi.org/10.1007/s10472-020-09697-0</label>
                    </div>
                    <div class="horizontal">
                    </div>
                </div>    
            </div>
            <div id="buttonMore4" runat="server"  class="showMoreDiv" >
                <asp:Button ID="mybtn4" CssClass="showMore" runat="server" Text="Show More" OnClientClick="myFunction4();return false;" />
            </div>
        </section>

        <div class="gradientBar">

        </div>

        <section id="activitySection" class="activity" runat ="server">
             <div class="infoTitleDiv">
                <label class="infoTitle">Activity</label>
            </div>
            <div class="infoItem">
                <div class="dateDiv">
                    <label class="date">9/9/2016 to 9/10/2016</label>
                </div>
                <div class="vertical">

                </div>
                <div class="text">
                    <div class="university">
                        <label>Location : Leipzig, Germany</label>
                    </div>
                    <div class="description">
                        <label class="description">Program Committee Member for WFLP 2016:24th 
                            International Workshop on Functional and (Constraint)
                            Logic Programming</label>
                    </div>
                    <div class="horizontal">
                    </div>
                </div>    
            </div>
            <div class="infoItem">
                <div class="dateDiv">
                    <label class="date">9/9/2016 to 9/10/2016</label>
                </div>
                <div class="vertical">

                </div>
                <div class="text">
                    <div class="university">
                        <label>Location : Leipzig, Germany</label>
                    </div>
                    <div class="description">
                        <label class="description">Program Committee Member for WFLP 2016:24th 
                            International Workshop on Functional and (Constraint)
                            Logic Programming</label>
                    </div>
                    <div class="horizontal">
                    </div>
                </div>    
            </div>
            <div class="infoItem">
                <div class="dateDiv">
                    <label class="date">9/9/2016 to 9/10/2016</label>
                </div>
                <div class="vertical">

                </div>
                <div class="text">
                    <div class="university">
                        <label>Location : Leipzig, Germany</label>
                    </div>
                    <div class="description">
                        <label class="description">Program Committee Member for WFLP 2016:24th 
                            International Workshop on Functional and (Constraint)
                            Logic Programming</label>
                    </div>
                    <div class="horizontal">
                    </div>
                </div>    
            </div>
            <%--<div id="Div1" runat="server"  class="showMoreDiv" >
                <asp:Button ID="Button2" CssClass="showMore" runat="server" Text="Show More" OnClientClick="myFunction4();return false;" />
            </div>--%>
        </section>
        <div class="blank">
            &nbsp;
        </div>
    </form>
</body>
</html>

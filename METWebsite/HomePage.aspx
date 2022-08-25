<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="METWebsite.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MET Website</title>
    <link rel="icon" href="./images/gucLogo.png">
    <link  rel="stylesheet" href="./StyleSheets/HomeStyles.css"/>
</head>
    <script>
        function SeeMore(){
            alert(12);
        }
        function ShowHover() {
//
            var x = document.createElement("div");
            x.setAttribute("class", "whitebox");
            x.setAttribute("id", "addeddiv");
            x.style.width = event.srcElement.offsetWidth + "px";
            x.style.height = event.srcElement.offsetHeight + "px";
            x.style.position = "absolute";
            x.style.left = event.srcElement.offsetLeft+"px";
            x.style.top = event.srcElement.offsetTop + "px";
            var label2 = document.createElement("label");
            label2.innerHTML = event.srcElement.getAttribute("title")
            label2.setAttribute("class", "newsitemlabel");
            var label = document.createElement("label");
            label.innerHTML = event.srcElement.getAttribute("description");
            label.setAttribute("class", "newsinfo");
            x.appendChild(label);
            var button = document.createElement("button");
            button.innerHTML = "See More";
            button.setAttribute("class", "newsbtn");
            button.setAttribute("onclick", "SeeMore()");
            x.appendChild(button);
            x.setAttribute("onmouseleave", "removeHover()");
            document.querySelector("body").appendChild(x);
            
        }
        function removeHover() {
            
            var x = document.getElementById("addeddiv");
            document.querySelector("body").removeChild(x);

        }
    </script>
<body>
    <form id="form1" runat="server">
        <div class="scrollable">
            <div class="header">
            
                            <img class="logo" src="./images/topBarImages/GUC-logo 2.svg" />
           
           
                            <img class="bar" src="./images/topBarImages/bar.svg"/>
            
          
                            <label class="label1">Faculty of Media Engineering & Technology</label>
            
                    <asp:Button ID="Button1" CssClass="login" runat="server" Text="Login"  />
            
        </div>
        <div class="navbar">
            <div >
                <img src="images/topBarImages/home-red.svg" alt="Alternate Text" class="navimg3" />
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
                <img src="images/topBarImages/studactiv.svg" alt="Alternate Text"class="navimg" />
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
        </div>

        
            <img class="graduationImage" src="./images/homePageImages/graduation.svg"/>
        

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

            <div class="news" >
            <div> <label class="newslabel">Latest News</label> </div>
            <div class="newsitem" id="newsdiv" runat="server" >
                <div>
                    <section class="whitebox" id="image11" >
                        <label class="newsitemlabel">Job Fair 2022</label>
                    </section>
                    <img class="newsimage" onmouseenter="ShowHover()"    src="./images/homePageImages/news1.svg" title="Job Fair 2022" description="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do e cupidatat non proident, sunt in.amet, consectetur adipiscing elit, sed do e cupidatat non proident, sunt in."  />
                    
                </div>
                <div>
                    <section class="whitebox">
                        <label class="newsitemlabel">Job Fair 2022</label>
                    </section>
                    <img class="newsimage"  onmouseenter="ShowHover()"    src="./images/homePageImages/news1.svg" title="Job Fair 2022" description="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do e cupidatat non proident, sunt in.amet, consectetur adipiscing elit, sed do e cupidatat non proident, sunt in."  />

                </div>
                <div>
                    <section class="whitebox">
                        <label class="newsitemlabel">Job Fair 2022</label>
                    </section>
                    <img class="newsimage"  onmouseenter="ShowHover()"    src="./images/homePageImages/news1.svg" title="Job Fair 2022" description="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do e cupidatat non proident, sunt in.amet, consectetur adipiscing elit, sed do e cupidatat non proident, sunt in."  />

                </div>
                
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
          
                <img class="pathsPhoto" src="./images/homePageImages/pathsPhoto.svg"/>
        
        </div>
<div class="wegucians">
            <div class="redlabel">
                <label class="gucianlabel">#We_Gucians</label>
        </div>
            <div class="gucianinfo">
                <div>
                <img  class="alumniImage" src="./images/homePageImages/person1.svg"/>
                <div class="alumniinfo">
                <label class="name">Ahmed Sabah</label>
                <br />
                <label class="description"> Co-Founder & CTO  of Swvl Forbes Middle East ARAB 30 UNDER 30: Class of 2018 Category of Consumer Technology</label>

                </div>
            </div>
            <div>
                <img class="whiteVerBar" src="./images/homePageImages/verticalbarwhite.svg" />
            </div>
            <div>
                <img class="alumniImage" src="./images/homePageImages/person1.svg"/>
<div class="alumniinfo">
                <label class="name">Ahmed Sabah</label>
                <br />
                <label class="description"> Co-Founder & CTO  of Swvl Forbes Middle East ARAB 30 UNDER 30: Class of 2018 Category of Consumer Technology</label>

                </div>              
                
            </div>
            <div>
                <img class="whiteVerBar" src="./images/homePageImages/verticalbarwhite.svg" />
            </div>
            <div>
                <img  class="alumniImage" src="./images/homePageImages/person1.svg"/>
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
            <br />
            <br />
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
            <br />
            <br />



        </div>
    </form>
</body>
</html>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="METWebsite.temp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MET Website</title>
    <link rel="icon" href="./images/gucLogo.png"/>
    <link  rel="stylesheet" href="./StyleSheets/Header.css"/>
    <link  rel="stylesheet" href="./StyleSheets/HomePage.css"/>
    <link rel="stylesheet" href="StyleSheets/swiper-bundle.min.css"/>
</head>
<body>
    <form id="form1" runat="server">

           
        <script>
            function openNewsOverlay(title,desc) {
                document.getElementById("newsOverlay").style.display = "block";
                document.getElementById("newsTitle").innerHTML = title;
                document.getElementById("newsDescription").innerHTML = desc;

            }
            function closeNewsOverlay() {
                document.getElementById("newsOverlay").style.display = "none";

            }

        </script>


        <%--<div class="scrollable">
            <div class="header">
                <img class="logo" src="./images/topBarImages/GUC-logo 2.svg" />
                <img class="bar" src="./images/topBarImages/bar.svg"/>
                <label class="facultyLabel">Faculty of Media Engineering & Technology</label>
            </div>

            <div class="navbar">
                <button class="navbtnin" onserverclick="toHome" runat="server"><img src="images/staff/home.png" class="navImgHomeBookHeadphones"  /> <span>Home</span></button>
                <button class="navbtn" onserverclick="toCourses" runat="server"><img src="images/staff/book.png"class="navImgHomeBookHeadphones"/> <span>Courses</span></button>
                <button class="navbtn" onserverclick="toStaff" runat="server"><img src="images/staff/group.png" class="navImgGroup"/><span>Staff</span></button>
                <button class="navbtn" onserverclick="toStudentActiv" runat="server"><img src="images/staff/headphones.png" class="navImgHomeBookHeadphones" /><span>Student Activity</span></button>
                <button class="navbtn" onserverclick="toAlumni" runat="server"><img src="images/staff/graduated.png"class="navImgGrad" /><span>Alumni</span></button>
                <button class="navbtn" onserverclick="toAbout" runat="server"><img src="images/staff/info.png"class="navImgAbout" /><span>About Us</span></button>
            </div>

        </div>--%>

        <div class="nav-bar-space">
            <nav class="navBar" >
                <img class="topLogo" id="activeLogo" src="images/New Logo.svg"/>
                <img class="scrollLogo"  src="images/New Logo2.svg"/>
                <div class="navContent" >
                    <a id="activeNavElement" href="HomePage.aspx">Home</a>
                    <a href="CourseHomePage.aspx">Courses</a> 
                    <a href="StaffHomePage.aspx">Staff</a>
                    <a href="StudentActivities.aspx">Student Activity</a> 
                    <a href="AlumniPage.aspx">Alumni</a>
                    <a href="AboutUsPage.aspx">About Us</a> 
                </div>
            </nav>
        </div>
        
        <%--images slideshow here--%>
        <div class="intro">
            <div class="intro-slideshow" id="introSlideshow" runat="server">
                <img src="https://www.dropbox.com/s/h8rds5ozk0u3s2f/coder.jpg?raw=1"/>
                <img src="https://www.dropbox.com/s/lf29ifrd354ngyv/coffee.jpg?raw=1"/>
                <img src="https://www.dropbox.com/s/lxnf1mxej90qoae/library.jpg?raw=1"/>
                <img src="https://www.dropbox.com/s/15gdoyzoai94j6j/path.jpg?raw=1"/>
                <img src="https://www.dropbox.com/s/pem8kaorr488apn/universe.jpg?raw=1"/>
            </div>
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

        <div class="news" >
           
            <div> 
                <label class="newsLabel">Latest News</label> 
            </div>
            
            <div class="newsSlider">
              <div class="slideContaier swiper">
                  <div class="slideContent">
                     <div class="cardWrapper swiper-wrapper" id="cardWrapper" runat="server">   
                     </div>
                  </div>
                  <div class="swiper-button-next" id="newsNxtBtn"></div>
                 <div class="swiper-button-prev" id="newsPrevBtn"></div>
                 <%--<div class="swiper-pagination" ></div>--%>
              </div>
               
            </div>
        </div>

        <div class="pathsDiv">
            <div class="pathsTextDiv">
                <div class="pathsLabel">
                    <label>Paths for Every Passion</label>
                </div>
                <div class="pathsParagraph">
                    Students take courses which range from covering the basics of the profession, until focusing on particular aspect of the field. Each will offer preparation for a certain set of careers and professional achievement.
                </div>
                <div>
                    <asp:Button ID="viewCoursesButton" CssClass="viewCourses" runat="server" Text="View Courses" OnClick="viewCoursesButton_Click"/>
                </div>
            </div>          
                <img class="pathsPhoto" src="./images/homePageImages/pathsPhoto.svg"/>
        </div>

        <div class="weGUCians">
            <div class="redLabel">
                <label class="guciansLabel">#we_GUCians</label>
            </div>
            <div class="gucianinfo" runat="server" id="gucianinfodiv">

            </div>
            <div>
                <asp:button id="button10" cssclass="showMore" runat="server" text="Show More" OnClick="showMoreButton_Click" />
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
                        <img class="contactIconPhone" src="./images/homePageImages/callLogo.svg"/>
                        
                    </div>
                    <div class="info">
                        <label class="contactTitlesText">GUC Hotlines:</label>
                        <label class="contactText">16482</label>
                        <label class="contactTitlesText">IT:</label>
                       
                        <label class="contactText">+201006820746</label>
                       
                        <label class="contactText">+201006820746</label>
                        
                        <label class="contactTitlesText">MET Coordinator:</label>
                      
                        <label class="contactText">+201006820746 </label>
                      
                        <label class="contactText">+201006820746 </label>
                      
                    </div>
                </div>
                <div class="emails">
                    <div class ="Iconandtitle">
                        <img class="contactIcons" src="./images/homePageImages/mailLogo.svg"/>
                        
                    </div>
                    <div class="info">
                        
                        <label class="contactTitlesText">Admission:</label>
                        <label class="contactText">admission@guc.edu.eg</label>
                   
                        <label class="contactTitlesText">IT:</label>
                    
                        <label class="contactText">it1@guc.edu.eg</label>
                        <label class="contactText">it2@guc.edu.eg </label>
                    
                        <label class="contactTitlesText">MET Coordinator:</label>
               
                        <label class="contactText">coordinator1@guc.edu.eg </label>
             
                        <label class="contactText">coordinator2@guc.edu.eg </label>
            
                        <label class="contactText">coordinator3@guc.edu.eg </label>
  
                    </div>
                </div>
                <div class="office">
                    <div class ="Iconandtitle">
                        <img class="contactIcons" src="./images/homePageImages/deskLogo.svg"/>
                       
                    </div>
                    <div class="info">
                        <label class="contactTitlesText">IT:</label>
                        <label class="contactText">C6.123</label>
           
                        <label class="contactText">C6.123</label>
                
                        <label class="contactTitlesText">MET Coordinator:</label>
     
                        <label class="contactText">C7.235</label>
             
                        <label class="contactText">C7.235</label>
                    </div>
                </div>
            </div>
      
        </div>
        <div class="credits">
            <label class="creditsRights">Copyrights © 2022 GUC. All Rights Reserved.</label>
            <a href="#"class="developersButton" onmouseover="developerHover()" onmouseout="developerNormal()">
                <img  src="images/DevelopersBlack.png"/>
                <label class="boldDev">Developers</label>
                <label>Credits</label>
            </a>

        </div>
            <div id="newsOverlay" class="overlay">
  
  <div class="overlay-content">
      <div class="TitleDiv">
          
          <label class="overlayTitle" id="newsTitle"></label>
     
         
          <button class="testButton" onclick="closeNewsOverlay()"  type="button" > 
              <img src="./images/homePageImages/graycross.svg" alt="Cross button" /></button>

    </div>
      <hr />
      <div style="padding :30px;">
      <p runat="server" id="newsDescription"> </p>
          </div>
  </div>
</div>  

    </form>

    <script src="Scripts/swiper-bundle.min.js"></script>

    <script>
        //Nav Bar Scrolling

        const navBar = document.querySelector(".navBar");
        const topImage = document.querySelector(".topLogo");
        const scrollImage = document.querySelector(".scrollLogo");
        const navContent = document.querySelector(".navContent");
        window.addEventListener('scroll', () => {
            if (window.scrollY >= 700) {
                navBar.setAttribute('id', 'navScrolled');
                topImage.removeAttribute('id');
                scrollImage.setAttribute('id', 'activeLogo');
                navContent.setAttribute('id', 'scrolledContent');
            }
            else {
                navBar.removeAttribute('id');
                topImage.setAttribute('id', 'activeLogo');
                scrollImage.removeAttribute('id');
                navContent.removeAttribute('id');
            }
        })

        //Image Slideshow

        const slideshowImages = document.querySelectorAll(".intro-slideshow img");

        const nextImageDelay = 5000;
        let currentImageCounter = 0; // setting a variable to keep track of the current image (slide)

        // slideshowImages[currentImageCounter].style.display = "block";
        slideshowImages[currentImageCounter].style.opacity = 1;

        setInterval(nextImage, nextImageDelay);

        function nextImage() {
            // slideshowImages[currentImageCounter].style.display = "none";
            slideshowImages[currentImageCounter].style.opacity = 0;

            currentImageCounter = (currentImageCounter + 1) % slideshowImages.length;

            // slideshowImages[currentImageCounter].style.display = "block";
            slideshowImages[currentImageCounter].style.opacity = 1;
        }



        //News Cards JS
        var swiper = new Swiper(".slideContent", {
            slidesPerView: 1,
            spaceBetween: 100,
            loop: true,
            centerSlide: 'true',
            fade: 'true',
            grabCursor: 'true',
            pagination: {
                el: ".swiper-pagination",
                clickable: true,
                dynamicBullets: true,
            },
            navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
            },

            breakpoints: {
                0: {
                    slidesPerView: 1,
                },
                520: {
                    slidesPerView: 2,
                },
                950: {
                    slidesPerView: 3,
                },
            },
        });
        // Credits Bar

        function developerHover() {
            document.querySelector(".developersButton").style.backgroundColor = 'black';
            document.querySelectorAll(".developersButton label").forEach(el => {
                el.style.color = 'white';
            });
            document.querySelector(".developersButton img").setAttribute('class','devHovered')
      
        }
        function developerNormal() {
            document.querySelector(".developersButton").style.backgroundColor = 'white';
            document.querySelectorAll(".developersButton label").forEach(el => {
                el.style.color = 'black';
            });
            document.querySelector(".developersButton img").removeAttribute('class')

        }


        //////////////////////

        var sections = document.getElementsByClassName("whiteBox");
        for (var i = 0; i < sections.length; i++) {
            //alert(sections[i].offsetTop + " " + sections[i].parentElement.offsetTop);
            sections[i].style.top = "90%";
           // sections[i].style.top = sections[i].parentElement.offsetTop + sections[i].parentElement.offsetHeight - sections[i].offsetHeight + "px";
            //alert(sections[i].offsetTop + " " + sections[i].parentElement.offsetTop);
        }
        var labels = document.getElementsByClassName("newsItemLabel")
        for (var i = 0; i < labels.length; i++) {
            
            var x = labels[i].parentElement.offsetLeft
            labels[i].style.left = (labels[i].parentElement.offsetWidth - labels[i].offsetWidth) / 2 + "px";

        }
        window.addEventListener("resize", (event) => {

            var labels = document.getElementsByClassName("newsItemLabel")
            for (var i = 0; i < labels.length; i++) {
                var x = labels[i].parentElement.offsetLeft

                labels[i].style.left = (labels[i].parentElement.offsetWidth - labels[i].offsetWidth) / 2 + "px";
            }
        })
        function SeeMore() {
            alert(12);
        }
        function ShowHover() {
            var x = document.createElement("div");
            x.setAttribute("class", "whiteBox");
            x.setAttribute("id", "addeddiv");
            x.style.width = event.srcElement.offsetWidth + "px";
            x.style.height = event.srcElement.offsetHeight + "px";
            x.style.position = "absolute";
            x.style.left = event.srcElement.offsetLeft + "px";
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
        var box = document.getElementsByClassName("whiteBox");
    </script>



</body>
</html>

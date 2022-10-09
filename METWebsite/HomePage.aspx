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
              <div id="newsOverlay" class="overlay">
  
  <div class="overlay-content">
      <div>
      <asp:Label Text="Edit Announcement" runat="server" CssClass="overlayTitle" ID="newsTitle"  />
          <asp:ImageButton ImageUrl="imageurl" runat="server" />
    </div>
      <hr />
      <p runat="server" id="newsP" >In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.</p>
      
  </div>
</div>  
        <style>
            
.overlay {
    height: 100%;
    width: 100%;
    display: none;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: rgb(0,0,0);
    background-color: rgba(0,0,0, 0.3);
}

.overlay-content {
    background-color : white;
    border-radius: 0.78vw;
    position: relative;
    top: 25%;
    width: 50%;
    text-align: center;
    
    margin : auto;
}

.overlay .closebtn {
    font-size: 6.5vw;
}

@media screen and (max-height: 58.5vw) {
    .overlay a {
        font-size: 2.6vw
    }


}
.overlayTitle {
    color: black;
    font-size: 30px;
}

        </style>
        <script>
            function openNewsOverlay() {
                document.getElementById("newsOverlay").style.display = "block";

            }
            function closeNewsOverlay() {
                document.getElementById("newsOverlay").style.display = "none";

            }
        </script>


        <div class="scrollable">
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

        </div>

        
        <%--images slideshow here--%>
        <div class="intro">
            <div class="intro-slideshow">
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
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do e cupidatat non
                    proident, sunt in.amet, consectetur adipiscing elit, sed do e cupidatat non
                    proident, sunt in.
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
                        <img class="contactIcons" src="./images/homePageImages/callLogo.svg"/>
                        <label class="contactTitlesText">GUC Hotlines:</label>
                    </div>
                    <div class="info">
                        <label class="contactText">16482</label>
                        <br />
                        <br />
                        <label class="contactTitlesText">IT:</label>
                        <br />
                        <label class="contactText">+201006820746</label>
                        <br />
                        <label class="contactText">+201006820746</label>
                        <br />
                        <br />
                        <label class="contactTitlesText">MET Coordinator:</label>
                        <br />
                        <label class="contactText">+201006820746 </label>
                        <br />
                        <label class="contactText">+201006820746 </label>
                        <br />
                    </div>
                </div>
                <div class="emails">
                    <div class ="Iconandtitle">
                        <img class="contactIcons" src="./images/homePageImages/mailLogo.svg"/>
                        <label class="contactTitlesText">Admission:</label>
                    </div>
                    <div class="info">
                        <label class="contactText">admission@guc.edu.eg</label>
                        <br />
                        <br />
                        <label class="contactTitlesText">IT:</label>
                        <br />
                        <label class="contactText">it1@guc.edu.eg</label>
                        <label class="contactText">it2@guc.edu.eg </label>
                        <br />
                        <br />
                        <label class="contactTitlesText">MET Coordinator:</label>
                        <br />
                        <label class="contactText">coordinator1@guc.edu.eg </label>
                        <br />
                        <label class="contactText">coordinator2@guc.edu.eg </label>
                        <br />
                        <label class="contactText">coordinator3@guc.edu.eg </label>
                        <br />
                    </div>
                </div>
                <div class="office">
                    <div class ="Iconandtitle">
                        <img class="contactIcons" src="./images/homePageImages/deskLogo.svg"/>
                        <label class="contactTitlesText">IT:</label>
                    </div>
                    <div class="info">
                        <label class="contactText">C6.123</label>
                        <br />
                        <label class="contactText">C6.123</label>
                        <br />
                        <br />
                        <label class="contactTitlesText">MET Coordinator:</label>
                        <br />
                        <label class="contactText">C7.235</label>
                        <br />
                        <label class="contactText">C7.235</label>
                    </div>
                </div>
            </div>
            <br />
            <br />
        </div>

    </form>

    <script src="Scripts/swiper-bundle.min.js"></script>

    <script>
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

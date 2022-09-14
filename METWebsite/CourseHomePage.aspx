<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CourseHomePage.aspx.cs" Inherits="METWebsite.WebForm2" %>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
    <link  rel="stylesheet" href="./StyleSheets/CourseHome.css"/>
<style>

</style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="rest">
            <div class="header">
            
                            <img class="logo" src="./images/topBarImages/GUC-logo 2.svg" />
           
           
                            <img class="bar" src="./images/topBarImages/bar.svg"/>
            
          
                            <label class="label1">Faculty of Media Engineering & Technology</label>
            
                    <asp:Button ID="Button1" CssClass="login" runat="server" Text="Login"  />
            
        </div>
        <div class="navbar">
            <div >
                <img src="images/topBarImages/home.svg" alt="Alternate Text" class="navimg" />
                                    <asp:Button Text="Home" runat="server" CssClass="navbtn" OnClick="toHome" />
            </div>
                <div>
                <img src="images/topBarImages/course.svg" alt="Alternate Text"class="navimg"/>
                                    <asp:Button Text="Courses" runat="server" CssClass="navbtnin"  />
            </div>
                <div>
                <img src="images/topBarImages/staff.svg" alt="Alternate Text" class="navimg"/>
                                    <asp:Button Text="Staff" runat="server" CssClass="navbtn" OnClick="toStaff" />
            </div>
                <div >
                <img src="images/topBarImages/studactiv.svg" alt="Alternate Text"class="navimg" />
                                    <asp:Button Text="Student Activity" runat="server" CssClass="navbtn" OnClick="toStudentActiv" />
            </div>
                <div >
                <img src="images/topBarImages/Alumni.svg" alt="Alternate Text"class="navimg2" />
                                    <asp:Button Text="Alumni" runat="server" CssClass="navbtn" OnClick="toAlumni" />
            </div>
                <div >
                <img src="images/topBarImages/about.svg" alt="Alternate Text" class="navimg2" />
                                    <asp:Button Text="About Us" runat="server" CssClass="navbtn" OnClick="toAbout" />
            </div>
           
            
        </div>
        </div>
        </form>
    <br />
    <div class="row_flex">
        
        <div class="Scroll">
      
           <div class="Catalouge">
                        <div class="hierarchyTitle"> <div><img src="images/staff/search.png" style="width:1.6vw;height:1.4vw;"/><input type="text" placeholder="Search.."/></div></div>
               <ul>
                   <li id="CourseCatalouge" class="catalougebtn"><Label class="catalougebtnIN"  >Course Catalouge</Label> </li>
                   <br />
                  
                   <li id="gradCourses" class="catalougebtn"><Label class="catalougebtn" >Graduate Courses</Label></li>
                    <br />
                       <div id="underCourses" class="catalougebtn">
                           <img class="changeimage" src="./images/plusicon.svg" />
                           <Label class="catalougebtn4">Undergraduate Courses</Label>
                   
                       <div id="underGradContent">
                           <ul>
                               <li id="MET" class="catalougebtn2"><Label class="catalougebtn2">Media Engineering and Technology</Label><div class="coll" id="METContent">
                                   <ul>
                                       <li class="catalougebtn3"><a href="CourseHomePage.aspx?major=MET" class="catalougebtn3">Computer Science & Engineering</a></li>
                                       <li class="catalougebtn3"><a href="CourseHomePage.aspx?major=MET" class="catalougebtn3">Digital Media Engineering & Technology</a></li>
                                   </ul>

                               </div>
                               </li>
                               
                               <li id="IET" class="catalougebtn2"><Label class="catalougebtn2">Information Engineering and Technology</Label><div class="coll" id="IETContent">
                                   <ul>
                                       <li class="catalougebtn3"><a href="#" class="catalougebtn3">Electronics</a></li>
                                       <li class="catalougebtn3"><a href="#" class="catalougebtn3">Communication</a></li>
                                       <li class="catalougebtn3"><a href="#" class="catalougebtn3">Networking</a></li>
                                   </ul>

                               </div></li>
                             
                               <li id="EMS" class="catalougebtn2"><Label class="catalougebtn2">Material Science and Engineering</Label><div class="coll" id="EMSContent">
                                   <ul>
                                       <li class="catalougebtn3"><a href="#" class="catalougebtn3">Mechatronics</a></li>
                                       <li class="catalougebtn3"><a href="#" class="catalougebtn3">Materials</a></li>
                                       <li class="catalougebtn3"><a href="#" class="catalougebtn3">Production</a></li>
                                   </ul>

                               </div></li>
                               
                               <li id="MGT" class="catalougebtn2"><a href="#" class="catalougebtn2">Management Technology</a></li>
                           </ul>

                       </div>

                   </div>
               </ul>
               
        </div>
            </div>
            
            <img src="./images/coursePageImages/VbarCourses.svg" alt="Alternate Text" class="vbar" />
       
    <div id="Semesters" runat="server" class="semesters">
        
       
        </div> 
            
        
    </div>
<script>
    var img = document.getElementsByClassName("vbar");
    img[0].style.height = document.querySelector("body").offsetHeight - document.getElementById("rest").offsetHeight - 50+ "px";
    
    document.getElementById("Semesters").style.maxHeight = (document.querySelector("body").offsetHeight - document.getElementById("rest").offsetHeight - 90) * 100 / document.querySelector("body").offsetWidth + "vw";
    window.addEventListener('scroll', (event) => {
        
        var scroll = document.getElementsByClassName("Scroll");
        
        
    })
    window.addEventListener('resize', (event) => {
        
        var img = document.getElementsByClassName("vbar");
        img[0].style.height = document.querySelector("body").offsetHeight - document.getElementById("rest").offsetHeight - 50 + "px";
        document.getElementById("Semesters").style.maxHeight = (document.querySelector("body").offsetHeight - document.getElementById("rest").offsetHeight - 90) * 100 / document.querySelector("body").offsetWidth + "vw";

    })
    function redirect() {

        var serial = event.srcElement.getAttribute("id");
        location.href = "./CoursePage.aspx" + "?id=" + serial;
        
    }
    var gatalouge = document.getElementById("CourseCatalouge");
    var x = document.getElementsByClassName("catalougebtn4");

    
    var grad = document.getElementById("gradCourses");
    var under = document.getElementById("underCourses");
    var img = document.getElementsByClassName("changeimage");
    var underContent = document.getElementById("underGradContent");
    var met = document.getElementById("MET");
    var METContent = document.getElementById("METContent");
    var iet = document.getElementById("IET");
    var IETContent = document.getElementById("IETContent");
    var ems = document.getElementById("EMS");
    var EMSContent = document.getElementById("EMSContent");
    var cont = document.getElementsByClassName("coll");
    var coll = document.getElementsByClassName("collapsible");
    var querystring = location.search;
    if (querystring != "") {
        gatalouge.childNodes.item(0).setAttribute("class", "catalougebtn")
        if (querystring == "?page=2") {
            grad.childNodes.item(0).setAttribute("class", "catalougebtnIN")
        }
        if (querystring == "?page=3") {
            under.childNodes.item(0).setAttribute("class", "catalougebtnIN")
        }

    } 

    
    var j;
    
    gatalouge.addEventListener("click", function () {
        location.href = "./CourseHomePage.aspx";
        x[0].style.cssText = 'font-size:2.34375vw';
        img[0].setAttribute("src", "./images/plusicon.svg");
        this.style.cssText = 'font-weight:bold';
        grad.style.cssText = 'font-weight:400';
        under.style.cssText = 'font-weight:400';
        underContent.style.cssText = 'display : none';
        for (j = 0; j < coll.length; j++){
        cont[j].style.cssText = 'display: none';
        }
        
        
    });
    grad.addEventListener("click", function () {
        gatalouge.childNodes.item(0).setAttribute("class", "catalougebtn")
        img[0].setAttribute("src", "./images/plusicon.svg");
        x[0].style.cssText = 'font-size:2.34375vw';
        this.style.cssText = 'font-weight:bold';
        gatalouge.style.cssText = 'font-weight:400';
        under.style.cssText = 'font-weight:400';
        underContent.style.cssText = 'display : none';
        
        var semesters = document.getElementById("Semesters");
        
        while (semesters.firstChild) {
            semesters.removeChild(semesters.lastChild);
        }
        location.href = "CourseHomePage.aspx" + "?page=" + 2;

        for (j = 0; j < coll.length; j++) {
            cont[j].style.cssText = 'display: none';
            alert(1);
        }
        
        
    });
    under.addEventListener("click", function () {
        gatalouge.childNodes.item(0).setAttribute("class", "catalougebtn")
       
        grad.childNodes.item(0).setAttribute("class", "catalougebtn");


        this.style.cssText = 'font-weight:bold';
        gatalouge.style.cssText = 'font-weight:400';
        grad.style.cssText = 'font-weight:400';
        underContent.style.cssText = 'display : block';
        x[0].style.cssText = 'font-size:2.13vw';
        img[0].setAttribute("src", "./images/upicon.svg");
        //location.href = "CourseHomePage.aspx" + "?page=" + 3;


    });
    met.addEventListener("click", function () {
        METContent.style.cssText = 'display:block';
        IETContent.style.cssText = 'display:none';
        EMSContent.style.cssText = 'display:none; ';
    });
    iet.addEventListener("click", function () {
        IETContent.style.cssText = 'display:block';
        METContent.style.cssText = 'display:none; ';
        EMSContent.style.cssText = 'display:none; ';
    });
    ems.addEventListener("click", function () {
        EMSContent.style.cssText = 'display:block';
        METContent.style.cssText = 'display:none; ';
        IETContent.style.cssText = 'display:none; ';

    });
    
    
var i;

for (i = 0; i < coll.length; i++) {
    coll[i].addEventListener("click", function () {
        
    this.classList.toggle("active");
        var content = this.nextElementSibling;
        content.style.transition = "overflow 0.2s ease-out";
        
        if (content.style["overflow"] == "hidden" || content.style["overflow"] == "" ) {
            
            content.style.overflow = "unset"
        }
        else
            content.style.overflow = "hidden"
    if (content.style.maxHeight){
     content.style.maxHeight = null;
    } else {
        content.style.maxHeight = content.scrollHeight + "px";
    } 
  });
}
    
</script>

</body>
</html>

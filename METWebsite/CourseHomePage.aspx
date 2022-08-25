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
    <form action="/" method="post" runat="server">
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
                <img src="images/topBarImages/about_red.svg" alt="Alternate Text" class="navimg3" />
                                    <asp:Button Text="About Us" runat="server" CssClass="navbtn" OnClick="toAbout" />
            </div>
           
            
        </div>
        </form>

    <div class="row_flex">
           <div class="Catalouge">
                        <div class="hierarchyTitle"> <div><img src="images/staff/search.png" style="width:1.6vw;height:1.4vw;"/><input type="text" placeholder="Search.."/></div></div>
               <ul>
                   <li id="CourseCatalouge"><Label>Course Catalouge</Label> </li>
                   <li id="gradCourses"><Label>Graduate Courses</Label></li>
                   <li id="underCourses"><Label>Undergraduate Courses</Label>
                       <div id="underGradContent">
                           <ul>
                               <li id="MET"><Label>Media Engineering and Technology</Label><div class="coll" id="METContent">
                                   <ul>
                                       <li><a href="#">Computer Science & Engineering</a></li>
                                       <li><a href="#">Digital Media Engineering & Technology</a></li>
                                   </ul>

                               </div>
                               </li>
                               <li id="IET"><Label>Information Engineering and Technology</Label><div class="coll" id="IETContent">
                                   <ul>
                                       <li><a href="#">Electronics</a></li>
                                       <li><a href="#">Communication</a></li>
                                       <li><a href="#">Networking</a></li>
                                   </ul>

                               </div></li>
                               <li id="EMS"><Label>Material Science and Engineering</Label><div class="coll" id="EMSContent">
                                   <ul>
                                       <li><a href="#">Mechatronics</a></li>
                                       <li><a href="#">Materials</a></li>
                                       <li><a href="#">Production</a></li>
                                   </ul>

                               </div></li>
                               <li id="MGT"><a href="#">Management Technology</a></li>
                           </ul>

                       </div>

                   </li>
               </ul>
               
        </div>
            <img src="./images/coursePageImages/VbarCourses.svg" alt="Alternate Text" class="vbar" />
    <div class="semesters">
<button class="collapsible">Semester 1</button>
<div class="content">
<ul>
                <li><a href="#">CSEN102 Introduction to Computer Science</a></li>
                <li><a href="#">CSEN102 Introduction to Computer Science</a></li>
            </ul>

</div>
<button class="collapsible">Semester 2</button>
<div class="content">
<ul>
                <li><a href="#">CSEN102 Introduction to Computer Science</a></li>
                <li><a href="#">CSEN102 Introduction to Computer Science</a></li>
            </ul></div>
<button class="collapsible">Semester 3</button>
<div class="content">
<ul>
                <li><a href="#">CSEN102 Introduction to Computer Science</a></li>
                <li><a href="#">CSEN102 Introduction to Computer Science</a></li>
            </ul></div>
        <button class="collapsible">Semester 4</button>
<div class="content">
<ul>
                <li><a href="#">CSEN102 Introduction to Computer Science</a></li>
                <li><a href="#">CSEN102 Introduction to Computer Science</a></li>
            </ul></div>
        <button class="collapsible">Semester 5</button>
<div class="content">
<ul>
                <li><a href="#">CSEN102 Introduction to Computer Science</a></li>
                <li><a href="#">CSEN102 Introduction to Computer Science</a></li>
            </ul></div>
        <button class="collapsible">Semester 6</button>
<div class="content">
<ul>
                <li><a href="#">CSEN102 Introduction to Computer Science</a></li>
                <li><a href="#">CSEN102 Introduction to Computer Science</a></li>
            </ul></div>
       
        </div>
        </div>
<script>

    var gatalouge = document.getElementById("CourseCatalouge");
    var grad = document.getElementById("gradCourses");
    var under = document.getElementById("underCourses");
    var underContent = document.getElementById("underGradContent");
    var met = document.getElementById("MET");
    var METContent = document.getElementById("METContent");
    var iet = document.getElementById("IET");
    var IETContent = document.getElementById("IETContent");
    var ems = document.getElementById("EMS");
    var EMSContent = document.getElementById("EMSContent");
    var cont = document.getElementsByClassName("coll");
    var j;
    gatalouge.addEventListener("click", function () {
        this.style.cssText = 'font-weight:bold';
        grad.style.cssText = 'font-weight:400';
        under.style.cssText = 'font-weight:400';
        underContent.style.cssText = 'display : none';
        for (j = 0; j < coll.length; j++){
        cont[j].style.cssText = 'display: none';
    }
        
    });
    grad.addEventListener("click", function () {
        this.style.cssText = 'font-weight:bold';
        gatalouge.style.cssText = 'font-weight:400';
        under.style.cssText = 'font-weight:400';
        underContent.style.cssText = 'display : none';
        for (j = 0; j < coll.length; j++) {
            cont[j].style.cssText = 'display: none';
        }
    });
    under.addEventListener("click", function () {
        this.style.cssText = 'font-weight:bold';
        gatalouge.style.cssText = 'font-weight:400';
        grad.style.cssText = 'font-weight:400';
        underContent.style.cssText = 'display : block';

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
    
var coll = document.getElementsByClassName("collapsible");
var i;

for (i = 0; i < coll.length; i++) {
  coll[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var content = this.nextElementSibling;
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

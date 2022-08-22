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
                <img src="images/topBarImages/about_red.svg" alt="Alternate Text" class="navimg3" />
                                    <asp:Button Text="About Us" runat="server" CssClass="navbtn" />
            </div>
           
            
        </div>
        </form>

    <div class="row_flex">
        <div class="Catalouge">

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

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CourseHomePage.aspx.cs" Inherits="METWebsite.WebForm1" %>

<!DOCTYPE html>
<html>
<head runat="server">
            <link  rel="stylesheet" href="./StyleSheets/CourseHome.css"/>

<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
    <div class="row_flex">
    <div class="Catalouge">


        </div>
            <img src="./images/coursePageImages/VbarCourses.svg" alt="Alternate Text" class="vbar" />
    <div class="semesters">
        <button class="collapsible">Open Section 1</button>
<div class="content">
  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
</div>
<button class="collapsible">Open Section 2</button>
<div class="content">
  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
</div>
<button class="collapsible">Open Section 3</button>
<div class="content">
  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
</div>


    </div>
        </div>

<script>
var coll = document.getElementsByClassName("collapsible");
    var i;
  
    for (i = 0; i < coll.length; i++) {
        coll[i].addEventListener("click", function () {
            
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

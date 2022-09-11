<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InstructorViewCourse.aspx.cs" Inherits="METWebsite.InstructorViewCourse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link rel="stylesheet" href="./StyleSheets/InstructorHome.css" />
    <link rel="stylesheet" href="./StyleSheets/InstructorViewCourse.css" />

</head>
<body>
    <form id="form1" runat="server">

        <div id="myNav" class="overlay">
  
  <div class="overlay-content">
      <asp:Label Text="Edit Announcement" runat="server" CssClass="overlayTitle" />
      <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
      <hr />
      <asp:TextBox runat="server"  id="editText" class="AnnouncmentTextBox" />
<%--      <textbox runat="server" id="editText" class="AnnouncmentTextBox" ></textbox>--%>
      <%--<input runat="server" id="editText" class="AnnouncmentTextBox" type="text" />--%>
      <div class="confirm_cancel_Buttons">
          
                      <asp:Button CssClass="show-more" runat="server" Text="Confirm" OnClick="EditConfirm" />
                      <asp:Button ID="Button2" CssClass="cancel" runat="server" Text="Cancel" />

      </div>
  </div>
</div>
        <div class="header">

            <img class="logo" src="./images/topBarImages/GUC-logo 2.svg" />


            <img class="bar" src="./images/topBarImages/bar.svg" />


            <label class="label1">Faculty of Media Engineering & Technology</label>
             <button class="logout" runat="server" onserverclick="logOut_click">
                 <img class="logoutIcon" src="./images/InstructorHome/logout.svg" /><span class="logoutlabel">Log Out</span></></button>
        </div>

        <div class="flex-container-1">
            <div id="ctitle" class="flex-child-1" runat="server">
            </div>

            <div class="flex-child-1 center">
                <div class="margin-bottom">
                    <img class="nav2-img" src="./images/coursePageImages/credit.svg" />
                    <span id="ccredits" runat="server"></span>
                </div>
                <div class="margin-bottom">
                    <img class="nav2-img" src="./images/coursePageImages/lecture.svg" />
                    <span id="clecs" runat="server"></span>
                </div>
                <div class="margin-bottom">
                    <img class="nav2-img" src="./images/coursePageImages/tutorial.svg" />
                    <span id="ctuts" runat="server"></span>
                </div>
                <div class="margin-bottom">
                    <img class="nav2-img" src="./images/coursePageImages/lab.svg" />
                    <span id="clabs" runat="server"></span>
                </div>
            </div>

        </div>

        <div class="title">
            <p>Course Updates</p>
        </div>
       
            <table id="updatesTable" runat="server">
            </table>
        <button class="AddNew" runat="server">
            <img class="editIcon" src="./images/InstructorHome/plusIcon.svg" />
            <span class="innerSpan">Add Announcement</span>
        </button>
        <div class="line2 centerdiv" id="description">
        </div>

        <div class="title">
            <p>Syllabus</p>
        </div>
        <div id="csyllabus" runat="server">

            <div class="flex-container-2">
                <div class="flex-child">
                     <p class="syllabus-title">Week </p>
                     <p class="week-number">15</p></div>
                <div class="flex-child">
                     <div>
                         <span class="syllabus-title">Title</span>
                         <asp:ImageButton  CssClass="weekEdit" ID="Image2" runat="server" ImageUrl="./images/InstructorHome/blackEdit.svg" onmouseover="this.src='./images/InstructorHome/redEdit.svg'" onmouseout="this.src='./images/InstructorHome/blackEdit.svg'"/>
                      </div> 
                    <p class="syllabus-description">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do e cupidatat non proident, sunt in.amet, consectetur adipiscing elit, sed do e cupidatat non proident, sunt in.</p>
                    </div>
                </div>  
            <img class="syllabus-line" src="./images/coursePageImages/line.svg" />
            <ul class="materialsUl">
                <li class="materialsLi"><asp:ImageButton   ID="ImageButton3" runat="server" ImageUrl="./images/InstructorHome/blackDelete.svg" onmouseover="this.src='./images/InstructorHome/redDelete.svg'" onmouseout="this.src='./images/InstructorHome/blackDelete.svg'"/><a >Lecture 1</a></li>
                <li class="materialsLi"><asp:ImageButton   ID="ImageButton4" runat="server" ImageUrl="./images/InstructorHome/blackDelete.svg" onmouseover="this.src='./images/InstructorHome/redDelete.svg'" onmouseout="this.src='./images/InstructorHome/blackDelete.svg'"/><a href="#">Lecture 1</a></li>
            </ul>
             <button class="AddNewMaterials" runat="server" >
            <img class="editIcon" src="./images/InstructorHome/plusIcon.svg" />
            <span class="innerSpan">Add Materials</span>
        </button>

            
            
        </div>

        
        <script>
            function openNav() {
                document.getElementById("myNav").style.display = "block";
            }

            function closeNav() {
                document.getElementById("myNav").style.display = "none";
            }
        </script>

        <div class="show-moreDiv">
            <asp:Button ID="mybtn7" CssClass="show-more" runat="server" Text="Show More" OnClientClick="myFunction();return false;" />
        </div>

        <div class="line2 centerdiv" id="instructors">
        </div>


      

        <div class="title">
            <p>Resources</p>
        </div>

        <div class="margin-bottom margin-left" id="cres" runat="server">
        </div>
    </form>
</body>
</html>

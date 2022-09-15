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
        <div id="EditOverlay" class="overlay">
  
  <div class="overlay-content">
      <asp:Label Text="Edit Announcement" runat="server" CssClass="overlayTitle"  />
    
      <hr />
      <input runat="server" id="editText" class="AnnouncmentTextBox" type="text"   />
      <div class="confirm_cancel_Buttons">
          
                      <asp:Button CssClass="show-more" runat="server" Text="Confirm" OnClick="EditConfirm"/>
                      <asp:Button  CssClass="cancel" runat="server" Text="Cancel" OnClientClick="closeEditOverlay()" />

      </div>
  </div>
</div>  
        
        
        
        <div id="EditWeekOverlay" class="overlay">
  
  <div class="overlay-content">
      <asp:Label Text="Edit Week Details" runat="server" CssClass="overlayTitle"  />
    
      <hr />
      
      <input id="weekTitleEdit" runat="server" class="AnnouncmentTextBox" type="text" placeholder=" Week Title..."  style="height: 40px;" />
      
      <input id="weekDescriptionEdit" runat="server" class="AnnouncmentTextBox" type="text" placeholder="Description..."   />
      <div class="confirm_cancel_Buttons">
          
                      <asp:Button CssClass="show-more" runat="server" Text="Confirm" OnClick="EditWeekConfirm" />
                      <asp:Button  CssClass="cancel" runat="server" Text="Cancel" />

      </div>
  </div>
</div> 
        
        
   <div id="AddWeekOverlay" class="overlay">
  
  <div class="overlay-content">
      <asp:Label Text="Add New Week" runat="server" CssClass="overlayTitle"  />
    
      <hr />
      <asp:DropDownList runat="server" id="dropdownWeeks">
 
      </asp:DropDownList>
      <br />
      <input id="weekTitleAdd" runat="server" class="AnnouncmentTextBox" type="text" placeholder=" Week Title..."  style="height: 40px;" />
      
      <input id="weekDescriptionAdd" runat="server" class="AnnouncmentTextBox" type="text" placeholder="Description..."   />
      <div class="confirm_cancel_Buttons">
          
                      <asp:Button CssClass="show-more" runat="server" Text="Confirm" OnClick="AddNewweekConfirm" />
                      <asp:Button  CssClass="cancel" runat="server" Text="Cancel" />

      </div>
  </div>
</div>



        <div id="deleteOverlay" class="overlay">
            <div class="overlay-content">
                <br />
            <asp:Label Text="This Announcement will be deleted,Are you sure?" runat="server" Style="color : black; " />
            <br />
             <div class="yes_no_Buttons">

                      <asp:Button CssClass="show-more" runat="server" Text="Yes" OnClick="DeleteYes" />
                      <asp:Button  CssClass="cancel" runat="server" Text="No" />
</div>
      </div>
        </div> 
        <div id="deleteMaterialsOverlay" class="overlay">
            <div class="overlay-content">
                <br />
            <asp:Label Text="This File will be deleted,Are you sure?" runat="server" Style="color : black; " />
            <br />
             <div class="yes_no_Buttons">

                      <asp:Button CssClass="show-more" runat="server" Text="Yes" OnClick="DeleteMaterialYes" />
                      <asp:Button  CssClass="cancel" runat="server" Text="No" />
</div>
      </div>
        </div>
        
     
        <div id="AddAnnouncmentOverlay" class="overlay">
  
  <div class="overlay-content">
      <asp:Label Text="Add Announcement" runat="server" CssClass="overlayTitle" />
    
      <hr />
      <input runat="server" id="AddAnnText" class="AnnouncmentTextBox" type="text" oninput="TextBox2_TextChanged" placeholder="Write Here..."  />
      <div class="confirm_cancel_Buttons">
          

                      <asp:Button ID="confirmAdd" CssClass="show-more" runat="server" Text="Confirm" OnClick="AddAnnConfirm" />
                      <asp:Button  CssClass="cancel" runat="server" Text="Cancel" OnClientClick="closeAddAnnOverlay" />

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
      
            <p class="title">Course Updates</p>
     
       
            <table class="updatesTable" id="updatesTable" runat="server">
            </table>
        <button class="AddNew" runat="server" onserverclick="AddAnnouncment">
            <img class="editIcon" src="./images/InstructorHome/plusIcon.svg" />
            <span class="innerSpan">Add Announcement</span>
        </button>
        <div class="line2 centerdiv" id="description">
        </div>

     
            <p class="title">Syllabus</p>
        <div id="csyllabus" runat="server">

            <div class="flex-container-2">
                <div class="flex-child">
                     <p class="syllabus-title">Week </p>
                     <p class="week-number">15</p>
                    <p class="syllabus-title"> 20/10/2022</p>
                </div>
                <div class="flex-child">
                     <div class="divTitle">
                         <span class="syllabus-title">Title of the week hello hi hello and welcome Hello Hi </span>
                         <asp:ImageButton  CssClass="weekEdit" ID="Image2" runat="server" ImageUrl="./images/InstructorHome/blackEdit.svg" onmouseover="this.src='./images/InstructorHome/redEdit.svg'" onmouseout="this.src='./images/InstructorHome/blackEdit.svg'"/>
                      </div> 
                    <p class="syllabus-description">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do e cupidatat non proident, sunt in.amet, consectetur adipiscing elit, sed do e cupidatat non proident, sunt in.</p>
                    </div>
                </div>  
           
                 
          

            
            
        </div>

        
        <script>
            function openEditOverlay() {
                document.getElementById("EditOverlay").style.display = "block";

            }
            function openAddAnnOverlay() {
                document.getElementById("AddAnnouncmentOverlay").style.display = "block";
            }
            function openDeleteOverlay() {
                document.getElementById("deleteOverlay").style.display = "block";
            }
            function openDeleteMaterialsOverlay() {
                document.getElementById("deleteMaterialsOverlay").style.display = "block";
            }
            function openEditWeekOverlay() {
                document.getElementById("EditWeekOverlay").style.display = "block";
            }
            function openAddWeekOverlay() {
                document.getElementById("AddWeekOverlay").style.display = "block";
            }

            
            
        </script>

       
        <div class="line2 centerdiv" id="instructors">
        </div>
       
            <p class="title">Resources</p>
        <table runat="server" class="updatesTable" id="resourcesTable">
            <tr>
                <td></td>
            </tr>
        </table>
        <div id="AddResourceDiv" runat="server" style="padding-bottom : 3vw"></div>

    </form>
</body>
</html>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminAddCourse.aspx.cs" Inherits="METWebsite.AdminAddCourse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="./StyleSheets/AdminAddCourse.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="scrollable">
            <div class="header">    

                <img class="logo" src="./images/topBarImages/GUC-logo 2.svg" />


                <img class="bar" src="./images/topBarImages/bar.svg" />


                <label class="label1">Faculty of Media Engineering & Technology</label>

                <img class="adminLogo" src="./images/adminImages/adminLogo.svg" />
                <label class="adminLabel">Admin</label>

            </div>
        </div>

 <nav>
           
            <ul class="navUl">
                <li><img class="dashboardIcon" src="./images/adminImages/dashboardIcon-white.svg" /></li>
                <li><a class="dashboard" href="AdminHomePage.aspx">Admin Dashboard</a></li>


                <li class="dropdown"><a>Home</a>
                    <ul class="dropdown-content" id="dropdown-home">
                        <li><a>Edit Photo Gallery</a></li>
                        <li><a>Add News</a></li>
                    </ul>
                </li>
                <li class="dropdown"><a href="#">Courses</a>
                    <ul class="dropdown-content" id="dropdown-course" >
                        <li><a>Add Course</a></li>
                        <li><a>Remove Course</a></li>
                        <li><a>Add Instructor</a></li>
                        <li><a>Remove Instructor</a></li>
                        <li><a>Assign Instructor</a></li>
                        <li><a>Remove Instructor</a></li>
                    </ul>
                </li>
                <li class="dropdown"><a href="#">Student Activity</a>
                    <ul class="dropdown-content" id="dropdown-studentActivity">
                        <li><a>Add Student Activity</a></li>
                        <li><a>Remove Student Activity</a></li>
                    </ul>
                </li>
                <li class="dropdown"><a href="#">Other</a>
                    <ul class="dropdown-content" id="dropdown-others">
                         <li><a>Add New Alumni</a></li>
                        <li><a>Define Weeks </a></li>
                        <li><a>Define Weeks </a></li>
                    </ul>
                </li>
                
                
            </ul>
        </nav>  




        <div class="addCourseDiv">
            <label>Add Course</label>
        </div>

        <div class="twoColumns">
            <div class="column1">
                <div class="title">
                    <label class="titleLabel" for="titleInput">Course Title: </label>
                    <input type="text" required id="titleInput" runat="server" name="titleInput" placeholder="title" />

                </div>
                <div class="code">
                    <label class="courseLabel" for="codeInput">Course Code: </label>
                    <input type="text" required  id="codeInput" runat="server" name="codeInput" placeholder="code" />
                </div>
                <div class="validarotContainer">
                    
                <div class="code">
                    <label class="courseLabel" for="credit">Credits Hours: </label>                    
                    <input type="number" min="1" max="10" required  id="credit1" runat="server" name="codeInput" placeholder="credit hours" />
                    </div>
                   
                </div>

                <div class="validarotContainer">
                <div class="lectures">
                    <label class="lecturesLabel" for="lectureInput">No. of Lectures: </label>
                    <input type="number" min="1" max="30" required id ="lectureInput1" runat="server" placeholder="lectures" name="lectureInput" />
                    
                </div>
                    
                    </div>

                <div class="validarotContainer">
                <div class="tuts">
                    <label class="tutsLabel" for="tutorialInput">No. of Tutorials: </label>
                    <input type="number" min="1" max="30" required id ="tutorialInput1" runat="server" placeholder="tutorials" name="tutorialInput" />
                    
                </div>
                   
                 </div>

                <div class="validarotContainer">
                <div class="labs">
                    <label class="labsLabel" for="labsInput">No. of Labs: </label>
                    <input type="number" required id="labsInput1" runat="server" name="labsInput" placeholder="labs" />
                </div>
                   
                    </div>
            </div>
            <div class="column2">

                <div class="validarotContainer">
                <div class="labs">
                    <label class="labsLabel" for="semesterInput">Semester Number: </label>
                    <input type="number" min="1" max="10" required id="semesterInput1" runat="server" name="semesterInput" placeholder="semester" />

                </div>
                    <label class="validator2">(enter 0 for graduates)</label>
                    </div>
                <div class="elective">
                    
                    <input type="checkbox"  class="checkbox"  id="iselective" runat="server" />
                    <label class="majorsLabel">Is Elective</label>
                    
                </div>
                

                <label class="majorsLabel" id="majorLabel" runat="server"  >Majors Involved: </label>
               
                <div class="majors">
                    <div class="met">
                        <label  class="metLabel" >MET: </label>
                        <div class="subMet">
                        <div>
                        <input type="checkbox"  class="checkbox" id="csen" runat="server" />
                        <label class="subMajor">CSEN</label>
                        </div>
                        <div>
                        <input type="checkbox"  class="checkbox" id="dmet" runat="server" />
                        <label class="subMajor">DMET</label>
                        </div>
                            </div>


                    </div>
                    <div class="iet">
                        <label class="ietLabel">IET: </label>
                        <div class="subIet">

                        <div>
                        <input type="checkbox"  class="checkbox" id="networks" runat="server" />
                        <label class="subMajor">Networks</label>
                        </div>

                        <div>
                        <input type="checkbox"  class="checkbox" id="communications" runat="server" />
                        <label class="subMajor">Communications</label>
                        </div>
                        <div>
                        <input type="checkbox"  class="checkbox" id="electronics" runat="server" />
                        <label class="subMajor">Electronics</label>
                        </div>
                            </div>
                    </div>
                    <div class="otherMajors">
                        <label class="otherLabel">Other Majors: </label>
                        <div class="subColumns">
                            <div class="subColumn1">
                                <div>
                                <input type="checkbox"  class="checkbox" id="bi" runat="server" />
                                <label class="subMajor">BI</label>
                               </div>
                                <div>
                                <input type="checkbox"  class="checkbox" id="management" runat="server" />
                                <label class="subMajor">Management</label>
                                </div>
                                <div>
                                <input type="checkbox"  class="checkbox" id="pharmacy" runat="server" />
                                <label class="subMajor">Pharmacy</label>
                                </div>
                            </div>
                            <div class="subColumn2">
                                <div>
                                <input type="checkbox"  class="checkbox" id="ems" runat="server" />
                                <label class="subMajor">EMS</label>
                                </div>
                                <div>
                                <input type="checkbox"  class="checkbox" id="mctr" runat="server" />
                                <label class="subMajor">MCTR</label>
                                </div>
                                <div>
                                <input type="checkbox"  class="checkbox" id="graduate" runat="server" />
                                <label class="subMajor">Graduate</label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
              <div class="courseDescription">
                <label class="description" for="descriptionInput">Course Description: </label>
                <textarea  type="text" id="descriptionInput1" runat="server" name="descriptionInput" required/>
                  </div>
            </div>
            
        </div>
        <div class="buttonDiv">
            <asp:Button ID="Button1" CssClass="addCourse" runat="server" Text="Add Course" OnClick="addCourse_Click"  />
            <asp:Button ID="button2" CssClass="yesnobtn" runat="server" Text="Yes" OnClick="Yes_Click1" Visible="false"  />
            <asp:Button ID="button3" CssClass="yesnobtn" runat="server" Text="No" visible="false" />
        </div>
    </form>


    <script>
        function validate() {;
            var count = 0;
            var remember = document.getElementById("remember");
            if (remember.checked) {
                alert("checked");
            } 
        }
    </script>
</body>
    
</html>

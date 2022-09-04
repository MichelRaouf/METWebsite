<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminAddCourse.aspx.cs" Inherits="METWebsite.AdminAddCourse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link  rel="stylesheet" href="./StyleSheets/AdminAddCourse.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="scrollable">
            <div class="header">
            
                            <img class="logo" src="./images/topBarImages/GUC-logo 2.svg" />
           
           
                            <img class="bar" src="./images/topBarImages/bar.svg"/>
            
          
                            <label class="label1">Faculty of Media Engineering & Technology</label>
            
                <img class="adminLogo" src="./images/adminImages/adminLogo.svg" />
                <label class="adminLabel">Admin</label>
            
        </div>
        </div>
        
        <div class="navBar">
            <div class="dashIconLabel">
                <img class="dashboardIcon" src="./images/adminImages/dashboardIcon-white.svg" />
                <a class="dashboard" href="AdminHomePage.aspx">Admin Dashboard</a>
            </div>
            <div class="navLabels">Home</div>
            <div class="navLabels">Courses</div>
            <div class="navLabels">Student Activity</div>
            <div class="navLabels">Other</div>
        </div>
        <div class="addCourseDiv">
            <label>Add Course</label>
        </div>

        <div class="twoColumns">
            <div class="column1">
                <div class="title">
                    <label class="titleLabel" for="titleInput">Course Title: </label>
                    <input type="text" id="titleInput" name="titleInput" placeholder="title"/>
                </div>
                <div class="code">
                    <label class="courseLabel" for="codeInput">Course Code: </label>
                    <input type="text" id="codeInput" name="codeInput" placeholder="code"/>
                </div>
                <div class="lectures">
                    <label class="lecturesLabel" for="lectureInput">No. of Lectures: </label>
                    <input type="text" id="lectureInput" name="lectureInput" placeholder="lectures"/>
                </div>
                <div class="tuts">
                    <label class="tutsLabel" for="tutorialInput">No. of Tutorials: </label>
                    <input type="text" id="tutorialInput" name="tutorialInput" placeholder="tutorials"/>
                </div>
                <div class="labs">
                    <label class="labsLabel" for="labsInput">No. of Labs: </label>
                    <input type="text" id="labsInput" name="labsInput" placeholder="labs"/>
                </div>
            </div>
            <div class="column2">
                <label class="majorsLabel">Majors Involved:</label>
                <div class="majors">
                    <div class="met">
                        <label class="metLabel">MET: </label>
                        <br />
                        <input type="checkbox" id="csen" />
                        <label class="subMajor">CSEN</label>
                        <br />
                        <input type="checkbox" id="dmet" />
                        <label class="subMajor">DMET</label>
                    </div>
                    <div class="iet">
                        <label class="ietLabel">IET: </label>
                        <br />
                        <input type="checkbox" id="networks" />
                        <label class="subMajor">Networks</label>
                        <br />
                        <input type="checkbox" id="communications" />
                        <label class="subMajor">Communications</label>
                        <br />
                        <input type="checkbox" id="electronics" />
                        <label class="subMajor">Electronics</label>
                    </div>
                    <div class="otherMajors">
                        <label class="otherLabel">Other Majors: </label>
                        <div class="subColumns">
                            <div class="subColumn1">
                                <input type="checkbox" id="bi" />
                                <label class="subMajor">BI</label>
                                <br />
                                <input type="checkbox" id="management" />
                                <label class="subMajor">Management</label>
                                <br />
                                <input type="checkbox" id="pharmacy" />
                                <label class="subMajor">Pharmacy</label>
                            </div>
                            <div class="subColumn2">
                                <input type="checkbox" id="ems" />
                                <label class="subMajor">EMS</label>
                                <br />
                                <input type="checkbox" id="mctr" />
                                <label class="subMajor">MCTR</label>
                                <br />
                                <input type="checkbox" id="graduate" />
                                <label class="subMajor">Graduate</label>
                            </div>
                        </div> 
                    </div>
                </div>
                <label class="description" for="descriptionInput">Course Description: </label>
                <br />
                <input type="text" id="descriptionInput" name="descriptionInput" />
            </div>
        </div>
    </form>
</body>
</html>

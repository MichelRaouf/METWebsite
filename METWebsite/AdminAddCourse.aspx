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
                    <input type="text" id="titleInput" runat="server" name="titleInput" placeholder="title" />
                </div>
                <div class="code">
                    <label class="courseLabel" for="codeInput">Course Code: </label>
                    <input type="text" id="codeInput" runat="server" name="codeInput" placeholder="code" />
                </div>
                <div class="code">
                    <label class="courseLabel" for="credit">Credits Hours: </label>
                    <input type="text" id="credit" runat="server" name="codeInput" placeholder="credits hours" />
                </div>
                <div class="lectures">
                    <label class="lecturesLabel" for="lectureInput">No. of Lectures: </label>
                    <input type="text" id="lectureInput" runat="server" name="lectureInput" placeholder="lectures" />
                </div>
                <div class="tuts">
                    <label class="tutsLabel" for="tutorialInput">No. of Tutorials: </label>
                    <input type="text" id="tutorialInput" runat="server" name="tutorialInput" placeholder="tutorials" />
                </div>
                <div class="labs">
                    <label class="labsLabel" for="labsInput">No. of Labs: </label>
                    <input type="text" id="labsInput" runat="server" name="labsInput" placeholder="labs" />
                </div>
            </div>
            <div class="column2">
                <div class="met">
                    <br />
                    <input type="checkbox" id="iselective" runat="server" />
                    <label class="majorsLabel">Is Elective</label>
                    <br />
                </div>
                <br />

                <label class="majorsLabel">Majors Involved:</label>
                <br />
                <br />
                <div class="majors">
                    <div class="met">
                        <label class="metLabel">MET: </label>
                        <br />
                        <input type="checkbox" id="csen" runat="server" />
                        <label class="subMajor">CSEN</label>
                        <br />
                        <input type="checkbox" id="dmet" runat="server" />
                        <label class="subMajor">DMET</label>
                    </div>
                    <div class="iet">
                        <label class="ietLabel">IET: </label>
                        <br />
                        <input type="checkbox" id="networks" runat="server" />
                        <label class="subMajor">Networks</label>
                        <br />
                        <input type="checkbox" id="communications" runat="server" />
                        <label class="subMajor">Communications</label>
                        <br />
                        <input type="checkbox" id="electronics" runat="server" />
                        <label class="subMajor">Electronics</label>
                    </div>
                    <div class="otherMajors">
                        <label class="otherLabel">Other Majors: </label>
                        <div class="subColumns">
                            <div class="subColumn1">
                                <input type="checkbox" id="bi" runat="server" />
                                <label class="subMajor">BI</label>
                                <br />
                                <input type="checkbox" id="management" runat="server" />
                                <label class="subMajor">Management</label>
                                <br />
                                <input type="checkbox" id="pharmacy" runat="server" />
                                <label class="subMajor">Pharmacy</label>
                            </div>
                            <div class="subColumn2">
                                <input type="checkbox" id="ems" runat="server" />
                                <label class="subMajor">EMS</label>
                                <br />
                                <input type="checkbox" id="mctr" runat="server" />
                                <label class="subMajor">MCTR</label>
                                <br />
                                <input type="checkbox" id="graduate" runat="server" />
                                <label class="subMajor">Graduate</label>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <label class="description" for="descriptionInput">Course Description: </label>
                <br />
                <br />
                <input type="text" id="descriptionInput" runat="server" name="descriptionInput" />
            </div>
            <br />
            <br />
        </div>
        <div class="buttonDiv">
            <asp:Button ID="Button1" CssClass="addCourse" runat="server" Text="Add Course" OnClick="addCourse_Click" />
        </div>
    </form>
</body>
</html>

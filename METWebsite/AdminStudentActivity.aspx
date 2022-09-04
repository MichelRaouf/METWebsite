<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminStudentActivity.aspx.cs" Inherits="METWebsite.AdminStudentActivity" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="twoColumns">
            <div class="column1">
                <div class="section">
                    <label class="label">Title</label>
                    <input type="text"/>
                </div>
                <div class="section">
                    <label class="label">Type</label>
                    <input type="text"/>
                </div>
                <div class="section">
                    <label class="label">Icon</label>
                    <asp:Button  CssClass="login" runat="server" Text="Upload Icon" />
                </div>
                <div class="section">
                    <label class="label">Background-Color</label>
                </div>
                <div class="section">
                    <label class="label">About</label>
                    <input type="text" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>

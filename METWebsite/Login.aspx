<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="METWebsite.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label Text="Username" runat="server" />
        <asp:TextBox runat="server" id="username"/>
        <br />
        <asp:Label Text="Password" runat="server" />
        <asp:TextBox runat="server" ID="password" />
        <br />

        <asp:Button Text="Login" ID="LoginInstructor" runat="server" OnClick="LoginInstructor_Click" />
    </form>
</body>
</html>

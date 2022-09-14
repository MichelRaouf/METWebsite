<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="METWebsite.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link  rel="stylesheet" href="./StyleSheets/login.css"/>

</head>
<body>
    <form id="form1" runat="server">
        <div class="signIn">
            <div>
            <p class="welcomeMET">Welcome to M<span style="color:#ED1C24">E</span><span style="color:#FFCB05">T</span></p>
            <p class="title">Sign in</p>
                </div>
            <asp:Label Text="Enter your  email address" runat="server" CssClass="signInLabel" />
        <asp:TextBox runat="server" id="username" CssClass="signInTextBox"/>
        
        <asp:Label Text="Enter your Password" runat="server"  CssClass="signInLabel"  />
        <asp:TextBox runat="server" ID="password" CssClass="signInTextBox" />
     

        <asp:Button Text="Login" ID="LoginInstructor" runat="server" OnClick="LoginInstructor_Click" />

        </div>
        
    </form>
</body>
</html>

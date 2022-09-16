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
            <p class="welcomeMET">Welcome to <span style="font-weight:600">M</span><span style="color:#ED1C24; font-weight : 600">E</span><span style="color:#FFCB05; font-weight : 600">T</span></p>
            <p class="title">Sign in</p>
                </div>
            <asp:Label Text="Enter your  email address" runat="server" CssClass="signInLabel"  />
            <input type="email" runat="server" id="username" class="signInTextBox" placeholder="email address" required/>
            <asp:Label Text="Worng email" runat="server" CssClass="wrongInput" ID="wrongEmail"  />
       
        
        <asp:Label Text="Enter your Password" runat="server"  CssClass="signInLabel"  />
            <input type="password" runat="server" id="password" class="signInTextBox" placeholder="password" required />
                        <asp:Label Text="Worng password" runat="server" CssClass="wrongInput" id="wrongPass" />

        
            
            <a href="#">Forget Password</a>
        <asp:Button Text="Sign in" CssClass="loginButton" ID="LoginInstructor" runat="server" OnClick="LoginInstructor_Click" />

        </div>
        <img class="METLogo" src="./images/InstructorHome/MET.svg"/>
    </form>
</body>
</html>

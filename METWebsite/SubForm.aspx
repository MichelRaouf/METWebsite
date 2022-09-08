<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SubForm.aspx.cs" Inherits="METWebsite.SubForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   <form id="form1" runat="server">

    <div>

        <h4>Popup page</h4>

        TextBox 1 : <asp:TextBox ID="TextBox1" runat="server" ClientIDMode="Static" /><br />

        TextBox 2 : <asp:TextBox ID="TextBox2" runat="server" ClientIDMode="Static" /><br />

        TextBox 3 : <asp:TextBox ID="TextBox3" runat="server" ClientIDMode="Static" /><br />

        <asp:Button runat="server" Text="Submit" OnClientClick="SubmitPage()" />

    </div>

</form>

<script language="javascript">

function SubmitPage() {

    window.opener.document.getElementById('TextBox1').value = document.getElementById('TextBox1').value;

    window.opener.document.getElementById('TextBox2').value = document.getElementById('TextBox2').value;

    window.opener.document.getElementById('TextBox3').value = document.getElementById('TextBox3').value;

    window.opener.document.getElementById('TextBox1').focus();

    this.close();

}

</script>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="PepperCrownKitchen.ForgetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Enter Your Registered Email: <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox><br />
            <asp:Button ID="ButPwd" runat="server" Text="Get Your Password" OnClick="ButPwd_Click" /><br />
            <asp:Label ID="Labmsg" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>

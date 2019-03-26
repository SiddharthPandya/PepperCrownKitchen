<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeSide.aspx.cs" Inherits="PepperCrownKitchen.EmployeeSide" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .employee {
            top: auto;
            left: auto;
            margin-left: 210px;
            margin-right: auto;
            position: relative;
            width: 700px;
            padding-left:10px;
            padding-bottom:10px;
        }
    </style>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="Header">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/logo.JPG" />
        </div>
        <div class="employee">
            <h2>List Of Registered Customers</h2>
            
            <br />
            <asp:Button ID="Button1" runat="server" Text="Back To Login" OnClick="Button1_Click" />
        </div>
        <div class="copyright">
            &copy; Copyright PCK, 2018
        </div>
    </form>
</body>
</html>

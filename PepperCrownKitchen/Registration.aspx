<%@ Page Title="Registration" Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="PepperCrownKitchen.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
     <style type="text/css">
        .registration {
            top: auto;
            left: 0px;
            margin-left: auto;
            margin-right: auto;
            position: relative;
            width: 700px;
            border: 3px solid green;
            padding-left:10px;
            padding-bottom:10px;
        }
    </style>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body style="margin-left:auto; margin-right:auto; width:980px;">
    <form id="form1" runat="server">
        <div class="Header">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/logo.JPG" />
        </div>
        <div class="registration">
            <h1>Registration</h1>

            <h4>First Name:&nbsp&nbsp&nbsp<asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="firstNameREQ" runat="server" ErrorMessage="First Name Required" ControlToValidate="txtFirstName" Display="Dynamic" ForeColor="Red" Enabled="false"></asp:RequiredFieldValidator>
            </h4>
     
            <h4>Last Name: &nbsp&nbsp<asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="lastNameREQ" runat="server" ErrorMessage="Last Name Required" ControlToValidate="txtLastName" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </h4>

            <h4>Gender: <asp:DropDownList ID="ddlGender" runat="server" OnSelectedIndexChanged="ddlGender_SelectedIndexChanged">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>

            </h4>

            <h4>Email ID: &nbsp&nbsp&nbsp&nbsp&nbsp<asp:TextBox ID="txtEmailID" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="emailIDREQ" runat="server" ErrorMessage="Email ID Required" ControlToValidate="txtEmailID" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="emailEXP" runat="server" ErrorMessage="Invalid Email ID" ControlToValidate="txtEmailID" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ForeColor="Red"/>
            </h4>

            <h4>Username: &nbsp&nbsp&nbsp<asp:TextBox ID="txtRegUsername" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="usernameREQ" runat="server" ErrorMessage="Username Required" ControlToValidate="txtRegUsername" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator id="usernameEXP" runat="server" ErrorMessage="Atleast 6 Characters Required" ControlToValidate="txtRegUsername" ValidationExpression="[0-9a-zA-Z]{6,}" Display="Dynamic" ForeColor="Red" />
            </h4>

            <h4>Password: &nbsp&nbsp&nbsp&nbsp<asp:TextBox ID="txtRegPassword" runat="server" TextMode="Password"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="passwordREQ" runat="server" ControlToValidate="txtRegPassword" Display="Dynamic" ErrorMessage="Password Required" ForeColor="Red" />
                 <asp:RegularExpressionValidator ID="passwordEXP" runat="server" ControlToValidate="txtRegPassword" Display="Dynamic" ErrorMessage="Must Contain 6 Letter, an Uppercase and a Digit" ForeColor="Red" ValidationExpression="^^[A-Za-z]\w{6,}$"></asp:RegularExpressionValidator>
            </h4>

            <h4>Confirm Password: &nbsp<asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="confirmPasswordREQ" runat="server" ControlToValidate="txtConfirmPassword" Display="Dynamic" ErrorMessage="Password Required" ForeColor="Red" />
                 <asp:CompareValidator ID="conPasswordVal" runat="server" ControlToCompare="txtRegPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Please Enter Same Password As Above" Display="Dynamic" ForeColor="Red" />
            </h4>

            <h4>Address:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="addressREQ" runat="server" ControlToValidate="txtAddress" ErrorMessage="Address Required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </h4>

            <h4>Province: &nbsp&nbsp&nbsp<asp:TextBox ID="txtProvince" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="provinceREQ" runat="server" ErrorMessage="Province Required" ControlToValidate="txtProvince" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </h4>

            <h4>City: &nbsp&nbsp<asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="cityREQ" runat="server" ErrorMessage="City Required" ControlToValidate="txtCity" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </h4>

            <h4>Postal Code: <asp:TextBox ID="txtPostalCode" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="postalREQ" runat="server" ControlToValidate="txtPostalCode" ErrorMessage="Postal Code Required" Display="Dynamic" ForeColor="Red" />
                <asp:RegularExpressionValidator ID="postalEXP" runat="server" ControlToValidate="txtPostalCode" ErrorMessage="Incorrect Format.. The Format Must Be Like {A1B 2C3}" ForeColor="Red" Display="Dynamic" ValidationExpression="^(?!.*[DFIOQU])[A-VXY][0-9][A-Z] ?[0-9][A-Z][0-9]$"></asp:RegularExpressionValidator>
            </h4>
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" /> &nbsp&nbsp
            <input id="btnReset" type="reset" value="Reset" /><br />
            <asp:Label ID="lbl" runat="server" Visible="true">
            Return to
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Login</asp:HyperLink>
            page.
        </asp:Label>
        </div>
        <div class="copyright">
            &copy; Copyright PCK, 2018
        </div>
    </form>
</body>
</html>

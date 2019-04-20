<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeSide.aspx.cs" Inherits="PepperCrownKitchen.EmployeeSide" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee</title>
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

    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="Header" style="width:900px; background-repeat:repeat;">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/logo.JPG" />
        </div>
        <div class="employee" style="width:900px; margin-left:225px;">
             
             <asp:LoginName CssClass="headings" ID="loginName" runat="server" FormatString="Welcome, {0}!" ForeColor="Black"/>
                    (<asp:LoginStatus ID="loginStatus" runat="server" ForeColor="Navy"/>)
                
            <h2 style="margin-left:250px;">List Of Registered Customers</h2>
            <asp:GridView ID="customerDetails" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="Black" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" OnSelectedIndexChanged="customerDetails_SelectedIndexChanged">
                <Columns>
                    <%--<asp:TemplateField Visible="false">
                        <ItemTemplate>
                            <asp:HiddenField ID="Hf_ID" runat="server" Value='<%# Eval("CustomerID") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>--%>
                    <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" />
                    <asp:BoundField DataField="FirstName" HeaderText="First Name" />
                    <asp:BoundField DataField="LastName" HeaderText="Last Name" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" />
                    <asp:BoundField DataField="EmailID" HeaderText="Email ID" />
                    <asp:BoundField DataField="Username" HeaderText="Username" />
                    <asp:BoundField DataField="Password" HeaderText="Password" />
                    <asp:BoundField DataField="Address" HeaderText="Address" />
                    <asp:BoundField DataField="Province" HeaderText="Province" />
                    <asp:BoundField DataField="City" HeaderText="City" />
                    <asp:BoundField DataField="PostalCode" HeaderText="Postal Code"  Visible="False" />
                    <asp:CommandField SelectText="Delete" ShowSelectButton="True" />
                </Columns>
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#33276A" />
            </asp:GridView>
            <br />
            <br />
        </div>
        <div class="copyright" style="width:900px;">
            &copy; Copyright PCK, 2018
        </div>
    </form>
</body>
</html>

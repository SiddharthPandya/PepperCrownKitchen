<%@ Page Title="Search Food" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="SearchFood.aspx.cs" Inherits="PepperCrownKitchen.SearchFood" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Search Food Items</h2>
    Type: <asp:DropDownList ID="ddlFoodItem" runat="server">
        <asp:ListItem Selected="True">Appetizer</asp:ListItem>
        <asp:ListItem>Drinks</asp:ListItem>
        <asp:ListItem Value="MainCourse">Main Course</asp:ListItem>
        <asp:ListItem>Dessert</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <asp:Button ID="searchSubmit" runat="server" Text="Submit" OnClick="searchSubmit_Click" />
    <br />
    <br />
    Chef:<asp:DropDownList ID="ddlChef" runat="server">
        <asp:ListItem Selected="True">Siddharth</asp:ListItem>
        <asp:ListItem>Lovejot</asp:ListItem>
        <asp:ListItem>Jasdeep</asp:ListItem>
        <asp:ListItem>Dhruti</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <asp:Button ID="searchChef" runat="server" Text="Submit" OnClick="searchChef_Click" />
    <br />
    <br />
    <asp:GridView ID="searchGridView" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
</asp:Content>

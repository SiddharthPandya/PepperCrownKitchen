<%@ Page Title="Drinks Details" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="DrinksDetail.aspx.cs" Inherits="PepperCrownKitchen.DrinksDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron">
    <h2>Drinks Detail</h2>
    <asp:DetailsView ID="DrinksDetailsView" runat="server" Height="50px" Width="522px" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <Fields>
            <asp:TemplateField HeaderText="Name">
                <ItemTemplate>
                    <asp:Label ID="lblName" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Type">
                <ItemTemplate>
                    <asp:Label ID="lblType" runat="server" Text='<%# Bind("Type") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Description">
                <ItemTemplate>
                    <asp:Label ID="lblDescription" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Price">
                <ItemTemplate>
                    $
                    <asp:Label ID="lblPrice" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Quantity">
                <ItemTemplate>
                    <asp:Label ID="lblQuantity" runat="server" Text='<%# Bind("Quantity") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Fields>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
    </asp:DetailsView>
        </div>
</asp:Content>

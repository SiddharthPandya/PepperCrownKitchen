<%@ Page Title="Main Course Details" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="MainCourseDetails.aspx.cs" Inherits="PepperCrownKitchen.MainCourseDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron">
    <h2>Main Course Details</h2>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" Height="50px" Width="522px" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
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
            <asp:TemplateField HeaderText="Chef">
                <ItemTemplate>
                    <asp:Label ID="lblChef" runat="server" Text='<%# Bind("Chef") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Fields>
        <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#284775" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>
        </div>
</asp:Content>

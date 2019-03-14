<%@ Page Title="Setup" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Setup.aspx.cs" Inherits="PepperCrownKitchen.Setup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<h1 class="headings">Select a Theme: </h1>
    <p>
        <asp:Button ID="Dark" runat="server" Text="Dark Theme" OnClick="Dark_Click" CssClass="button3" /></p>
    <p>
        <asp:Button ID="Light" runat="server" Text="Light Theme" OnClick="Light_Click" CssClass="button2" /></p>
    <br />

</asp:Content>

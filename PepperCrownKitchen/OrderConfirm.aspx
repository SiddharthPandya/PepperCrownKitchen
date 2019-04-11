<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="OrderConfirm.aspx.cs" Inherits="PepperCrownKitchen.OrderConfirm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 >Your Order Has Been Successfully Placed</h2>
    <h3>OrderTime: <%= DateTime.Now.ToLongTimeString() %>
    <br />
    Expected Delivery Time: <%= DateTime.Now.AddMinutes(40) %></h3>
</asp:Content>

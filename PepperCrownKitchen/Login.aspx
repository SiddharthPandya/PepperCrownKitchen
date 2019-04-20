<%@ Page Title="Login" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PepperCrownKitchen.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="MainDiv" style="width:935px; margin-top:10px; margin-right:0px;">
        <div class="Slider" style="height:275px;">
          <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Timer ID="Timer1" runat="server" Interval="2000" OnTick="Timer1_Tick"></asp:Timer>
                <asp:Image ID="Image1" runat="server" />
            </ContentTemplate>
        </asp:UpdatePanel>
        </div>
        <div class="Login" style="height:275px;">
            <h1 style="color:black;">Login</h1>
            <h4 style="color:black;">Username: <asp:TextBox ID="txtUsername" Width="225px" runat="server"></asp:TextBox></h4>
            <h4 style="color:black;">Password:&nbsp <asp:TextBox ID="txtPassword" runat="server" Width="225px" TextMode="Password"></asp:TextBox></h4>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button CssClass="btn-success" ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />&nbsp
            <asp:Button class="btn-danger" ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
            &nbsp;
            <asp:Button class="btn-dark" ID="btnEmpLogin" runat="server" Text="Employee Login" OnClick="btnEmpLogin_Click" />
            <br />
            <br />
            <%--<a href="#" onclick="window.open('ForgetPassword.aspx','FP','width=500,height=50,top=300,left=500,fullscreen=no,resizable=0');">Forget Password</a>--%>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <%--<asp:Button ID="btnForgetPassword" runat="server" Text="Forget Password?" OnClick="btnForgetPassword_Click" />--%>
        </div>
        </div>
    <iframe src="https://www.youtube.com/embed/g0yisRiLwGA" style="height: 350px; width: 900px" allowfullscreen></iframe>
</asp:Content>

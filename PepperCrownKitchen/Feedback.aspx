<%@ Page Title="Feedback" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="PepperCrownKitchen.Feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Feedback Form</h2>    

    <asp:Table ID="Table1" runat="server" Width="700px" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px">
        <%--<asp:TableHeaderRow>
            <asp:TableHeaderCell Height="50px" HorizontalAlign="Right">
                Feedback Form
            </asp:TableHeaderCell>
        </asp:TableHeaderRow>--%>
        <asp:TableRow>
            <asp:TableCell BorderColor="Black" BorderStyle="Dashed" BorderWidth="1px" Height="40px" HorizontalAlign="Center">Name</asp:TableCell>
            <asp:TableCell BorderColor="Black" BorderStyle="Dashed" BorderWidth="1px" Height="40px" HorizontalAlign="Center">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name Required" ControlToValidate="TextBox1" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell Height="40px" HorizontalAlign="Center">Email ID</asp:TableCell>
            <asp:TableCell Height="40px" HorizontalAlign="Center">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email Required" ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="emailEXP" runat="server" ErrorMessage="Invalid Email ID" ControlToValidate="TextBox2" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" Display="Dynamic" ForeColor="Red"/>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell BorderColor="Black" BorderStyle="Dashed" BorderWidth="1px" Height="40px" HorizontalAlign="Center">Age</asp:TableCell>
            <asp:TableCell BorderColor="Black" BorderStyle="Dashed" BorderWidth="1px" Height="40px" HorizontalAlign="Center">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="125px">
                    <asp:ListItem>Below 18</asp:ListItem>
                    <asp:ListItem>18 to 30</asp:ListItem>
                    <asp:ListItem>30 to 50</asp:ListItem>
                    <asp:ListItem>Above 50</asp:ListItem>
                </asp:DropDownList>
                </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Center">
                Food Quality
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Center">
                <asp:RadioButtonList ID="foodQuality" runat="server">
                    <asp:ListItem>Excellent</asp:ListItem>
                    <asp:ListItem>Good</asp:ListItem>
                    <asp:ListItem>Average</asp:ListItem>
                    <asp:ListItem>Poor</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Response Required" ControlToValidate="foodQuality" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell BorderColor="Black" BorderStyle="Dashed" BorderWidth="1px" HorizontalAlign="Center">
                Cleanliness
            </asp:TableCell>
            <asp:TableCell BorderColor="Black" BorderStyle="Dashed" BorderWidth="1px" HorizontalAlign="Center">
                <asp:RadioButtonList ID="cleanliness" runat="server">
                    <asp:ListItem>Excellent</asp:ListItem>
                    <asp:ListItem>Good</asp:ListItem>
                    <asp:ListItem>Average</asp:ListItem>
                    <asp:ListItem>Poor</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Response Required" ControlToValidate="cleanliness" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Center">
                Service Speed
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Center">
                <asp:RadioButtonList ID="serviceSpeed" runat="server">
                    <asp:ListItem>Excellent</asp:ListItem>
                    <asp:ListItem>Good</asp:ListItem>
                    <asp:ListItem>Average</asp:ListItem>
                    <asp:ListItem>Poor</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Response Required" ControlToValidate="serviceSpeed" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell BorderColor="Black" BorderStyle="Dashed" BorderWidth="1px" HorizontalAlign="Center">
                Overall Service Quality
            </asp:TableCell>
            <asp:TableCell BorderColor="Black" BorderStyle="Dashed" BorderWidth="1px" HorizontalAlign="Center">
                <asp:RadioButtonList ID="overallService" runat="server">
                    <asp:ListItem>Excellent</asp:ListItem>
                    <asp:ListItem>Good</asp:ListItem>
                    <asp:ListItem>Average</asp:ListItem>
                    <asp:ListItem>Poor</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Response Required" ControlToValidate="overallService" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Center">
                Quantity
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Center">
                <asp:RadioButtonList ID="quantity" runat="server">
                    <asp:ListItem>Excellent</asp:ListItem>
                    <asp:ListItem>Good</asp:ListItem>
                    <asp:ListItem>Average</asp:ListItem>
                    <asp:ListItem>Poor</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Response Required" ControlToValidate="quantity" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell BorderColor="Black" BorderStyle="Dashed" BorderWidth="1px" HorizontalAlign="Center">
                Value
            </asp:TableCell>
            <asp:TableCell BorderColor="Black" BorderStyle="Dashed" BorderWidth="1px" HorizontalAlign="Center">
                <asp:RadioButtonList ID="value" runat="server">
                    <asp:ListItem>Excellent</asp:ListItem>
                    <asp:ListItem>Good</asp:ListItem>
                    <asp:ListItem>Average</asp:ListItem>
                    <asp:ListItem>Poor</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Response Required" ControlToValidate="value" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Center">
                Order Accuracy
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Center">
                <asp:RadioButtonList ID="orderAccuracy" runat="server">
                    <asp:ListItem>Excellent</asp:ListItem>
                    <asp:ListItem>Good</asp:ListItem>
                    <asp:ListItem>Average</asp:ListItem>
                    <asp:ListItem>Poor</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Response Required" ControlToValidate="orderAccuracy" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell BorderColor="Black" BorderStyle="Dashed" BorderWidth="1px" HorizontalAlign="Center">
                Overall Experience
            </asp:TableCell>
            <asp:TableCell BorderColor="Black" BorderStyle="Dashed" BorderWidth="1px" HorizontalAlign="Center">
                <asp:RadioButtonList ID="overallExperience" runat="server">
                    <asp:ListItem>Excellent</asp:ListItem>
                    <asp:ListItem>Good</asp:ListItem>
                    <asp:ListItem>Average</asp:ListItem>
                    <asp:ListItem>Poor</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Response Required" ControlToValidate="overallExperience" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Center">
                Any comments, 
                questions or suggestions?
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Center">
               <textarea id="TextArea1" rows="5" cols="50"></textarea>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell BorderColor="Black" BorderStyle="Dashed" BorderWidth="1px" HorizontalAlign="Center">
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            </asp:TableCell>
            <asp:TableCell BorderColor="Black" BorderStyle="Dashed" BorderWidth="1px" HorizontalAlign="Center">
                <input id="Reset1" type="reset" value="Reset" />
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>

</asp:Content>
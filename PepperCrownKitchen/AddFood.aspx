<%@ Page Title="Order" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="AddFood.aspx.cs" Inherits="PepperCrownKitchen.AddFood" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:GridView ID="addFoodGridView" runat="server" AutoGenerateColumns="False" Width="700px" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" />
            <asp:BoundField DataField="Type" HeaderText="Type" />
            <asp:BoundField DataField="Price" HeaderText="Price" />
            <asp:TemplateField HeaderText="Quantity">
                <ItemTemplate>
                    <asp:TextBox ID="quantity" Width="35px" Text="0" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="quantity" ErrorMessage="Integer Required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="quantity" Type="Integer" MinimumValue="0" MaximumValue="10" ErrorMessage="Quantity must be less than 11" Display="Dynamic" ForeColor="Red"></asp:RangeValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="quantity" ValidationExpression="[0-9]{1,2}" runat="server" ErrorMessage="Enter Integer" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <br />
    <asp:GridView ID="addMainCourse" runat="server" AutoGenerateColumns="False" Width="700px" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" />
            <asp:BoundField DataField="Type" HeaderText="Type" />
            <asp:BoundField DataField="Price" HeaderText="Price" />
            <asp:TemplateField HeaderText="Quantity">
                 <ItemTemplate>
                    <asp:TextBox ID="quantityMainCourse" Width="35px" Text="0" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="quantityMainCourse" ErrorMessage="Integer Required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="quantityMainCourse" Type="Integer" MinimumValue="0" MaximumValue="10" ErrorMessage="Quantity must be less than 11" Display="Dynamic" ForeColor="Red"></asp:RangeValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="quantityMainCourse" ValidationExpression="[0-9]{1,2}" runat="server" ErrorMessage="Enter Integer" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <br />
    <asp:GridView ID="addDrinks" runat="server" AutoGenerateColumns="False" Width="700px" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" />
            <asp:BoundField DataField="Type" HeaderText="Type" />
            <asp:BoundField DataField="Price" HeaderText="Price" />
            <asp:TemplateField HeaderText="Quantity">
                 <ItemTemplate>
                    <asp:TextBox ID="quantityDrinks" Width="35px" Text="0" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="quantityDrinks" ErrorMessage="Integer Required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="quantityDrinks" Type="Integer" MinimumValue="0" MaximumValue="10" ErrorMessage="Quantity must be less than 11" Display="Dynamic" ForeColor="Red"></asp:RangeValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ControlToValidate="quantityDrinks" ValidationExpression="[0-9]{1,2}" runat="server" ErrorMessage="Enter Integer" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
    <br />
    <asp:GridView ID="addDessert" runat="server" AutoGenerateColumns="False" Width="700px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" />
            <asp:BoundField DataField="Price" HeaderText="Price" />
            <asp:TemplateField HeaderText="Quantity">
                <ItemTemplate>
                    <asp:TextBox ID="quantityDessert" Width="35px" Text="0" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="quantityDessert" ErrorMessage="Integer Required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator4" runat="server" ControlToValidate="quantityDessert" Type="Integer" MinimumValue="0" MaximumValue="10" ErrorMessage="Quantity must be less than 11" Display="Dynamic" ForeColor="Red"></asp:RangeValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" ControlToValidate="quantityDessert" ValidationExpression="[0-9]{1,2}" runat="server" ErrorMessage="Enter Integer" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <br />
    <br />
    <asp:Button ID="nextButton" runat="server" Text="Next" OnClick="nextButton_Click" />
    </asp:Content>

<%@ Page Title="Personal Info" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="PersonalInfo.aspx.cs" Inherits="PepperCrownKitchen.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Edit Your Personal Information</h2>
    <asp:DetailsView ID="userDetailsView" runat="server" AutoGenerateRows="False" Height="50px" Width="729px" BackColor="#CCCCCC" BorderColor="#999999" BorderWidth="3px" CellPadding="4" ForeColor="Black" OnModeChanging="userDetailsView_ModeChanging" BorderStyle="Solid" CellSpacing="2" OnItemUpdating="userDetailsView_ItemUpdating">
        <EditRowStyle BackColor="#000099" ForeColor="White" Font-Bold="True" />
        <Fields>
            <asp:TemplateField HeaderText="First Name">
                <EditItemTemplate>
                    <asp:TextBox ID="txtEditFirstName" runat="server" Text='<%# Bind("FirstName") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqEditFirstName" runat="server" ErrorMessage="First Name required" ControlToValidate="txtEditFirstName" Display="Dynamic" ForeColor="White"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="txtInsertFirstName" runat="server" Text='<%# Bind("FirstName") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblFirstName" runat="server" Text='<%# Bind("FirstName") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Last Name">
                <EditItemTemplate>
                    <asp:TextBox ID="txtEditLastName" runat="server" Text='<%# Bind("LastName") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqEditLastName" runat="server" ErrorMessage="Last Name Required" ControlToValidate="txtEditLastName" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="txtInsertLastName" runat="server" Text='<%# Bind("LastName") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblLastName" runat="server" Text='<%# Bind("LastName") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Gender">
                <EditItemTemplate>
                    <asp:DropDownList ID="ddlEditGender" runat="server">
                        <asp:ListItem Selected="True">Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="txtInsertGender" runat="server" Text='<%# Bind("Gender") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblGender" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email ID">
                <EditItemTemplate>
                    <asp:TextBox ID="txtEditEmailID" runat="server" Text='<%# Bind("EmailID") %>' Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="emailIDREQ" runat="server" ErrorMessage="Email ID Required" ControlToValidate="txtEditEmailID" Display="Dynamic" ForeColor="White"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="emailEXP" runat="server" ErrorMessage="Invalid Email ID" ControlToValidate="txtEditEmailID" Display="Dynamic" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ForeColor="White"/>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="txtInsertEmailID" runat="server" Text='<%# Bind("EmailID") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblEmailID" runat="server" Text='<%# Bind("EmailID") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Username">
                <EditItemTemplate>
                    <asp:TextBox ID="txtEditUsername" runat="server" Text='<%# Bind("Username") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="usernameREQ" runat="server" ErrorMessage="Username Required" ControlToValidate="txtEditUsername" Display="Dynamic" ForeColor="White"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator id="usernameEXP" runat="server" ErrorMessage="Atleast 6 Characters Required" ControlToValidate="txtEditUsername" ValidationExpression="[0-9a-zA-Z]{6,}" Display="Dynamic" ForeColor="White" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="txtInsertUsername" runat="server" Text='<%# Bind("Username") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblUsername" runat="server" Text='<%# Bind("Username") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Password">
                <EditItemTemplate>
                    <asp:TextBox ID="txtEditPassword" runat="server" Text='<%# Bind("Password") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="passwordREQ" runat="server" ControlToValidate="txtEditPassword" Display="Dynamic" ErrorMessage="Password Required" ForeColor="White" />
                 <asp:RegularExpressionValidator ID="passwordEXP" runat="server" ControlToValidate="txtEditPassword" Display="Dynamic" ErrorMessage="Must Contain 6 Letter, an Uppercase and a Digit" ForeColor="White" ValidationExpression="^^[A-Za-z]\w{6,}$"></asp:RegularExpressionValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="txtInsertPassword" runat="server" Text='<%# Bind("Password") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblPassword" runat="server" Text='<%# Bind("Password") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Address">
                <EditItemTemplate>
                    <asp:TextBox ID="txtEditAddress" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="addressREQ" runat="server" ControlToValidate="txtEditAddress" ErrorMessage="Address Required" Display="Dynamic" ForeColor="White"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="txtInsertAddress" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblAddress" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Province">
                <EditItemTemplate>
                    <asp:TextBox ID="txtEditProvince" runat="server" Text='<%# Bind("Province") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="provinceREQ" runat="server" ErrorMessage="Province Required" ControlToValidate="txtEditProvince" Display="Dynamic" ForeColor="White"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="txtInsertProvince" runat="server" Text='<%# Bind("Province") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblProvince" runat="server" Text='<%# Bind("Province") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="City">
                 <EditItemTemplate>
                    <asp:TextBox ID="txtEditCity" runat="server" Text='<%# Bind("City") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="cityREQ" runat="server" ErrorMessage="City Required" ControlToValidate="txtEditCity" Display="Dynamic" ForeColor="White"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="txtInsertCity" runat="server" Text='<%# Bind("City") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblCity" runat="server" Text='<%# Bind("City") %>'></asp:Label>
                </ItemTemplate>
                 <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                 <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Postal Code">
                <EditItemTemplate>
                    <asp:TextBox ID="txtEditPostalCode" runat="server" Text='<%# Bind("PostalCode") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="postalREQ" runat="server" ControlToValidate="txtEditPostalCode" ErrorMessage="Postal Code Required" Display="Dynamic" ForeColor="White" />
                    <asp:RegularExpressionValidator ID="postalEXP" runat="server" ControlToValidate="txtEditPostalCode" ErrorMessage="Incorrect Format.. The Format Must Be Like {A1B 2C3}" ForeColor="White" Display="Dynamic" ValidationExpression="^(?!.*[DFIOQU])[A-VXY][0-9][A-Z] ?[0-9][A-Z][0-9]$"></asp:RegularExpressionValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="txtInsertPostalCode" runat="server" Text='<%# Bind("PostalCode") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblPostalCode" runat="server" Text='<%# Bind("PostalCode") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="True" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:CommandField>
        </Fields>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
    </asp:DetailsView>

</asp:Content>
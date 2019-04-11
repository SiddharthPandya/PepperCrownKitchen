<%@ Page Title="Payment" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="PepperCrownKitchen.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Payment Details</h2><br />
    <asp:Table ID="Table1" runat="server">
        <asp:TableRow>
            <asp:TableCell>Cardholder Name:</asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtCardholderName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCardholderName" ForeColor="Red" ErrorMessage="Required Field " Display="Dynamic"></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Card Number:</asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtCardNumber" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtCardNumber" ForeColor="Red" ErrorMessage="Required Field" Display="Dynamic"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ValidationExpression="^(?:4[0-9]{12}(?:[0-9]{3})?|5[1-5][0-9]{14}|6(?:011|5[0-9][0-9])[0-9]{12}|3[47][0-9]{13}|3(?:0[0-5]|[68][0-9])[0-9]{11}|(?:2131|1800|35\d{3})\d{11})$" runat="server" ControlToValidate="txtCardNumber" ErrorMessage="Invalid Card numbver" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Expiry</asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtExpiry" runat="server" placeholder="MMYY"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtExpiry" ForeColor="Red" ErrorMessage="Required Field " Display="Dynamic"></asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtExpiry" runat="server" ErrorMessage="Enter a valid date" ForeColor="Red" Display="Dynamic" ValidationExpression="^(0[1-9]|1[0-2])\/?([0-9]{4}|[0-9]{2})$"></asp:RegularExpressionValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>CVV</asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtCVV" MaxLength="3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtCVV" runat="server" ErrorMessage="Required Field" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ControlToValidate="txtCVV" ValidationExpression="[0-9]{0,3}" runat="server" ErrorMessage="Integer Required"></asp:RegularExpressionValidator>
            </asp:TableCell>
        </asp:TableRow>
       <asp:TableRow>
           <asp:TableCell>
               <asp:Button ID="btnSubmitPayment" runat="server" OnClick="btnSubmitPayment_Click" Text="Place Order" />
           </asp:TableCell>
           <asp:TableCell>
               <input id="btnReset" type="reset" value="Reset" />
           </asp:TableCell>
       </asp:TableRow>
    </asp:Table>
</asp:Content>

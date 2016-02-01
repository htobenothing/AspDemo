<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Validation.aspx.cs" Inherits="MyWebApp.Validation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    &nbsp;Name:<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Name can not be empty"></asp:RequiredFieldValidator>
    <div>
    
        Password:<asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        <br />
        Confirm Password:<asp:TextBox ID="txtConfirPwd" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirPwd" ErrorMessage="password should be the same"></asp:CompareValidator>
        <br />
        Age:<asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAge" Display="Dynamic" ErrorMessage="Age should be between 18-60" MaximumValue="60" MinimumValue="18" Type="Integer"></asp:RangeValidator>
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Button" />
    
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WelcomePage.aspx.cs" Inherits="MyWebApp.WelcomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="frmWelcome" runat="server">
    <div>
        <h1>Log In</h1>
        <hr />
        <asp:Table runat="server" Width="460px" GridLines="Horizontal" >
            <asp:TableHeaderRow>               
                <asp:TableCell ><asp:Label runat="server" ID="labLogin" Font-Size="XX-Large">Welcome</asp:Label></asp:TableCell>
            </asp:TableHeaderRow>
            <asp:TableRow>
                <asp:TableCell>Login Name:</asp:TableCell>
                <asp:TableCell><asp:TextBox runat="server" ID="txtName"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Pass Word:</asp:TableCell>
                <asp:TableCell><asp:TextBox runat="server" ID="txtPassWord"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Confirm Password:</asp:TableCell>
                <asp:TableCell><asp:TextBox runat="server" ID="txtConfirm"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Singapore IC(If Applicable):</asp:TableCell>
                <asp:TableCell><asp:TextBox runat="server" ID="txtIC"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Passport No.</asp:TableCell>
                <asp:TableCell><asp:TextBox runat="server" ID="txtPassNo"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow >
                <asp:TableCell>Gender:<asp:RadioButtonList runat="server"></asp:RadioButtonList>  </asp:TableCell>
                <asp:TableCell Width="200">
                    <asp:RadioButtonList ID="rdblGender" runat="server">
                        <asp:ListItem Text="Male" Value="1" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="Female" Value="0" ></asp:ListItem>
                    </asp:RadioButtonList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Date Of Birth:</asp:TableCell>
                <asp:TableCell runat="server" >
                    <asp:TextBox runat="server" ID="txtDOB"></asp:TextBox>
                    <asp:ImageButton runat="server" ImageUrl="~/Image/images.jpg"  Height="20" Width="20" ID="ImageButton1" OnClick="ibtnCalender_Click" />
                </asp:TableCell>
                <asp:TableCell><asp:Calendar runat="server" ID="calDOB" OnSelectionChanged="calDOB_SelectionChanged" ></asp:Calendar></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow >
                <asp:TableCell>Country</asp:TableCell>
                <asp:TableCell><asp:DropDownList runat="server" ID="dlCountry" ></asp:DropDownList></asp:TableCell>
            </asp:TableRow>
            </asp:Table>
        <asp:Button runat="server" ID="btnSubmit" Text="Submit"/>
        
        <asp:CheckBoxList runat="server"></asp:CheckBoxList>
    </div>
    </form>
</body>
</html>

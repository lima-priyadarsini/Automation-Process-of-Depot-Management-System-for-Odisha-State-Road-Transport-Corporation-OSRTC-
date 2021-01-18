<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 131px;
        }
        .auto-style2 {
            height: 36px;
        }
        .auto-style3 {
            width: 131px;
            height: 36px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
            <table>
                <tr>
                    <td colspan="2">Admin Login</td>
                </tr>
                <tr>
                    <td style="text-align:right" class="auto-style2">UserId:</td>
                    <td class="auto-style3" style="text-align:left">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter your user name" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right">Password:</td>
                    <td class="auto-style1" style="text-align:left">
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter your password" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center">
                        <asp:Button ID="Button1" runat="server" Font-Bold="True" OnClick="Button1_Click1" Text="Login" Width="70px" />
                    </td>
                </tr>
                <tr>
                    <td><a href="changepassword.aspx">Forget Password</a></td>
                </tr>
            </table>
                </center>
        </div>
    </form>
</body>
</html>

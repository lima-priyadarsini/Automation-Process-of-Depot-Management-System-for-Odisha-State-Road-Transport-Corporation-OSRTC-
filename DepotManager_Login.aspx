<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DepotManager_Login.aspx.cs" Inherits="DepoManager_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <center>
                     <h2><font color="blue">  Depot  Manager  Login</font></h2>
           <table>
             <tr>
             <td colspan="2"></td>
             </tr>

             <tr>
             <td style="text-align:right">User Name :</td>
             <td style="text-align:left" class="auto-style1"><asp:TextBox ID="txt_unm" runat="server"></asp:TextBox></td>
             <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                     ErrorMessage="Enter Your User name" ControlToValidate="txt_unm" ForeColor="Red"></asp:RequiredFieldValidator></td>
             </tr>


             <tr>
             <td style="text-align:right">Password :</td>
             <td style="text-align:left" class="auto-style1"><asp:TextBox ID="txt_pwd" runat="server"></asp:TextBox></td>
             <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                     ErrorMessage="Enter Your Password" ForeColor="Red" 
                     ControlToValidate="txt_pwd"></asp:RequiredFieldValidator></td>
             </tr>


             <tr>
             <td style="text-align:center" colspan="2">
                 <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="Login" 
                     Width="53px" OnClick="Button1_Click" style="margin-left: 71px" />
                 </td>
             </tr>


             <tr>
             <td style="text-align:right"><a href="Forgot_Password.aspx">Forgot Password??</a></td>
             <td style="text-align:left" class="auto-style1"></td>
             </tr>


             </table>
             </center>
    
    </div>
    </form>
</body>
</html>

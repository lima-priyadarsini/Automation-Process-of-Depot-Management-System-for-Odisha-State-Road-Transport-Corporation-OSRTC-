<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PersonalInformation.aspx.cs" Inherits="PersonalInformation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    
        <center>
            <table>
                <tr>
                    <td colspan="2"><strong>Personal Information</strong></td>
                </tr>
                <tr>
                    <td style="text-align:right"></td>
                    <td style="text-align:left"></td>
                </tr>
                <tr>
                    <td style="text-align:right">Name :</td>
                    <td style="text-align:left">
                        <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right">Email :</td>
                    <td style="text-align:left">
                        <asp:TextBox ID="txt_Email" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right">Mobile.No:</td>
                    <td style="text-align:left">
                        <asp:TextBox ID="txt_mobno" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right">States:</td>
                    <td style="text-align:left">
                        <asp:DropDownList ID="ddl_state" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_state_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right">City:</td>
                    <td style="text-align:left">
                        <asp:DropDownList ID="ddl_city" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_city_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right">Pin:</td>
                    <td style="text-align:left">
                        <asp:TextBox ID="txt_pin" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right">Address:</td>
                    <td style="text-align:left">
                        <asp:TextBox ID="txt_addr" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right">D.O.B:</td>
                    <td style="text-align:left">
                        <asp:TextBox ID="txt_dob" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right">D.O.J:</td>
                    <td style="text-align:left">
                        <asp:TextBox ID="txt_doj" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right">Gender:</td>
                    <td style="text-align:left; margin-left: 240px;">
                        <asp:RadioButton ID="RDB_M" runat="server" GroupName="a" Text="Male" />
                        <asp:RadioButton ID="RDB_F" runat="server" GroupName="a" Text="Female" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right">Photo:</td>
                    <td style="text-align:left; margin-left: 240px;">
                        <asp:FileUpload ID="Fu_Image" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2"><strong>Login Information</strong></td>
                </tr>
                <tr>
                    <td style="text-align:right"></td>
                    <td style="text-align:left"></td>
                </tr>
                <tr>
                    <td style="text-align:right">UserId:</td>
                    <td style="text-align:left">
                        <asp:TextBox ID="txt_userid" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right">Password:</td>
                    <td style="text-align:left">
                        <asp:TextBox ID="txt_pwd" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right">Security Question:</td>
                    <td style="text-align:left; margin-left: 240px;">
                        <asp:DropDownList ID="ddl_security" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right">Answer:</td>
                    <td style="text-align:left">
                        <asp:TextBox ID="txt_ans" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" style="height: 26px" />
                    </td>
                </tr>
            </table>
        </center>
    
    </form>
</body>
</html>

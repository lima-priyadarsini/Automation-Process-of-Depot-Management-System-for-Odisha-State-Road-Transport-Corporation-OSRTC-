<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Depot_Manager_View_Details.aspx.cs" Inherits="Depot_Manager_View_Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <center>
           <asp:Image ID="Image1" runat="server" Height="159px" Width="141px"></asp:Image>

           <br />

           <br />
           
           <h3><asp:Label ID="lbl_name" runat="server" Text="Label" ForeColor="#CC00FF"></asp:Label></h3>
           <br />
           
           <table>
           
               <tr>
                <td style="text-align:right" class="auto-style2">District:</td>
                    <td class="auto-style3" style="text-align:left; margin-left: 120px;">
                        <asp:Label ID="lbl_dist" runat="server" Text="Label"></asp:Label>
                    </td>
            </tr>

            <tr>
                <td style="text-align:right" class="auto-style2">Depot:</td>
                    <td class="auto-style3" style="text-align:left; margin-left: 120px;">
                        <asp:Label ID="lbl_depo" runat="server" Text="Label"></asp:Label>
                    </td>
            </tr>

            <tr>
                <td style="text-align:right" class="auto-style2">Email:</td>
                    <td class="auto-style3" style="text-align:left; margin-left: 120px;">
                        <asp:Label ID="lbl_email" runat="server" Text="Label"></asp:Label>
                    </td>
            </tr>

            <tr>
                <td style="text-align:right" class="auto-style2">Mobile_No:</td>
                    <td class="auto-style3" style="text-align:left; margin-left: 120px;">
                        <asp:Label ID="lbl_mobile_no" runat="server" Text="Label"></asp:Label>
                    </td>
            </tr>

            <tr>
                <td style="text-align:right" class="auto-style2">Pin:</td>
                    <td class="auto-style3" style="text-align:left; margin-left: 120px;">
                        <asp:Label ID="lbl_pin" runat="server" Text="Label"></asp:Label>
                    </td>
            </tr>

            <tr>
                <td style="text-align:right" class="auto-style2">Address:</td>
                    <td class="auto-style3" style="text-align:left; margin-left: 120px;">
                        <asp:Label ID="lbl_address" runat="server" Text="Label"></asp:Label>
                    </td>
            </tr>

            <tr>
                <td style="text-align:right" class="auto-style2">DOB:</td>
                    <td class="auto-style3" style="text-align:left; margin-left: 120px;">
                        <asp:Label ID="lbl_dob" runat="server" Text="Label"></asp:Label>
                    </td>
            </tr>

            <tr>
                <td style="text-align:right" class="auto-style2">DOJ:</td>
                    <td class="auto-style3" style="text-align:left; margin-left: 120px;">
                        <asp:Label ID="lbl_doj" runat="server" Text="Label"></asp:Label>
                    </td>
            </tr>

            <tr>
                <td style="text-align:right" class="auto-style2">Gender:</td>
                    <td class="auto-style3" style="text-align:left; margin-left: 120px;">
                        <asp:Label ID="lbl_gender" runat="server" Text="Label"></asp:Label>
                    </td>
            </tr>

            <tr>
                <td style="text-align:center" class="auto-style2" colspan="2">
                    <asp:Button ID="buttom_back" runat="server" Text="&lt;&lt;Back" OnClick="Button1_Click" />
                </td>
            </tr>

           </table>
       </center> 
    
    </div>
    </form>
</body>
</html>

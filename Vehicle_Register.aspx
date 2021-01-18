<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Vehicle_Register.aspx.cs" Inherits="Vehicle_Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <center>
           <table>
             <tr>
             <td colspan="2"><h2><font color="blue">Vehicle  Registration</font></h2></td>
             </tr>
             <tr>
             <td style="text-align:right"></td>
             <td style="text-align:left"></td>
             </tr>
             <tr>
             <td style="text-align:right">Vehicle_No :</td>
             <td style="text-align:left"><asp:TextBox ID="Txt_V_No" runat="server"></asp:TextBox></td>
             </tr>
             <tr>
             <td style="text-align:right">Chasis_No :</td>
             <td style="text-align:left"><asp:TextBox ID="TXT_CH_NO" runat="server"></asp:TextBox></td>
             </tr>
             <tr>
             <td style="text-align:right">Capacity :</td>
             <td style="text-align:left"><asp:TextBox ID="TXT_CAP" runat="server" 
                     TextMode="Number"></asp:TextBox></td>
             </tr>
             <tr>
             <td style="text-align:right">Company :</td>
             <td style="text-align:left"><asp:DropDownList ID="DDL_CMPNY" runat="server"></asp:DropDownList></td>
             </tr>
             <tr>
             <td style="text-align:right">District :</td>
             <td style="text-align:left"><asp:DropDownList ID="DDL_DIST" runat="server" 
                     AutoPostBack="True" OnSelectedIndexChanged="DDL_DIST_SelectedIndexChanged"></asp:DropDownList></td>
             </tr>

             <tr>
             <td style="text-align:right">Depo_Id :</td>
             <td style="text-align:left"><asp:DropDownList ID="DDL_DEPOT" runat="server"></asp:DropDownList></td>
             </tr>
             <tr>
             <td></td>
             <td></td>
             </tr>
            
             <tr>
             <td style="text-align:center" colspan="2">
                 <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Italic="True" 
                     ForeColor="#99CC00" style="margin-left: 26px; height: 26px;" Text="Add" 
                     OnClick="Button1_Click" Width="46px" />
                 </td>
             </tr>
             </table>
             </center>
    
    </div>
    </form>
</body>
</html>

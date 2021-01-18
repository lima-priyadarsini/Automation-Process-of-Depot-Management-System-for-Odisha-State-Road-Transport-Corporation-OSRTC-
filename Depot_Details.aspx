<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Depot_Details.aspx.cs" Inherits="Depot_Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <center>
    <h2><font color="blue"> Approved  Depot  Managers</font></h2>
    <br/>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            OnRowCommand="GridView1_RowCommand">
            <Columns>
                <asp:TemplateField Visible="false">
               <ItemTemplate>

               <asp:Label ID="lbl_unq" runat="server" Text='<%#Eval("DPM_Id") %>'></asp:Label>

               </ItemTemplate>


               </asp:TemplateField>
            
               <asp:TemplateField HeaderText="District">
               <ItemTemplate>

               <asp:Label ID="lbl1" runat="server" Text='<%#Eval("Dist_Name") %>'></asp:Label>

               </ItemTemplate>


               </asp:TemplateField>

               <asp:TemplateField HeaderText="Depot">
               <ItemTemplate>

               <asp:Label ID="lbl2" runat="server" Text='<%#Eval("DPT_Name") %>'></asp:Label>

               </ItemTemplate>

               </asp:TemplateField>

                <asp:TemplateField HeaderText="Manager Name">
               <ItemTemplate>

               <asp:Label ID="lbl3" runat="server" Text='<%#Eval("Name") %>'></asp:Label>

               </ItemTemplate>

               </asp:TemplateField>
               <asp:TemplateField HeaderText="Photo">

               <ItemTemplate>
               <asp:Image ID="img1" runat="server" ImageUrl='<%#"Image/"+Eval("Photo") %>' Height="50px" Width="50px" />
               </ItemTemplate>
               </asp:TemplateField>

                <asp:TemplateField HeaderText="Manager Details">
               <ItemTemplate>

               <asp:LinkButton ID="lk_details" runat="server" Text="Show" CommandName="show" CommandArgument='<%#Eval("DPM_Id") %>'></asp:LinkButton>
              
               </ItemTemplate>

               </asp:TemplateField>

                  <asp:TemplateField HeaderText="Status">
               <ItemTemplate>

              <asp:CheckBox ID="chk_status" runat="server" />
              
               </ItemTemplate>

               </asp:TemplateField>

            </Columns>

        </asp:GridView>

            <asp:Button ID="btm_app" runat="server" Text="Approved" OnClick="btm_app_Click"></asp:Button>

            <br />
            <asp:Button ID="btm_exit" runat="server" OnClick="btm_exit_Click" Text="Exit" />

    </center>
        
    </div>
    </form>
</body>
</html>

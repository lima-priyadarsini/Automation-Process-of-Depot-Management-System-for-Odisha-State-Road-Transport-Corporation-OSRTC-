using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DepoManager_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String str = "Select * from DepoManager_LoginInformation where User_Id='" + txt_unm.Text + "' and Password='" + txt_pwd.Text + "' and Status=" + 1;
        DataTable dt1 = Dbutility.returndt(str);
        if (dt1.Rows.Count > 0)
        {
            Response.Redirect("DepotManager_Home.aspx");
        }
    }
}
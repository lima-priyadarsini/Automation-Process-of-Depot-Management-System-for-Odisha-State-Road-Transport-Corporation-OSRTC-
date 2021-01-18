using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Vehicle_Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string str = "select * from Vendors";
            Dbutility.fillddl(str, DDL_CMPNY);
            Dbutility.fillddl( "select * from District", DDL_DIST);


        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string ins = "insert into Vehicle_Information values('" + Txt_V_No.Text + "','" + TXT_CH_NO.Text + "'," + TXT_CAP.Text + "," + DDL_CMPNY.SelectedValue + "," + DDL_DIST.SelectedValue + ")";

        SqlCommand cmd = new SqlCommand(ins, Dbutility.conn());
        cmd.ExecuteNonQuery();
        Response.Redirect("DepotManager_Home.aspx");
    }

    protected void DDL_DIST_SelectedIndexChanged(object sender, EventArgs e)
    {
        string sl = "Select Depo_Id,Address from DepoInformation where Dist_Id=" + DDL_DIST.SelectedValue;
        Dbutility.fillddl(sl,DDL_DEPOT);
    }
}
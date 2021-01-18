using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Depot_Details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string s = "select dmp.DPM_Id,Dist_Name,DPT_Name,Name,Photo from DepoManager_PersonalInformation dmp inner join DepoInformation di on dmp.Depot=di.Depo_Id inner join District d on di.Dist_Id=d.Dist_Id inner join DepoManager_LoginInformation DL on dmp.DPM_Id=DL.dpm_id where Status=" + 0;
            DataTable dt = Dbutility.returndt(s);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "show")
            {
                int x = Convert.ToInt32(e.CommandArgument);
                Session["id"] = x;
                Response.Redirect("Depot_Manager_View_Details.aspx");
            }
    }
    protected void btm_app_Click(object sender, EventArgs e)
    {
        for (int x = 0; x < GridView1.Rows.Count; x++)
        {
            CheckBox ck = (CheckBox)GridView1.Rows[x].FindControl("chk_status");
            Label lb = (Label)GridView1.Rows[x].FindControl("lbl_unq");
            if (ck.Checked == true)
            {
                string upd = "Update DepoManager_LoginInformation set Status=1 where DPM_Id=" + lb.Text;
                SqlCommand cmd = new SqlCommand(upd, Dbutility.conn());
                cmd.ExecuteNonQuery();

            }
        }
       
            string s = "select dmp.DPM_Id,Dist_Name,DPT_Name,Name,Photo from DepoManager_PersonalInformation dmp inner join DepoInformation di on dmp.Depot=di.Depo_Id inner join District d on di.Dist_Id=d.Dist_Id inner join DepoManager_LoginInformation DL on dmp.DPM_Id=DL.dpm_id where Status=0";
            DataTable dt = Dbutility.returndt(s);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        
    }
    protected void btm_exit_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminHome.aspx");
    }
}
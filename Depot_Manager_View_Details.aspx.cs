using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Depot_Manager_View_Details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Dbutility.conn();
        int id;
        id = Convert.ToInt32(Session["id"].ToString());
        string sql = "select * from DepoManager_PersonalInformation where DPM_Id=" + id;
        DataTable dt = Dbutility.returndt(sql);
        lbl_name.Text = dt.Rows[0]["Name"].ToString();
        Image1.ImageUrl = "Image/" + dt.Rows[0]["Photo"].ToString();
        lbl_address.Text = dt.Rows[0]["Address"].ToString();
        lbl_dob.Text = Convert.ToDateTime(dt.Rows[0]["DOB"].ToString()).ToShortDateString();
        lbl_doj.Text = Convert.ToDateTime(dt.Rows[0]["DOJ"].ToString()).ToShortDateString();
        lbl_email.Text = dt.Rows[0]["Email"].ToString();
        lbl_gender.Text = dt.Rows[0]["Gender"].ToString();
        lbl_mobile_no.Text = dt.Rows[0]["Mobile_No"].ToString();
        lbl_pin.Text = dt.Rows[0]["Pin"].ToString();
        int k = Convert.ToInt32(dt.Rows[0]["Depot"].ToString());
        String str = "Select Address,DPT_Name,Dist_Name from DepoInformation DI inner join District D on D.Dist_Id=DI.Dist_Id where Depo_id=" + k;
        DataTable dt2 = Dbutility.returndt(str);
        lbl_dist.Text = dt2.Rows[0]["Dist_Name"].ToString();
        lbl_depo.Text = dt2.Rows[0]["Address"].ToString(); 
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Depot_Details.aspx");
    }
}
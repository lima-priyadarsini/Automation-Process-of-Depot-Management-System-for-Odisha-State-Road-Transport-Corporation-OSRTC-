using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class DepoManager_Registration : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("data source=(local);database=OSRTC;integrated security=true");
        con.Open();
        if (!IsPostBack)
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from district", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            ddl_dist.DataSource = dt;
            ddl_dist.DataTextField = dt.Columns[1].ToString();
            ddl_dist.DataValueField = dt.Columns[0].ToString();
            ddl_dist.DataBind();

            SqlDataAdapter da2 = new SqlDataAdapter("select * from depoinformation", con);
            DataTable dt2 = new DataTable();
            da2.Fill(dt2);
            ddl_depo.DataSource = dt2;
            ddl_depo.DataTextField = dt2.Columns[4].ToString();
            ddl_depo.DataValueField = dt2.Columns[0].ToString();
            ddl_depo.DataBind();

            SqlDataAdapter da3 = new SqlDataAdapter("select * from securityQuestion", con);
            DataTable dt3 = new DataTable();
            da3.Fill(dt3);
            ddl_security.DataSource = dt3;
            ddl_security.DataTextField = dt3.Columns[1].ToString();
            ddl_security.DataValueField = dt3.Columns[0].ToString();
            ddl_security.DataBind();

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string gen = "";
        if (RDB_M.Checked)
            gen = RDB_M.Text;
        else
            gen = RDB_F.Text;
        string fname = Path.GetFileName(Fu_Image.PostedFile.FileName);
        Fu_Image.PostedFile.SaveAs(Server.MapPath("Image/" + fname));

        string sql = "insert into DepoManager_PersonalInformation values(" + ddl_depo.SelectedValue + ",'" + txt_name.Text + "','" + txt_Email.Text + "'," + txt_mobno.Text + "," + txt_pin.Text + ",'" + txt_addr.Text + "','" + txt_dob.Text + "','" + txt_doj.Text + "','" + gen + "','" + fname + "')";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.ExecuteNonQuery();

        string sql1 = "select max(DPM_Id) from DepoManager_PersonalInformation";
        int k = Dbutility.returnscal(sql1);

        string st = "insert into DepoManager_LoginInformation values("+k+",'"+Txt_userid.Text+"','"+Txt_pwd.Text+"',"+ddl_security.SelectedValue+",'"+Txt_ans.Text+"',0)";
        SqlCommand cmd1 = new SqlCommand(st, Dbutility.conn());
        cmd1.ExecuteNonQuery();
    }
    protected void ddl_dist_SelectedIndexChanged(object sender, EventArgs e)
    {
        string sql = "select * from depoinformation where Dist_Id=" + ddl_dist.SelectedValue;
        SqlDataAdapter da = new SqlDataAdapter(sql, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        ddl_depo.DataSource = dt;
        ddl_depo.DataTextField = dt.Columns[2].ToString();
        ddl_depo.DataValueField = dt.Columns[0].ToString();
        ddl_depo.DataBind();
    }
    protected void ddl_depo_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class PersonalInformation : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("data source=(local);database=OSRTC;integrated security=true");
        con.Open();
        if (!IsPostBack)
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from state", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            ddl_state.DataSource = dt;
            ddl_state.DataTextField = dt.Columns[1].ToString();
            ddl_state.DataValueField = dt.Columns[0].ToString();
            ddl_state.DataBind();

            SqlDataAdapter da2 = new SqlDataAdapter("select * from city", con);
            DataTable dt2 = new DataTable();
            da2.Fill(dt2);
            ddl_city.DataSource = dt2;
            ddl_city.DataTextField = dt2.Columns[2].ToString();
            ddl_city.DataValueField = dt2.Columns[0].ToString();
            ddl_city.DataBind();

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
            gen =RDB_F.Text;
        string fname = Path.GetFileName(Fu_Image.PostedFile.FileName);
        Fu_Image.PostedFile.SaveAs(Server.MapPath("Image/" + fname));

        string sql = "insert into PersonalInformation values('" + txt_name.Text + "','" + txt_Email.Text + "'," + txt_mobno.Text + "," + ddl_state.SelectedValue + "," + ddl_city.SelectedValue + "," + txt_pin.Text + ",'" + txt_addr.Text + "','" + Convert.ToDateTime(txt_dob.Text).ToShortDateString() + "','" + Convert.ToDateTime(txt_doj.Text).ToShortDateString() + "','" + gen + "','" + fname + "')";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.ExecuteNonQuery();
    }
    protected void ddl_state_SelectedIndexChanged(object sender, EventArgs e)
    {
        string sql = "select * from city where st_id=" + ddl_state.SelectedValue;
        SqlDataAdapter da = new SqlDataAdapter(sql, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        ddl_city.DataSource = dt;
        ddl_city.DataTextField = dt.Columns[2].ToString();
        ddl_city.DataValueField = dt.Columns[0].ToString();
        ddl_city.DataBind();
    }
    protected void ddl_city_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
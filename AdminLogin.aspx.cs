using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class AdminLogin : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlConnection con= new SqlConnection("data source=(local);database=OSRTC;Integrated security=true;");
        con.Open();
        string sql="select * from AdminLogin where UserId='"+TextBox1.Text+"' and Password='"+TextBox2.Text+"'";
        SqlCommand cmd = new SqlCommand(sql,con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if(dt.Rows.Count>0)
        {
            Response.Redirect("AdminHome.aspx");
        }
    }
}
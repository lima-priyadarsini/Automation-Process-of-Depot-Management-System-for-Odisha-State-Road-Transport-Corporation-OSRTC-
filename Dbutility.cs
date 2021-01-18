using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

/// <summary>
/// Summary description for Dbutility
/// </summary>
public class Dbutility
{
	public Dbutility()
	{
		//
		// TODO: Add constructor logic here
		//

	}
    public static SqlConnection conn()
    {
        SqlConnection conn1 = new SqlConnection("data source=(local);database=OSRTC;Integrated Security=true;");
        conn1.Open();
        return conn1;
    }
    public static int returnscal(String sql)
    {
        int i;
        try
        {
            SqlCommand cmmd = new SqlCommand(sql, Dbutility.conn());
            i = Convert.ToInt32(cmmd.ExecuteScalar());
        }
        catch
        {
            i = 0;
        }
        return i;
    }
    public static DataTable returndt(string sql)
    {
        SqlDataAdapter da = new SqlDataAdapter(sql, conn());
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public static void fillddl(string sql, DropDownList ddl)
    {
        DataTable dt = returndt(sql);
        ddl.DataSource = dt;
        ddl.DataTextField = dt.Columns[1].ToString();
        ddl.DataValueField = dt.Columns[0].ToString();
        ddl.DataBind();
    }
    public static void filllb(string sql, ListBox lb)
    {
        DataTable dt = returndt(sql);
        lb.DataSource = dt;
        lb.DataTextField = dt.Columns[1].ToString();
        lb.DataValueField = dt.Columns[0].ToString();
        lb.DataBind();
    }
    public static void strdprcdr_FILL_DDL(DropDownList DDL, String sql)
    {
        SqlCommand cmds = new SqlCommand(sql, Dbutility.conn());
        cmds.CommandType = CommandType.StoredProcedure;
        SqlDataAdapter da2 = new SqlDataAdapter(cmds);
        DataTable dt2 = new DataTable();
        da2.Fill(dt2);
        DDL.DataSource = dt2;
        DDL.DataTextField = dt2.Columns[1].ToString();
        DDL.DataValueField = dt2.Columns[0].ToString();
        DDL.DataBind();
        DDL.Items.Insert(0, new ListItem("--Select--", "0"));
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
using System.Configuration;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
//----自己寫的----
using System.Web.Configuration;
using System.Data.OleDb;
using System.Data.Odbc;

public partial class addname : System.Web.UI.Page
{
    OleDbConnection con = new OleDbConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        con.Open();
        OleDbCommand cmd = new OleDbCommand("INSERT INTO [會員資料](姓名,會員帳號,會員密碼,地址)values(@name, @loginname, @loginword,@adress)", con);


        cmd.Parameters.Add("@name", OleDbType.WChar).Value = TextBox1.Text;
        cmd.Parameters.Add("@loginname", OleDbType.WChar).Value = TextBox2.Text;
        cmd.Parameters.Add("@loginword", OleDbType.WChar).Value = TextBox3.Text;
        cmd.Parameters.Add("@adress", OleDbType.WChar).Value = TextBox4.Text;
        cmd.ExecuteNonQuery();
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        Response.Redirect("home.aspx");
    }

}
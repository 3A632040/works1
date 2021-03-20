using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

//----自己寫的----
using System.Web.Configuration;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Data.Odbc;
//----自己寫的----

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //----上面已經事先寫好 Using System.Web.Configuration ----
        //---- (連結資料庫)----

        OleDbConnection Conn = new OleDbConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        Conn.Open();

        OleDbDataReader dr = null;
        OleDbCommand cmd = new OleDbCommand("select 會員ID, 會員帳號, 會員帳號, 會員密碼 from 會員資料 where 會員帳號 = '" + TextBox1.Text + "' and 會員密碼 = '" + TextBox2.Text + "'", Conn);
        //*** 請注意資料隱碼攻擊（SQL Injection攻擊）***

        dr = cmd.ExecuteReader();   //---- 這時候執行SQL指令，取出資料

        if (!dr.Read())
        {
            Response.Write("帳號或是密碼有錯！");

            cmd.Cancel();
            //----關閉DataReader之前，一定要先「取消」SqlCommand
            dr.Close();
            Conn.Close();
            Conn.Dispose();

            Response.End();   //--程式暫停。或是寫成 return，脫離這個事件。
        }
        else
        {
            Session["Login"] = "OK";

            //--帳號密碼驗證成功，才能獲得這個 Session["Login"] = "OK" 鑰匙

            Session["u_name"] = dr["會員帳號"].ToString();
            Session["u_passwd"] = dr["會員密碼"].ToString();
            Session["u_id"] = dr["會員ID"].ToString();
            cmd.Cancel();
            dr.Close();
            Conn.Close();
            Conn.Dispose();

            Response.Redirect("home.aspx");
            //--帳號密碼驗證成功，導向另一個網頁。
        }


    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("addname.aspx");
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.OleDb;
using System.Data.Odbc;

public partial class 購物車畫面 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //for (int i = 0; i < GridView1.Rows.Count; i++)
        {
           // CheckBox chkb = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");
            //if (chkb.Checked)
        }
        if (Session["Login"] == null || Session["Login"].ToString().Length < 0)
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            string id;
            int i = 0, z = 0,total=0 ;
            int[] array = new int[300];
            int[] idd = new int[300];
            string[] strid = new string[300];
            string[] strcol = new string[300];
            string[] strg = new string[300];
            int[] strdol = new int[300];

            id = Session["u_id"].ToString();
            OleDbConnection Conn = new OleDbConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            OleDbDataReader dr = null;

            Conn.Open();

            OleDbCommand cmd = new OleDbCommand("SELECT [購買商品],[會員ID], [顏色],[容量],[數量] ,[價格]  FROM [購物車]", Conn);

            dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                int iddStr = (int)dr["會員ID"];
                String idStr = (String)dr["購買商品"];
                String colStr = (String)dr["顏色"];
                String gStr = (String)dr["容量"];
                int muStr = (int)dr["數量"];
                int dolStr = (int)dr["價格"];

                idd[z] = iddStr;
                strid[z] = idStr;
                strcol[z] = colStr;
                strg[z] = gStr;
                array[z] = muStr;
                strdol[z] = dolStr;
                z = z + 1;
            }
            cmd.Cancel();
            Conn.Close();
            for (i = 0; i < z; i++)
            {
                if (idd[i] == int.Parse(id))
                {
                    total = total + (strdol[i] * array[i]);
                }
            }
            Label1.Text = total.ToString();







        }

    }


    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        string id;
        int i = 0, z = 0, total = 0;
        int[] array = new int[300];
        int[] idd = new int[300];
        string[] strid = new string[300];
        string[] strcol = new string[300];
        string[] strg = new string[300];
        int[] strdol = new int[300];

        id = Session["u_id"].ToString();
        OleDbConnection Conn = new OleDbConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        OleDbDataReader dr = null;

        Conn.Open();

        OleDbCommand cmd = new OleDbCommand("SELECT [購買商品],[會員ID], [顏色],[容量],[數量] ,[價格]  FROM [購物車]", Conn);

        dr = cmd.ExecuteReader();

        while (dr.Read())
        {
            int iddStr = (int)dr["會員ID"];
            String idStr = (String)dr["購買商品"];
            String colStr = (String)dr["顏色"];
            String gStr = (String)dr["容量"];
            int muStr = (int)dr["數量"];
            int dolStr = (int)dr["價格"];

            idd[z] = iddStr;
            strid[z] = idStr;
            strcol[z] = colStr;
            strg[z] = gStr;
            array[z] = muStr;
            strdol[z] = dolStr;
            z = z + 1;
        }
        cmd.Cancel();
        Conn.Close();
        for (i = 0; i < z; i++)
        {
            if (idd[i] == int.Parse(id))
            {
                total = total + (strdol[i] * array[i]);
            }
        }
        Label1.Text =  total.ToString();
        Label2.Text ="本次消費金額"+ total.ToString();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (CheckBox1.Checked == false)
        {
            Label2.Text = "請確認購物明細";
        }
        else
        {

            string id;
            int i = 0, z = 0, total = 0;
            int[] array = new int[300];
            int[] idd = new int[300];
            string[] strid = new string[300];
            string[] strcol = new string[300];
            string[] strg = new string[300];
            int[] strdol = new int[300];
            int[] shopid = new int[300];

            id = Session["u_id"].ToString();
            OleDbConnection Conn = new OleDbConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            OleDbDataReader dr = null;

            Conn.Open();

            OleDbCommand cmd = new OleDbCommand("SELECT [購買商品],[會員ID],[商品ID], [顏色],[容量],[數量] ,[價格]  FROM [購物車]", Conn);

            dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                int iddStr = (int)dr["會員ID"];
                String idStr = (String)dr["購買商品"];
                String colStr = (String)dr["顏色"];
                String gStr = (String)dr["容量"];
                int muStr = (int)dr["數量"];
                int dolStr = (int)dr["價格"];
                int shopidd = (int)dr["商品ID"];

                idd[z] = iddStr;
                strid[z] = idStr;
                strcol[z] = colStr;
                strg[z] = gStr;
                array[z] = muStr;
                strdol[z] = dolStr;
                shopid[z] = shopidd;
                z = z + 1;
            }
            cmd.Cancel();
            dr.Close();
            for (i = 0; i < z; i++)
            {
                if (idd[i] == int.Parse(id))
                {
                    total = total + (strdol[i] * array[i]);

                }
            }
                                      
            for (int j = 0; j < z; j++)
            {
                if (idd[j] == int.Parse(id))
                {
                    OleDbCommand cmm = new OleDbCommand("INSERT INTO [訂單明細](商品ID,商品名稱,商品價格,顏色,數量,容量)values(@id,@name,@dol,@color,@much,@ggg)", Conn);
                    cmm.Parameters.Add("@id", OleDbType.Integer).Value = shopid[j];
                    cmm.Parameters.Add("@name", OleDbType.WChar).Value = strid[j];
                    cmm.Parameters.Add("@dol", OleDbType.Integer).Value = strdol[j];
                    cmm.Parameters.Add("@color", OleDbType.WChar).Value = strcol[j];
                    cmm.Parameters.Add("@much", OleDbType.Integer).Value = array[j];
                    cmm.Parameters.Add("@ggg", OleDbType.WChar).Value = strg[j];
                    cmm.ExecuteNonQuery();
                    cmm.Cancel();
                    int tt = array[j] * strdol[j];
                    OleDbCommand cnd = new OleDbCommand("SELECT [訂單明細ID]  FROM [訂單明細]", Conn);
                    OleDbDataReader ds = null;
                    ds = cnd.ExecuteReader();
                    int[] aa = new int[300];
                    int x = 0;
                    while (ds.Read())
                    {
                        int a = (int)ds["訂單明細ID"];
                        aa[x] = a;
                        x = x + 1;
                    }
                    cnd.Cancel();
                    ds.Close();
                    OleDbCommand cnn = new OleDbCommand("INSERT INTO [訂貨主檔](訂單明細ID,訂單日期,會員ID,配送,價格)values(@menuid,@date,@id,@car,@much)", Conn);
                    cnn.Parameters.Add("@menuid", OleDbType.Integer).Value = aa[x - 1]; 
                    cnn.Parameters.Add("@date", OleDbType.Date).Value = (DateTime.Now.ToShortDateString()); 
                    cnn.Parameters.Add("@id", OleDbType.Integer).Value = idd[j]; 
                    cnn.Parameters.Add("@car", OleDbType.WChar).Value = DropDownList1.Text; 
                    cnn.Parameters.Add("@much", OleDbType.Integer).Value = tt; 
                    cnn.ExecuteNonQuery();
                    cnn.Cancel();

                    OleDbCommand cde = new OleDbCommand(" DELETE FROM [購物車] WHERE [會員ID] = "+ id, Conn);
                    cde.ExecuteNonQuery();
                    
                }
            }

           
            Conn.Close();
            Response.Redirect("home.aspx");
        }
    }
}
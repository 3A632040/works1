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

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        string shop;
        shop = Request.QueryString["shop"];
        int value = Convert.ToInt32(Request.QueryString["shop"]);
        Session["picture"] = Request.QueryString["shop"]; 

        OleDbConnection Conn = new OleDbConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        OleDbDataReader dr = null;

        OleDbCommand cmd = new OleDbCommand("SELECT [商品ID], [商品名稱] ,[顏色] ,[容量] ,[供應商ID] FROM [商品主黨]", Conn);

        Conn.Open();
        dr = cmd.ExecuteReader();
        int i = 0, j = 0, k = 0, l = 0, m = 0, z = 0;
        int[] array = new int[300];
        string[] strid = new string[300];
        string[] strcol = new string[300];
        string[] strg = new string[300];
        int[] idarray = new int[300];

        int[] arrayid = new int[300];
        string[] stridch = new string[300];
        string[] strcolch = new string[300];
        string[] strgch = new string[300];


        while (dr.Read())
        {
            int shidint = (int)dr["商品ID"];
            String idStr = (String)dr["商品名稱"];
            String colStr = (String)dr["顏色"];
            String gStr = (String)dr["容量"];
            int idint = (int)dr["供應商ID"];
            if (idint == 1)
            {
                i = i + 1;
                array[z] = shidint;
                strid[z] = idStr;
                strcol[z] = colStr;
                strg[z] = gStr;
                idarray[z] = idint;
                arrayid[z]= shidint;
                stridch[z]= idStr;
                strcolch[z] = colStr;
                strgch[z] = gStr;

            }
            if (idint == 2)
            {
                j = j + 1;
                array[z] = shidint;
                strid[z] = idStr;
                strcol[z] = colStr;
                strg[z] = gStr;
                idarray[z] = idint;
                arrayid[z] = shidint;
                stridch[z] = idStr;
                strcolch[z] = colStr;
                strgch[z] = gStr;
            }
            if (idint == 3)
            {
                k = k + 1;
                array[z] = shidint;
                strid[z] = idStr;
                strcol[z] = colStr;
                strg[z] = gStr;
                idarray[z] = idint;
                arrayid[z] = shidint;
                stridch[z] = idStr;
                strcolch[z] = colStr;
                strgch[z] = gStr;
            }
            if (idint == 4)
            {
                l = l + 1;
                array[z] = shidint;
                strid[z] = idStr;
                strcol[z] = colStr;
                strg[z] = gStr;
                idarray[z] = idint;
                arrayid[z] = shidint;
                stridch[z] = idStr;
                strcolch[z] = colStr;
                strgch[z] = gStr;
            }
            if (idint == 5)
            {
                m = m + 1;
                array[z] = shidint;
                strid[z] = idStr;
                strcol[z] = colStr;
                strg[z] = gStr;
                idarray[z] = idint;
                arrayid[z] = shidint;
                stridch[z] = idStr;
                strcolch[z] = colStr;
                strgch[z] = gStr;
            }
            z = z + 1;
        }
        //Session["id"] = idarray[value-1];
        Session["color"]= strid[0];
        Session["color"] = strid[Int32.Parse(shop) -1];       
        Session["g"] = strid[0];
        Session["g"] = strid[Int32.Parse(shop) - 1];
        Session.Timeout = 60;

        int x = z - 1;
        int y = 0;
            
        int a = 0;
        for (int c = 0; c < z; c++)
        {
            if (stridch[c] == stridch[c + 1])
            {
                for (int b = c; b < z; b++)
                {
                    if (b + 1 < z)
                    {
                        arrayid[b] = arrayid[b + 1];
                        stridch[b] = stridch[b + 1];
                        strcolch[b] = strcolch[b + 1];
                        strgch[b] = strgch[b + 1];
                    }
                }

                z = z - 1;
                c = c - 1;
            }
            else
            {
                y++;
            }
        }
        y = y + 1;
        for (int c = 0; c < a; c++)
        {
           // DropDownList1.Items.Add(strcolch[c]);
           // DropDownList1.Items.Add(strgch[c]);
        }
        for (int q = 0; q < y; q++)
        {        
                LinkButton olbtn = new LinkButton();
                olbtn.ID = arrayid[q].ToString();
                olbtn.Text = stridch[q];
                olbtn.Click += new EventHandler(lbtn_Click);
                PlaceHolder1.Controls.Add(olbtn);
                Label olab = new Label();
                //olab.Text = " | ";
                PlaceHolder1.Controls.Add(olab);
                olbtn.Style["height"] = "30px";
                olbtn.Style["Width"] = "180px";
                olbtn.Style["Font-Size"] = "Small";
                olbtn.BorderStyle = BorderStyle.Ridge;
                olbtn.Style["Border-Color"] = "Silver";
                olbtn.Style["Line-height"] = "20px";
                olbtn.Style["Padding-left"] = "10px";
               // olbtn.Style["Margin-right"] = "10px";
                     
        }
        cmd.Cancel();
        dr.Close();  
         Conn.Close();
         Conn.Dispose();
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        string shop;
        shop = Request.QueryString["shop"];
        int value = Convert.ToInt32(Request.QueryString["shop"]);


        OleDbConnection Conn = new OleDbConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        OleDbDataReader dr = null;

        OleDbCommand cmd = new OleDbCommand("SELECT [商品ID], [商品名稱] ,[顏色] ,[容量] ,[供應商ID] FROM [商品主黨]", Conn);

        Conn.Open();
        dr = cmd.ExecuteReader();
        int i = 0, j = 0, k = 0, l = 0, m = 0, z = 0;
        int[] array = new int[300];
        string[] strid = new string[300];
        string[] strcol = new string[300];
        string[] strg = new string[300];
        int[] idarray = new int[300];

        while (dr.Read())
        {
            int shidint = (int)dr["商品ID"];
            String idStr = (String)dr["商品名稱"];
            String colStr = (String)dr["顏色"];
            String gStr = (String)dr["容量"];
            int idint = (int)dr["供應商ID"];
            if (idint == 1)
            {
                i = i + 1;
                array[z] = shidint;
                strid[z] = idStr;
                strcol[z] = colStr;
                strg[z] = gStr;
                idarray[z] = idint;
            }
            if (idint == 2)
            {
                j = j + 1;
                array[z] = shidint;
                strid[z] = idStr;
                strcol[z] = colStr;
                strg[z] = gStr;
                idarray[z] = idint;
            }
            if (idint == 3)
            {
                k = k + 1;
                array[z] = shidint;
                strid[z] = idStr;
                strcol[z] = colStr;
                strg[z] = gStr;
                idarray[z] = idint;
            }
            if (idint == 4)
            {
                l = l + 1;
                array[z] = shidint;
                strid[z] = idStr;
                strcol[z] = colStr;
                strg[z] = gStr;
                idarray[z] = idint;
            }
            if (idint == 5)
            {
                m = m + 1;
                array[z] = shidint;
                strid[z] = idStr;
                strcol[z] = colStr;
                strg[z] = gStr;
                idarray[z] = idint;
            }
            z = z + 1;
        }

        for (int c = 0; c < z; c++)
        {

            if (strid[c] == strid[value-1])
            {
                if (strcol[c] == DropDownList2.Text.ToString())
                {
                    if (strg[c] == DropDownList3.Text.ToString())
                    {

                        //Session["picture"] = array[c];
                        //Session["color"] = strcol[c];
                        //Session["g"] = strg[c];
                        Response.Redirect("Default3.aspx?shop=" + array[c]);
                    }
                }
            }

        }
        cmd.Cancel();
        dr.Close();
        Conn.Close();
        Conn.Dispose();
    }

    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        string shop;
        shop = Request.QueryString["shop"];
        int value = Convert.ToInt32(Request.QueryString["shop"]);


        OleDbConnection Conn = new OleDbConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        OleDbDataReader dr = null;

        OleDbCommand cmd = new OleDbCommand("SELECT [商品ID], [商品名稱] ,[顏色] ,[容量] ,[供應商ID] FROM [商品主黨]", Conn);

        Conn.Open();
        dr = cmd.ExecuteReader();
        int i = 0, j = 0, k = 0, l = 0, m = 0, z = 0;
        int[] array = new int[300];
        string[] strid = new string[300];
        string[] strcol = new string[300];
        string[] strg = new string[300];
        int[] idarray = new int[300];

        while (dr.Read())
        {
            int shidint = (int)dr["商品ID"];
            String idStr = (String)dr["商品名稱"];
            String colStr = (String)dr["顏色"];
            String gStr = (String)dr["容量"];
            int idint = (int)dr["供應商ID"];
            if (idint == 1)
            {
                i = i + 1;
                array[z] = shidint;
                strid[z] = idStr;
                strcol[z] = colStr;
                strg[z] = gStr;
                idarray[z] = idint;
            }
            if (idint == 2)
            {
                j = j + 1;
                array[z] = shidint;
                strid[z] = idStr;
                strcol[z] = colStr;
                strg[z] = gStr;
                idarray[z] = idint;
            }
            if (idint == 3)
            {
                k = k + 1;
                array[z] = shidint;
                strid[z] = idStr;
                strcol[z] = colStr;
                strg[z] = gStr;
                idarray[z] = idint;
            }
            if (idint == 4)
            {
                l = l + 1;
                array[z] = shidint;
                strid[z] = idStr;
                strcol[z] = colStr;
                strg[z] = gStr;
                idarray[z] = idint;
            }
            if (idint == 5)
            {
                m = m + 1;
                array[z] = shidint;
                strid[z] = idStr;
                strcol[z] = colStr;
                strg[z] = gStr;
                idarray[z] = idint;
            }
            z = z + 1;
        }

        for (int c = 0; c < z; c++)
        {
            if(strid[c] == strid[value-1])
            { 
                if (strcol[c] == DropDownList2.Text.ToString())
                {
                    if (strg[c] == DropDownList3.Text.ToString())
                    {
                    
                        //Session["picture"] = array[c];
                        //Session["color"] = strcol[c];
                        //Session["g"] = strg[c];
                        Response.Redirect("Default3.aspx?shop=" + array[c]);
                    }
                }
            }
        }
        cmd.Cancel();
        dr.Close();
        Conn.Close();
        Conn.Dispose();
    }


    protected void lbtn_Click(object sender, EventArgs e)
    {
        LinkButton lbtn = (LinkButton)sender;

        Response.Redirect("Default3.aspx?shop=" + lbtn.ID);

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["Login"] == null || Session["Login"].ToString().Length < 0)
        {
            Response.Redirect("login.aspx");
        }
        else
        {

            int i = 0,  z = 0;
            int[] array = new int[300];
            string[] strid = new string[300];
            string[] strcol = new string[300];
            string[] strg = new string[300];
            int[] strdol = new int[300];

            string shop;
            shop = Request.QueryString["shop"];
            OleDbConnection Conn = new OleDbConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            OleDbDataReader dr = null;

            Conn.Open();

            OleDbCommand cmd = new OleDbCommand("SELECT [商品ID], [商品名稱] ,[顏色],[容量],[價格]  FROM [商品主黨]", Conn);
            OleDbCommand cnn = new OleDbCommand("INSERT INTO [購物車](會員ID,商品ID,購買商品,顏色,容量,數量,價格)values( @ID, @shopID, @goods, @color, @ggg ,@much,@dol)", Conn);

            dr = cmd.ExecuteReader();
            
            while (dr.Read())
            {
                int shidint = (int)dr["商品ID"];
                String idStr = (String)dr["商品名稱"];
                String colStr = (String)dr["顏色"];
                String gStr = (String)dr["容量"];
                int dolStr = (int)dr["價格"];

                array[z] = shidint;
                strid[z] = idStr;
                strcol[z] = colStr;
                strg[z] = gStr;
                strdol[z] = dolStr;
                z = z + 1;
            }
            cmd.Cancel();

            for (i = 0; i < z;i++)
            {
                if (shop == array[i].ToString())
                {
                    cnn.Parameters.Add("@ID", OleDbType.Integer).Value = Session["u_id"];
                    cnn.Parameters.Add("@shopID", OleDbType.Integer).Value = array[i];
                    cnn.Parameters.Add("@goods", OleDbType.WChar).Value = strid[i];
                    cnn.Parameters.Add("@color", OleDbType.WChar).Value = strcol[i];
                    cnn.Parameters.Add("@ggg", OleDbType.WChar).Value = strg[i];
                    cnn.Parameters.Add("@much", OleDbType.Integer).Value = TextBox1.Text;
                    cnn.Parameters.Add("@dol", OleDbType.Integer).Value = strdol[i];
                    cnn.ExecuteNonQuery();
                    TextBox1.Text = "";
                }

            }

            cnn.Cancel();
            dr.Close();
            Conn.Close();
            Conn.Dispose();
        }

    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["Login"] == null || Session["Login"].ToString().Length < 0)
        {
            Response.Redirect("login.aspx");
        }
        else
        { 
            Response.Redirect("shoppingcar.aspx");
        }
    }
}
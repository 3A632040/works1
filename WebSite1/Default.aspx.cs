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


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        OleDbConnection Conn = new OleDbConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        OleDbDataReader dr = null;

        OleDbCommand cmd = new OleDbCommand("SELECT [商品ID], [商品名稱]  FROM [商品主黨]", Conn);

        try     //==== 以下程式，只放「執行期間」的指令！=====================
        {
            Conn.Open();
            dr = cmd.ExecuteReader();

        }
        catch (Exception ex)
        {
            Response.Write("<b>Error Message----  </b>" + ex.ToString() + "<HR/>");
        }

        finally
        {
            if (dr != null)
            {
                cmd.Cancel();
                dr.Close();
            }
            if (Conn.State == ConnectionState.Open)
            {
                Conn.Close();
                Conn.Dispose();
            }
        }



    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string fikename = FileUpload1.FileName;
            string savePath = Server.MapPath("~/Upload/");

            if (!System.IO.Directory.Exists(savePath))
                System.IO.Directory.CreateDirectory(savePath);

            string saveFileTo = savePath + fikename;
            FileUpload1.SaveAs(saveFileTo);
            Response.Write("上傳成功");

        }
        else
        {
            Response.Write("請選擇檔案");
        }



    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
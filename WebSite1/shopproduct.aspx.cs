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

using System.Collections;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;



public partial class Default4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string name;
        name =  Request.QueryString["name"] ;
        string downpicture1, downpicture2, downpicture3, downpicture4, downpicture5, downpicture6;
        int value = Convert.ToInt32(Request.QueryString["name"]);


        OleDbConnection Conn = new OleDbConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        OleDbDataReader dr = null;

        OleDbCommand cmd = new OleDbCommand("SELECT [商品ID], [商品名稱] ,[供應商ID] FROM [商品主黨]", Conn);


        Conn.Open();
        dr = cmd.ExecuteReader();
        int i = 0, j = 0, k = 0, l = 0, m = 0, z = 0;
        int[] array = new int[300];
        int[] idarray = new int[300];
        string[] str = new string[300];
        int[] arraypic = new int[300];
        int[] idarraypic = new int[300];
        while (dr.Read())
        {

            String NameStr = (String)dr["商品名稱"];
            int shidint = (int)dr["商品ID"];
            int idint = (int)dr["供應商ID"];
            if (idint == 1)
            {
                i = i + 1;
                array[z] = shidint;
                str[z] = NameStr;
                idarray[z] = idint;
                arraypic[z] = shidint;
                idarraypic[z] = idint;
            }
            if (idint == 2)
            {
                j = j + 1;
                array[z] = shidint;
                str[z] = NameStr;
                idarray[z] = idint;
                arraypic[z] = shidint;
                idarraypic[z] = idint;
            }
            if (idint == 3)
            {
                k = k + 1;
                array[z] = shidint;
                str[z] = NameStr;
                idarray[z] = idint;
                arraypic[z] = shidint;
                idarraypic[z] = idint;
            }
            if (idint == 4)
            {
                l = l + 1;
                array[z] = shidint;
                str[z] = NameStr;
                idarray[z] = idint;
                arraypic[z] = shidint;
                idarraypic[z] = idint;
            }
            if (idint == 5)
            {
                m = m + 1;
                array[z] = shidint;
                str[z] = NameStr;
                idarray[z] = idint;
                arraypic[z] = shidint;
                idarraypic[z] = idint;
            }
            z = z + 1;
        }
        int x = z - 1;
        int y = 0;
        //Response.Write(x);
        for (int a = 0; a < z; a++)
        {
            if (str[a] == str[a + 1])
            {
                for (int b = a; b < z; b++)
                {
                    if (b + 1 < z)
                    {
                        str[b] = str[b + 1];
                        idarray[b] = idarray[b + 1];
                        array[b] = array[b + 1];
                    }
                }

                z = z - 1;
                a = a - 1;
            }
            else
            {
                y++;
            }
        }
        y = y + 1;
        int c = 0;
        for (int q = 0; q < y; q++)
        {
            if (value == 1)
            { 


             if (idarray[q] == 1)
             {
                    LinkButton olbtn = new LinkButton();
                    olbtn.ID = array[q].ToString();
                    olbtn.Text =   str[q];
                    olbtn.Click += new EventHandler(lbtn_Click);
                    PlaceHolder1.Controls.Add(olbtn);
                    Label olab = new Label();
                    //olab.Text = " | ";
                    PlaceHolder1.Controls.Add(olab);
                    olbtn.Style["height"] = "50px";
                    olbtn.Style["Font-Size"] = "Large";
                    olbtn.BorderStyle = BorderStyle.Ridge;
                    olbtn.Style["Border-Color"] = "#6699FF";
                    olbtn.Style["Line-height"] = "40px";
                    olbtn.Style["Padding-left"] = "20px";
                    olbtn.Style["Margin-right"] = "10px";
                }
            }
            if (value == 2)
            {
                if (idarray[q] == 2)
                {
                    LinkButton olbtn = new LinkButton();
                    olbtn.ID = array[q].ToString();
                    olbtn.Text = str[q];
                    olbtn.Click += new EventHandler(lbtn_Click);
                    PlaceHolder1.Controls.Add(olbtn);
                    Label olab = new Label();
                    //olab.Text = " | ";
                    PlaceHolder1.Controls.Add(olab);
                    olbtn.Style["height"] = "50px";
                    olbtn.Style["Font-Size"] = "Large";
                    olbtn.BorderStyle = BorderStyle.Ridge;
                    olbtn.Style["Border-Color"] = "#6699FF";
                    olbtn.Style["Line-height"] = "40px";
                    olbtn.Style["Padding-left"] = "20px";
                    olbtn.Style["Margin-right"] = "10px";
                }
            }
            if (value == 3)
            {
                if (idarray[q] == 3)
                {
                    LinkButton olbtn = new LinkButton();
                    olbtn.ID = array[q].ToString();
                    olbtn.Text = str[q];
                    olbtn.Click += new EventHandler(lbtn_Click);
                    PlaceHolder1.Controls.Add(olbtn);
                    Label olab = new Label();
                    //olab.Text = " | ";
                    PlaceHolder1.Controls.Add(olab);
                    olbtn.Style["height"] = "50px";
                    olbtn.Style["Font-Size"] = "Large";
                    olbtn.BorderStyle = BorderStyle.Ridge;
                    olbtn.Style["Border-Color"] = "#6699FF";
                    olbtn.Style["Line-height"] = "40px";
                    olbtn.Style["Padding-left"] = "20px";
                    olbtn.Style["Margin-right"] = "10px";
                }
            }
            if (value == 4)
            {
                if (idarray[q] == 4)
                {
                    LinkButton olbtn = new LinkButton();
                    olbtn.ID = array[q].ToString();
                    olbtn.Text = str[q];
                    olbtn.Click += new EventHandler(lbtn_Click);
                    PlaceHolder1.Controls.Add(olbtn);
                    Label olab = new Label();
                    //olab.Text = " | ";
                    PlaceHolder1.Controls.Add(olab);
                    olbtn.Style["height"] = "50px";
                    olbtn.Style["Font-Size"] = "Large";
                    olbtn.BorderStyle = BorderStyle.Ridge;
                    olbtn.Style["Border-Color"] = "#6699FF";
                    olbtn.Style["Line-height"] = "40px";
                    olbtn.Style["Padding-left"] = "20px";
                    olbtn.Style["Margin-right"] = "10px";
                }
            }
            if (value == 5)
            {
                if (idarray[q] == 5)
                {
                    LinkButton olbtn = new LinkButton();
                    olbtn.ID = array[q].ToString();
                    olbtn.Text = str[q];
                    olbtn.Click += new EventHandler(lbtn_Click);
                    PlaceHolder1.Controls.Add(olbtn);
                    Label olab = new Label();
                    //olab.Text = " | ";
                    PlaceHolder1.Controls.Add(olab);

                   // olbtn.Style["background-color"] = "blue"; //背景设为蓝色　                   
                    olbtn.Style["height"] = "50px";
                    olbtn.Style["Font-Size"] = "Large";
                    olbtn.BorderStyle  = BorderStyle.Ridge;
                    olbtn.Style["Border-Color"] = "#6699FF";
                    olbtn.Style["Line-height"] = "40px";
                    olbtn.Style["Padding-left"] = "20px";
                    olbtn.Style["Margin-right"] = "10px";

                }
            }
            c++;
        }


        j = j + i;
        k = k + j;
        l = l + k;
        m = m + l;
        int[] randomArray = new int[6];
        Random rnd = new Random();
        for (int u = 0; u < 6; u++)
        {
            if ((value == 1))            
            {
                
                randomArray[u] = rnd.Next(1, i);

                for (int t = 0; t < u; t++)
                {
                     while (randomArray[t] == randomArray[u])
                     {
                        t = 0;
                        randomArray[u] = rnd.Next(1, i);
                     }
                }
            }
            if ((value == 2))
            {
                randomArray[u] = rnd.Next(i+1, j);

                for (int t = 0; t < u; t++)
                {
                    while (randomArray[t] == randomArray[u])
                    {
                        t = 0;
                        randomArray[u] = rnd.Next(i + 1, j);
                    }
                }
            }
            if ((value == 3))
            {
                randomArray[u] = rnd.Next(j+1, k);

                for (int t = 0; t < u; t++)
                {
                    while (randomArray[t] == randomArray[u])
                    {
                        t = 0;
                        randomArray[u] = rnd.Next(j+1, k);
                    }
                }
            }
            if ((value == 4))
            {
                randomArray[u] = rnd.Next(k+1, l);

                for (int t = 0; t < u; t++)
                {
                    while (randomArray[t] == randomArray[u])
                    {
                        t = 0;
                        randomArray[u] = rnd.Next(k+1, l);
                    }
                }
            }
            if ((value == 5))
            {
                randomArray[u] = rnd.Next(l+1, m);

                for (int t = 0; t < u; t++)
                {
                    while (randomArray[t] == randomArray[u])
                    {
                        t = 0;
                        randomArray[u] = rnd.Next(l+1, m);
                    }
                }
            }
        }
        downpicture1 = randomArray[0].ToString();
        downpicture2 = randomArray[1].ToString();
        downpicture3 = randomArray[2].ToString();
        downpicture4 = randomArray[3].ToString();
        downpicture5 = randomArray[4].ToString();
        downpicture6 = randomArray[5].ToString();
        Session["downpicture1"] = downpicture1;
        Session["downpicture2"] = downpicture2;
        Session["downpicture3"] = downpicture3;
        Session["downpicture4"] = downpicture4;
        Session["downpicture5"] = downpicture5;
        Session["downpicture6"] = downpicture6;




        Conn.Close();
        cmd.Cancel();
        dr.Close();
        Conn.Dispose();


    }

    protected void lbtn_Click(object sender, EventArgs e)
    {
        LinkButton lbtn = (LinkButton)sender;

        Response.Redirect("Default3.aspx?shop=" + lbtn.ID);

    }
}

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="item.aspx.cs" Inherits="item" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
     <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Shop Homepage - Start Bootstrap Template</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/shop-homepage.css" rel="stylesheet">

</head>
<body>
    <form id="form1" runat="server">

        
         <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container">
            <a class="navbar-brand" href="home.aspx">手機王</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">                 
                                <asp:ListView ID="ListView1" runat="server" DataKeyNames="供應商ID" DataSourceID="SqlDataSource2">                 
                <ItemTemplate>                    
                        <td>
                             <li class="nav-item">
                               <a class="nav-link" href="shopproduct.aspx?name=<%# Eval("供應商ID") %>"> <asp:Label ID="供應商單位Label" runat="server" Text='<%# Eval("供應商單位") %>'  /></a>
                             </li>
                        </td>
                        
                </ItemTemplate>               
            </asp:ListView>  
                     <li class="nav-item"><a class="nav-link js-scroll-trigger" href="item.aspx">訂單</a></li>
                      <% 
                           
                            if(Session["Login"]==null || Session["Login"].ToString().Length<0)  { %>                                    
                            <li class="nav-item"><a class="nav-link js-scroll-trigger" href="login.aspx">登入</a></li> 
                             <% }
                           else{ %>      
                             <li class="nav-item"><a class="nav-link js-scroll-trigger" href="shoppingcar.aspx">購物車</a></li>   
                             <li class="nav-item"><a class="nav-link js-scroll-trigger" href="sessionlogout.aspx">登出</a></li>                                
                             <% }
                         %>        
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [供應商單位], [供應商ID] FROM [供應商]"></asp:SqlDataSource>
                      
                </ul>
            </div>
        </div>
    </nav>

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
          <h1 class="h2" style="font-size: 60px; color: #00FF00;">購買紀錄</h1>
        <div class="btn-toolbar mb-2 mb-md-0">
        </div>
      </div>
        <div>
           
            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="1200px" EnableTheming="True">
                        <Columns>
                            <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                            <asp:BoundField DataField="訂單日期" HeaderText="訂單日期" SortExpression="訂單日期" />
                            <asp:BoundField DataField="商品名稱" HeaderText="商品名稱" SortExpression="商品名稱" />
                            <asp:BoundField DataField="顏色" HeaderText="顏色" SortExpression="顏色" />
                            <asp:BoundField DataField="容量" HeaderText="容量" SortExpression="容量" />
                            <asp:BoundField DataField="數量" HeaderText="數量" SortExpression="數量" />
                            <asp:BoundField DataField="價格" HeaderText="價格" SortExpression="價格" />
                        </Columns>
                    </asp:GridView>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [購物車] WHERE [編號] = ? AND (([購買商品] = ?) OR ([購買商品] IS NULL AND ? IS NULL)) AND (([容量] = ?) OR ([容量] IS NULL AND ? IS NULL)) AND (([顏色] = ?) OR ([顏色] IS NULL AND ? IS NULL)) AND (([數量] = ?) OR ([數量] IS NULL AND ? IS NULL)) AND (([價格] = ?) OR ([價格] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [購物車] ([購買商品], [容量], [顏色], [數量], [價格], [編號]) VALUES (?, ?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT 會員資料.姓名, 訂貨主檔.訂單日期, 訂單明細.商品名稱, 訂單明細.顏色, 訂單明細.容量, 訂單明細.數量, 訂貨主檔.價格 FROM ((訂單明細 INNER JOIN 訂貨主檔 ON 訂單明細.訂單明細ID = 訂貨主檔.訂單明細ID) INNER JOIN 會員資料 ON 訂貨主檔.會員ID = 會員資料.會員ID) WHERE (訂貨主檔.會員ID = ?)" UpdateCommand="UPDATE [購物車] SET [購買商品] = ?, [容量] = ?, [顏色] = ?, [數量] = ?, [價格] = ? WHERE [編號] = ? AND (([購買商品] = ?) OR ([購買商品] IS NULL AND ? IS NULL)) AND (([容量] = ?) OR ([容量] IS NULL AND ? IS NULL)) AND (([顏色] = ?) OR ([顏色] IS NULL AND ? IS NULL)) AND (([數量] = ?) OR ([數量] IS NULL AND ? IS NULL)) AND (([價格] = ?) OR ([價格] IS NULL AND ? IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_編號" Type="Int32" />
                            <asp:Parameter Name="original_購買商品" Type="String" />
                            <asp:Parameter Name="original_購買商品" Type="String" />
                            <asp:Parameter Name="original_容量" Type="String" />
                            <asp:Parameter Name="original_容量" Type="String" />
                            <asp:Parameter Name="original_顏色" Type="String" />
                            <asp:Parameter Name="original_顏色" Type="String" />
                            <asp:Parameter Name="original_數量" Type="Int32" />
                            <asp:Parameter Name="original_數量" Type="Int32" />
                            <asp:Parameter Name="original_價格" Type="Int32" />
                            <asp:Parameter Name="original_價格" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="購買商品" Type="String" />
                            <asp:Parameter Name="容量" Type="String" />
                            <asp:Parameter Name="顏色" Type="String" />
                            <asp:Parameter Name="數量" Type="Int32" />
                            <asp:Parameter Name="價格" Type="Int32" />
                            <asp:Parameter Name="編號" Type="Int32" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:SessionParameter Name="?" SessionField="u_id" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="購買商品" Type="String" />
                            <asp:Parameter Name="容量" Type="String" />
                            <asp:Parameter Name="顏色" Type="String" />
                            <asp:Parameter Name="數量" Type="Int32" />
                            <asp:Parameter Name="價格" Type="Int32" />
                            <asp:Parameter Name="original_編號" Type="Int32" />
                            <asp:Parameter Name="original_購買商品" Type="String" />
                            <asp:Parameter Name="original_購買商品" Type="String" />
                            <asp:Parameter Name="original_容量" Type="String" />
                            <asp:Parameter Name="original_容量" Type="String" />
                            <asp:Parameter Name="original_顏色" Type="String" />
                            <asp:Parameter Name="original_顏色" Type="String" />
                            <asp:Parameter Name="original_數量" Type="Int32" />
                            <asp:Parameter Name="original_數量" Type="Int32" />
                            <asp:Parameter Name="original_價格" Type="Int32" />
                            <asp:Parameter Name="original_價格" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                            <br />                           
                    <br />
                  


                    <br />
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="GridView1" EventName="Unload" />
                </Triggers>
            </asp:UpdatePanel>

          </div>
       </main>
      
    </form>
</body>
</html>


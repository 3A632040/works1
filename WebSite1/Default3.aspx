<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!DOCTYPE html>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<div class="container">
    <html>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container">
            <a class="navbar-brand" href="home.aspx" >手機王  </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">                    
                                <asp:ListView ID="ListView1" runat="server" DataKeyNames="供應商ID" DataSourceID="SqlDataSource1">                 
                <ItemTemplate>                    
                        <td>
                             <li class="nav-item">
                               <a class="nav-link" href="shopproduct.aspx?name=<%# Eval("供應商ID") %>"> <asp:Label ID="供應商單位Label" runat="server" Text='<%# Eval("供應商單位") %>' /></a>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [供應商單位], [供應商ID] FROM [供應商]"></asp:SqlDataSource>
                      
                </ul>
            </div>
        </div>
    </nav>
    <head>
        <meta charset="utf-8" />
        <title></title>
    </head>
    <body>
        <!-- Page Content -->
        <div class="container">

            <!-- Portfolio Item Heading -->
            <h1 class="my-4">

                <br></br>
            </h1>
                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            
            <!-- Portfolio Item Row -->
            <div class="row">
                  <div class="col-lg-2">
        <h1 class="my-4" >  <font size="6">其他機型</font>   </h1>
        <div class="list-group">
            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>

            </div>
                      </div>

                <div class="col-md-5">    

                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="商品ID" DataSourceID="SqlDataSource2" Height="400px" Width="400px">                  
                        <ItemTemplate>                       
                            &nbsp; <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("商品圖片") %>'  Height="400px" Width="400px" />
                            <br />
                        </ItemTemplate>
                    </asp:FormView>
                     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [商品ID], [商品圖片] FROM [商品主黨] WHERE ([商品ID] = ?)">
                        <SelectParameters>
                            <asp:QueryStringParameter DefaultValue="1" Name="商品ID" QueryStringField="shop" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
   
                </div>

                <div class="col-md-4">
                    <h3 class="my-3"><asp:ListView ID="ListView2" runat="server" DataKeyNames="商品ID" DataSourceID="SqlDataSource4">                                                            
                <ItemTemplate>
                    <tr style="">                       
                        <td>
                            &nbsp<asp:Label ID="商品名稱Label" runat="server" Text='<%# Eval("商品名稱") %>' Font-Size="30" />
                            <br />                   
                        </td>
                    </tr>
                </ItemTemplate>                              
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [商品ID], [商品名稱] FROM [商品主黨] WHERE ([商品ID] = ?)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="商品ID" QueryStringField="shop" Type="Int32" />
                </SelectParameters>
                        </asp:SqlDataSource>
       
                          <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [商品ID], [容量], [顏色], [存貨], [價格] FROM [商品主黨] WHERE ([商品ID] = ?)">
                              <SelectParameters>
                                  <asp:QueryStringParameter Name="商品ID" QueryStringField="shop" Type="Int32" />
                              </SelectParameters>
                        </asp:SqlDataSource>
        <asp:FormView ID="FormView3" runat="server" DataKeyNames="商品ID" DataSourceID="SqlDataSource5">
            <ItemTemplate>
                 &nbsp&nbsp<asp:Label ID="顏色" runat="server" Font-Size="15"  Text= '顏色:'></asp:Label>
                <asp:Label ID="顏色Label" runat="server" Font-Size="15" Text='<%# Bind("顏色") %>' />
                <br />
                &nbsp&nbsp<asp:Label ID="容量" runat="server" Font-Size="15"  Text= '容量:'></asp:Label>
                <asp:Label ID="容量Label" runat="server" Font-Size="15" Text='<%# Bind("容量") %>' />
                <br />              
                &nbsp&nbsp<asp:Label ID="存貨" runat="server" Font-Size="15"  Text= '存貨:'></asp:Label>
                <asp:Label ID="存貨Label" runat="server" Font-Size="15" Text='<%# Bind("存貨") %>' />
                <br />
                &nbsp&nbsp<asp:Label ID="價格" runat="server" Font-Size="15"  Text= '價格:'></asp:Label>
                <asp:Label ID="價格Label" runat="server" Font-Size="15" Text='<%# Bind("價格") %>' />
                <br />

            </ItemTemplate>
        </asp:FormView>

                       

                              </h3> 
  
                    <h3 class="my-3" >&nbsp&nbsp&nbsp&nbsp 產品介紹</h3>                   
                    <ul>
                        <asp:FormView ID="FormView2" runat="server" DataSourceID="SqlDataSource3">              
                <ItemTemplate>
                    <li>操作系統:
                    <asp:Label ID="操作系統Label" runat="server" Text='<%# Bind("操作系統") %>' /></li>
                    <br />
                   <li> CPU型號:
                    <asp:Label ID="CPU型號Label" runat="server" Text='<%# Bind("CPU型號") %>' /></li>
                    <br />
                    <li>螢幕尺寸:
                    <asp:Label ID="螢幕尺寸Label" runat="server" Text='<%# Bind("螢幕尺寸") %>' /></li>
                    <br />
                    <li>相機畫素:
                    <asp:Label ID="相機畫素Label" runat="server" Text='<%# Bind("相機畫素") %>' /></li>
                    <br />
                     </ItemTemplate>
                     </asp:FormView>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [操作系統], [CPU型號], [螢幕尺寸], [相機畫素] FROM [商品主黨] WHERE ([商品ID] = ?)">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="商品ID" QueryStringField="shop" Type="Int32" />
                        </SelectParameters>
                        </asp:SqlDataSource>                       
                    </ul>
                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                             <ContentTemplate>
                                       
                        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT 顏色 FROM 商品主黨 WHERE (商品名稱 = ?)">
            <SelectParameters>
                <asp:SessionParameter Name="?" SessionField="color" />
            </SelectParameters>
        </asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT 容量 FROM 商品主黨 WHERE (商品名稱 = ?)">
            <SelectParameters>
                <asp:SessionParameter Name="?" SessionField="g" />
            </SelectParameters>
        </asp:SqlDataSource>

                    <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [商品ID], [商品名稱] FROM [商品主黨] WHERE ([商品ID] = ?)">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="商品ID" QueryStringField="shop" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource8" DataTextField="商品名稱" DataValueField="商品ID"></asp:DropDownList>
                       <br /><br />
                                                 顏色: <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource6" DataTextField="顏色" DataValueField="顏色" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="True" AppendDataBoundItems="True"><asp:ListItem>請選擇</asp:ListItem></asp:DropDownList>
                       <br /><br />
                       容量: <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource7" DataTextField="容量" DataValueField="容量" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" AutoPostBack="True" AppendDataBoundItems="True"><asp:ListItem>請選擇</asp:ListItem></asp:DropDownList>
                                             <br /><br />
                    數量:<asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="120px"></asp:TextBox> 
                                             </ContentTemplate>
                                        </asp:UpdatePanel>

                    <br />
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/img/購物車圖片.jpg" Height="70px" OnClick="ImageButton1_Click" Width="160px" />
                    <br />
                                       <br />
                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/img/查看購物車.png" Height="70px" OnClick="ImageButton2_Click" Width="160px" />
                </div>

            </div>
            <br />
            <br />
            <br />
            <!-- /.row -->
            <!-- Related Projects Row -->
            <h3 class="my-4">Related Projects</h3>

            <div class="row">

                <div class="col-md-3 col-sm-6 mb-4">
                    <a href="#">
                        <img class="img-fluid" src="http://placehold.it/500x300" alt="">
                    </a>
                </div>

                <div class="col-md-3 col-sm-6 mb-4">
                    <a href="#">
                        <img class="img-fluid" src="http://placehold.it/500x300" alt="">
                    </a>
                </div>

                <div class="col-md-3 col-sm-6 mb-4">
                    <a href="#">
                        <img class="img-fluid" src="http://placehold.it/500x300" alt="">
                    </a>
                </div>

                <div class="col-md-3 col-sm-6 mb-4">
                    <a href="#">
                        <img class="img-fluid" src="http://placehold.it/500x300" alt="">
                    </a>
                </div>

            </div>
            <!-- /.row -->

        </div>
        <!-- /.container -->

    </body>
</html>

        </div>
    </form>
</body>
</html>

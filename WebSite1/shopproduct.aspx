<%@ Page Language="C#" AutoEventWireup="true" CodeFile="shopproduct.aspx.cs" Inherits="Default4" %>

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

  <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container">
            <a class="navbar-brand" href="home.aspx">手機王</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">                 
                                <asp:ListView ID="ListView1" runat="server" DataKeyNames="供應商ID" DataSourceID="SqlDataSource1">                 
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [供應商單位], [供應商ID] FROM [供應商]"></asp:SqlDataSource>
                      
                </ul>
            </div>
        </div>
    </nav>

  <!-- Page Content -->
  <div class="container">

    <div class="row">

      <div class="col-lg-3">
        <br />
          <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <h1 class="my-4">其他機型</h1>
        <div class="list-group">

                <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                                  
           

        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT   供應商.供應商ID,  商品主黨.商品名稱,商品主黨.商品ID, 商品主黨.顏色, 商品主黨.容量 FROM (供應商 INNER JOIN 商品主黨 ON 供應商.供應商ID = 商品主黨.供應商ID) WHERE (供應商.供應商ID = ?)  ">
            <SelectParameters>
                <asp:QueryStringParameter Name="?" QueryStringField="name" />
            </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource30" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT 商品主黨.商品名稱 FROM (供應商 INNER JOIN 商品主黨 ON 供應商.供應商ID = 商品主黨.供應商ID) WHERE (供應商.供應商ID = ?)">
            <SelectParameters>
                <asp:QueryStringParameter Name="?" QueryStringField="name" />
            </SelectParameters>
            </asp:SqlDataSource>
            
 
        </div>

      </div>
      <!-- /.col-lg-3 -->

      <div class="col-lg-9">

        <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          </ol>
                <br />
             &nbsp
          <div class="carousel-inner" role="listbox">
               <div class="carousel-item active">
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="供應商ID" DataSourceID="SqlDataSource2">
                <ItemTemplate>
                    <asp:Image ID="Image1" class="d-block img-fluid" runat="server" ImageUrl='<%# Eval("圖片宣傳1") %>' Height="500px" Width="900px" alt="First slide"/>
                </ItemTemplate>
              </asp:FormView>
                   </div>
              <div class="carousel-item ">
                    <asp:FormView ID="FormView2" runat="server" DataKeyNames="供應商ID" DataSourceID="SqlDataSource2">
                <ItemTemplate>
                    <asp:Image ID="Image2" class="d-block img-fluid" runat="server" ImageUrl='<%# Eval("圖片宣傳2") %>' Height="500px" Width="900px" alt="Second slide" />
                </ItemTemplate>
              </asp:FormView>
                    </div>
                  <div class="carousel-item ">
                    <asp:FormView ID="FormView3" runat="server" DataKeyNames="供應商ID" DataSourceID="SqlDataSource2">
                <ItemTemplate>
                    <asp:Image ID="Image3" class="d-block img-fluid" runat="server" ImageUrl='<%# Eval("圖片宣傳3") %>' Height="500px" Width="900px" alt="Third slide" />
                </ItemTemplate>
              </asp:FormView>

                   </div>
              <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [供應商ID], [圖片宣傳1], [圖片宣傳2], [圖片宣傳3] FROM [供應商] WHERE ([供應商ID] = ?)">
                  <SelectParameters>
                      <asp:QueryStringParameter Name="供應商ID" QueryStringField="name" Type="Int32" />
                  </SelectParameters>
              </asp:SqlDataSource>
          </div>
          <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>

        <div class="row">

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a >
                  <asp:FormView class="card-img-top" ID="FormView4" runat="server" DataKeyNames="商品ID" DataSourceID="SqlDataSource10" Height="120px" Width="200px" >                  
                        <ItemTemplate>                       
                            <br />
                           <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("商品圖片") %>' Height="130" Width="140" ImageAlign="right" />
                        </ItemTemplate>
                    </asp:FormView>
                    <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [商品ID], [商品圖片] FROM [商品主黨] WHERE ([商品ID] = ?)">
                        <SelectParameters>
                            <asp:SessionParameter Name="商品ID" SessionField="downpicture1"  />
                        </SelectParameters>
                    </asp:SqlDataSource>
              </a>
              <div class="card-body">
                    <asp:ListView ID="ListView4" runat="server" DataSourceID="SqlDataSource5">                               
                <ItemTemplate>                    
                        <tr style="">
                            <td>
                                <h4 class="card-title">
                                <a  href="Default3.aspx?shop=<%# Eval("商品ID") %>" > <asp:Label ID="商品名稱Label" runat="server"  Text='<%# Eval("商品名稱") %>' /></a>
                                </h4>
                             </td>
                        </tr>                    
                </ItemTemplate>                              
            </asp:ListView>       
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT 供應商.供應商ID, 商品主黨.商品名稱, 商品主黨.商品ID FROM (供應商 INNER JOIN 商品主黨 ON 供應商.供應商ID = 商品主黨.供應商ID) WHERE  (供應商.供應商ID = ?)AND (商品主黨.商品ID = ?)">
            <SelectParameters>
                <asp:QueryStringParameter Name="?" QueryStringField="name" />
                <asp:SessionParameter Name="?" SessionField="downpicture1" />
            </SelectParameters>
            </asp:SqlDataSource>       
                <h5>
                    <asp:FormView ID="FormView16" runat="server" DataKeyNames="商品ID" DataSourceID="SqlDataSource22">            
                        <ItemTemplate>
                            $
                             <asp:Label ID="價格Label" runat="server" Text='<%# Bind("價格") %>' />
                             <br />
                            </ItemTemplate>
                            </asp:FormView>
                    <asp:SqlDataSource ID="SqlDataSource22" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [商品ID], [價格] FROM [商品主黨] WHERE ([商品ID] = ?)">
                         <SelectParameters>
                             <asp:SessionParameter Name="商品ID" SessionField="downpicture1" Type="Int32" />
                         </SelectParameters>
                    </asp:SqlDataSource>
                </h5>
                <p class="card-text">
                     <asp:FormView ID="FormView15" runat="server" DataKeyNames="商品ID" DataSourceID="SqlDataSource21" >
            <ItemTemplate>
                <font size="5">顏色:</font>
                <asp:Label ID="顏色Label" runat="server" Text='<%# Bind("顏色") %>' Font-Size="17" />
                <br />
                <font size="5">容量:</font>
                <asp:Label ID="容量Label" runat="server" Text='<%# Bind("容量") %>'  Font-Size="17"/>
                <br />
                <font size="5">螢幕尺寸:</font>
                <asp:Label ID="螢幕尺寸Label" runat="server" Text='<%# Bind("螢幕尺寸") %>'  Font-Size="17"/>
                <br />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource21" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [商品ID], [商品名稱], [顏色], [容量], [螢幕尺寸] FROM [商品主黨] WHERE ([商品ID] = ?)">
            <SelectParameters>
                <asp:SessionParameter Name="商品ID" SessionField="downpicture1" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
                </p>
              </div>
              <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a >
                  <asp:FormView class="card-img-top" ID="FormView5" runat="server" DataKeyNames="商品ID" DataSourceID="SqlDataSource11" Height="120px" Width="200px" >                  
                        <ItemTemplate>                       
                            <br />
                           <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("商品圖片") %>' Height="130" Width="140" ImageAlign="right" />
                        </ItemTemplate>
                    </asp:FormView>
                    <asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [商品ID], [商品圖片] FROM [商品主黨] WHERE ([商品ID] = ?)">
                        <SelectParameters>
                            <asp:SessionParameter Name="商品ID" SessionField="downpicture2"  />
                        </SelectParameters>
                    </asp:SqlDataSource>
              </a>
              <div class="card-body">                              
                     <asp:ListView ID="ListView3" runat="server" DataSourceID="SqlDataSource4">                               
                <ItemTemplate>                    
                        <tr style="">
                            <td>
                                <h4 class="card-title">
                                <a  href="Default3.aspx?shop=<%# Eval("商品ID") %>" > <asp:Label ID="商品名稱Label" runat="server"  Text='<%# Eval("商品名稱") %>' /></a>
                                </h4>
                             </td>
                        </tr>                    
                </ItemTemplate>                              
            </asp:ListView>       
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT 供應商.供應商ID, 商品主黨.商品名稱, 商品主黨.商品ID FROM (供應商 INNER JOIN 商品主黨 ON 供應商.供應商ID = 商品主黨.供應商ID) WHERE  (供應商.供應商ID = ?)AND (商品主黨.商品ID = ?)">
            <SelectParameters>
                <asp:QueryStringParameter Name="?" QueryStringField="name" />
                <asp:SessionParameter Name="?" SessionField="downpicture2" />
            </SelectParameters>
            </asp:SqlDataSource>               
                <h5>                    
                    <asp:FormView ID="FormView17" runat="server" DataKeyNames="商品ID" DataSourceID="SqlDataSource23">            
                        <ItemTemplate>
                            $
                             <asp:Label ID="價格Label" runat="server" Text='<%# Bind("價格") %>' />
                             <br />
                            </ItemTemplate>
                            </asp:FormView>
                    <asp:SqlDataSource ID="SqlDataSource23" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [商品ID], [價格] FROM [商品主黨] WHERE ([商品ID] = ?)">
                         <SelectParameters>
                             <asp:SessionParameter Name="商品ID" SessionField="downpicture2" Type="Int32" />
                         </SelectParameters>
                    </asp:SqlDataSource>
                </h5>
                <p class="card-text">
                     <asp:FormView ID="FormView13" runat="server" DataKeyNames="商品ID" DataSourceID="SqlDataSource19">
            <ItemTemplate>
                <font size="5">顏色:</font>
                <asp:Label ID="顏色Label" runat="server" Text='<%# Bind("顏色") %>' Font-Size="17" />
                <br />
                <font size="5">容量:</font>
                <asp:Label ID="容量Label" runat="server" Text='<%# Bind("容量") %>'  Font-Size="17"/>
                <br />
                <font size="5">螢幕尺寸:</font>
                <asp:Label ID="螢幕尺寸Label" runat="server" Text='<%# Bind("螢幕尺寸") %>'  Font-Size="17"/>
                <br />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource19" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [商品ID], [商品名稱], [顏色], [容量], [螢幕尺寸] FROM [商品主黨] WHERE ([商品ID] = ?)">
            <SelectParameters>
                <asp:SessionParameter Name="商品ID" SessionField="downpicture2" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
                </p>
              </div>
              <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
                            <a >
                  <asp:FormView class="card-img-top" ID="FormView6" runat="server" DataKeyNames="商品ID" DataSourceID="SqlDataSource12" Height="120px" Width="200px" >                  
                        <ItemTemplate>                       
                            <br />
                           <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("商品圖片") %>' Height="130" Width="140" ImageAlign="right" />
                        </ItemTemplate>
                    </asp:FormView>
                    <asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [商品ID], [商品圖片] FROM [商品主黨] WHERE ([商品ID] = ?)">
                        <SelectParameters>
                            <asp:SessionParameter Name="商品ID" SessionField="downpicture3"  />
                        </SelectParameters>
                    </asp:SqlDataSource>
              </a>
              <div class="card-body">
                    <asp:ListView ID="ListView5" runat="server" DataSourceID="SqlDataSource6">                               
                <ItemTemplate>                    
                        <tr style="">
                            <td>
                                <h4 class="card-title">
                                <a  href="Default3.aspx?shop=<%# Eval("商品ID") %>" > <asp:Label ID="商品名稱Label" runat="server"  Text='<%# Eval("商品名稱") %>' /></a>
                                </h4>
                             </td>
                        </tr>                    
                </ItemTemplate>                              
            </asp:ListView>       
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT 供應商.供應商ID, 商品主黨.商品名稱, 商品主黨.商品ID FROM (供應商 INNER JOIN 商品主黨 ON 供應商.供應商ID = 商品主黨.供應商ID) WHERE  (供應商.供應商ID = ?)AND (商品主黨.商品ID = ?)">
            <SelectParameters>
                <asp:QueryStringParameter Name="?" QueryStringField="name" />
                <asp:SessionParameter Name="?" SessionField="downpicture3" />
            </SelectParameters>
            </asp:SqlDataSource>                       
                    <h5>
                    <asp:FormView ID="FormView18" runat="server" DataKeyNames="商品ID" DataSourceID="SqlDataSource24">            
                        <ItemTemplate>
                            $
                             <asp:Label ID="價格Label" runat="server" Text='<%# Bind("價格") %>' />
                             <br />
                            </ItemTemplate>
                            </asp:FormView>
                    <asp:SqlDataSource ID="SqlDataSource24" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [商品ID], [價格] FROM [商品主黨] WHERE ([商品ID] = ?)">
                         <SelectParameters>
                             <asp:SessionParameter Name="商品ID" SessionField="downpicture3" Type="Int32" />
                         </SelectParameters>
                    </asp:SqlDataSource>
                </h5>
               
                <p class="card-text">
                     <asp:FormView ID="FormView14" runat="server" DataKeyNames="商品ID" DataSourceID="SqlDataSource20">
            <ItemTemplate>
                <font size="5">顏色:</font>
                <asp:Label ID="顏色Label" runat="server" Text='<%# Bind("顏色") %>' Font-Size="17" />
                <br />
                <font size="5">容量:</font>
                <asp:Label ID="容量Label" runat="server" Text='<%# Bind("容量") %>'  Font-Size="17"/>
                <br />
                <font size="5">螢幕尺寸:</font>
                <asp:Label ID="螢幕尺寸Label" runat="server" Text='<%# Bind("螢幕尺寸") %>'  Font-Size="17"/>
                <br />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource20" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [商品ID], [商品名稱], [顏色], [容量], [螢幕尺寸] FROM [商品主黨] WHERE ([商品ID] = ?)">
            <SelectParameters>
                <asp:SessionParameter Name="商品ID" SessionField="downpicture3" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
                </p>
              </div>
              <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
                           <a >
                  <asp:FormView class="card-img-top" ID="FormView7" runat="server" DataKeyNames="商品ID" DataSourceID="SqlDataSource13" Height="120px" Width="200px" >                  
                        <ItemTemplate>                       
                            <br />
                           <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("商品圖片") %>' Height="130" Width="140" ImageAlign="right" />
                        </ItemTemplate>
                    </asp:FormView>
                    <asp:SqlDataSource ID="SqlDataSource13" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [商品ID], [商品圖片] FROM [商品主黨] WHERE ([商品ID] = ?)">
                        <SelectParameters>
                            <asp:SessionParameter Name="商品ID" SessionField="downpicture4"  />
                        </SelectParameters>
                    </asp:SqlDataSource>
              </a>
              <div class="card-body">
                   <asp:ListView ID="ListView6" runat="server" DataSourceID="SqlDataSource7">                               
                <ItemTemplate>                    
                        <tr style="">
                            <td>
                                <h4 class="card-title">
                                <a  href="Default3.aspx?shop=<%# Eval("商品ID") %>" > <asp:Label ID="商品名稱Label" runat="server"  Text='<%# Eval("商品名稱") %>' /></a>
                                </h4>
                             </td>
                        </tr>                    
                </ItemTemplate>                              
            </asp:ListView>       
        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT 供應商.供應商ID, 商品主黨.商品名稱, 商品主黨.商品ID FROM (供應商 INNER JOIN 商品主黨 ON 供應商.供應商ID = 商品主黨.供應商ID) WHERE  (供應商.供應商ID = ?)AND (商品主黨.商品ID = ?)">
            <SelectParameters>
                <asp:QueryStringParameter Name="?" QueryStringField="name" />
                <asp:SessionParameter Name="?" SessionField="downpicture4" />
            </SelectParameters>
            </asp:SqlDataSource>       
               <h5>
                    <asp:FormView ID="FormView19" runat="server" DataKeyNames="商品ID" DataSourceID="SqlDataSource25">            
                        <ItemTemplate>
                            $
                             <asp:Label ID="價格Label" runat="server" Text='<%# Bind("價格") %>' />
                             <br />
                            </ItemTemplate>
                            </asp:FormView>
                    <asp:SqlDataSource ID="SqlDataSource25" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [商品ID], [價格] FROM [商品主黨] WHERE ([商品ID] = ?)">
                         <SelectParameters>
                             <asp:SessionParameter Name="商品ID" SessionField="downpicture4" Type="Int32" />
                         </SelectParameters>
                    </asp:SqlDataSource>
                </h5>
                <p class="card-text">
                     <asp:FormView ID="FormView12" runat="server" DataKeyNames="商品ID" DataSourceID="SqlDataSource18">
            <ItemTemplate>
                <font size="5">顏色:</font>
                <asp:Label ID="顏色Label" runat="server" Text='<%# Bind("顏色") %>' Font-Size="17" />
                <br />
                <font size="5">容量:</font>
                <asp:Label ID="容量Label" runat="server" Text='<%# Bind("容量") %>'  Font-Size="17"/>
                <br />
                <font size="5">螢幕尺寸:</font>
                <asp:Label ID="螢幕尺寸Label" runat="server" Text='<%# Bind("螢幕尺寸") %>'  Font-Size="17"/>
                <br />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource18" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [商品ID], [商品名稱], [顏色], [容量], [螢幕尺寸] FROM [商品主黨] WHERE ([商品ID] = ?)">
            <SelectParameters>
                <asp:SessionParameter Name="商品ID" SessionField="downpicture4" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
                </p>
              </div>
              <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
                            <a >
                  <asp:FormView class="card-img-top" ID="FormView8" runat="server" DataKeyNames="商品ID" DataSourceID="SqlDataSource14" Height="120px" Width="200px" >                  
                        <ItemTemplate>                       
                            <br />
                           <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("商品圖片") %>' Height="130" Width="140" ImageAlign="right" />
                        </ItemTemplate>
                    </asp:FormView>
                    <asp:SqlDataSource ID="SqlDataSource14" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [商品ID], [商品圖片] FROM [商品主黨] WHERE ([商品ID] = ?)">
                        <SelectParameters>
                            <asp:SessionParameter Name="商品ID" SessionField="downpicture5"  />
                        </SelectParameters>
                    </asp:SqlDataSource>
              </a>
              <div class="card-body">
                   <asp:ListView ID="ListView7" runat="server" DataSourceID="SqlDataSource8">                               
                <ItemTemplate>                    
                        <tr style="">
                            <td>
                                <h4 class="card-title">
                                <a  href="Default3.aspx?shop=<%# Eval("商品ID") %>" > <asp:Label ID="商品名稱Label" runat="server"  Text='<%# Eval("商品名稱") %>' /></a>
                                </h4>
                             </td>
                        </tr>                    
                </ItemTemplate>                              
            </asp:ListView>       
        <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT 供應商.供應商ID, 商品主黨.商品名稱, 商品主黨.商品ID FROM (供應商 INNER JOIN 商品主黨 ON 供應商.供應商ID = 商品主黨.供應商ID) WHERE  (供應商.供應商ID = ?)AND (商品主黨.商品ID = ?)">
            <SelectParameters>
                <asp:QueryStringParameter Name="?" QueryStringField="name" />
                <asp:SessionParameter Name="?" SessionField="downpicture5" />
            </SelectParameters>
            </asp:SqlDataSource>       
                <h5>
                    <asp:FormView ID="FormView20" runat="server" DataKeyNames="商品ID" DataSourceID="SqlDataSource26">            
                        <ItemTemplate>
                            $
                             <asp:Label ID="價格Label" runat="server" Text='<%# Bind("價格") %>' />
                             <br />
                            </ItemTemplate>
                            </asp:FormView>
                    <asp:SqlDataSource ID="SqlDataSource26" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [商品ID], [價格] FROM [商品主黨] WHERE ([商品ID] = ?)">
                         <SelectParameters>
                             <asp:SessionParameter Name="商品ID" SessionField="downpicture5" Type="Int32" />
                         </SelectParameters>
                    </asp:SqlDataSource>
                </h5>
                <p class="card-text">
                     <asp:FormView ID="FormView11" runat="server" DataKeyNames="商品ID" DataSourceID="SqlDataSource17">
            <ItemTemplate>
                <font size="5">顏色:</font>
                <asp:Label ID="顏色Label" runat="server" Text='<%# Bind("顏色") %>' Font-Size="17" />
                <br />
                <font size="5">容量:</font>
                <asp:Label ID="容量Label" runat="server" Text='<%# Bind("容量") %>'  Font-Size="17"/>
                <br />
                <font size="5">螢幕尺寸:</font>
                <asp:Label ID="螢幕尺寸Label" runat="server" Text='<%# Bind("螢幕尺寸") %>'  Font-Size="17"/>
                <br />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource17" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [商品ID], [商品名稱], [顏色], [容量], [螢幕尺寸] FROM [商品主黨] WHERE ([商品ID] = ?)">
            <SelectParameters>
                <asp:SessionParameter Name="商品ID" SessionField="downpicture5" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
                </p>
              </div>
              <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
                           <a >
                  <asp:FormView class="card-img-top" ID="FormView9" runat="server" DataKeyNames="商品ID" DataSourceID="SqlDataSource15" Height="120px" Width="200px" >                  
                        <ItemTemplate>                       
                            <br />
                           <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("商品圖片") %>' Height="130" Width="140" ImageAlign="right" />
                        </ItemTemplate>
                    </asp:FormView>
                    <asp:SqlDataSource ID="SqlDataSource15" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [商品ID], [商品圖片] FROM [商品主黨] WHERE ([商品ID] = ?)">
                        <SelectParameters>
                            <asp:SessionParameter Name="商品ID" SessionField="downpicture6"  />
                        </SelectParameters>
                    </asp:SqlDataSource>
              </a>
              <div class="card-body">
                    <asp:ListView ID="ListView8" runat="server" DataSourceID="SqlDataSource9">                               
                <ItemTemplate>                    
                        <tr style="">
                            <td>
                                <h4 class="card-title">
                                <a  href="Default3.aspx?shop=<%# Eval("商品ID") %>" > <asp:Label ID="商品名稱Label" runat="server"  Text='<%# Eval("商品名稱") %>' /></a>
                                </h4>
                             </td>
                        </tr>                    
                </ItemTemplate>                              
            </asp:ListView>       
        <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT 供應商.供應商ID, 商品主黨.商品名稱, 商品主黨.商品ID FROM (供應商 INNER JOIN 商品主黨 ON 供應商.供應商ID = 商品主黨.供應商ID) WHERE  (供應商.供應商ID = ?)AND (商品主黨.商品ID = ?)">
            <SelectParameters>
                <asp:QueryStringParameter Name="?" QueryStringField="name" />
                <asp:SessionParameter Name="?" SessionField="downpicture6" />
            </SelectParameters>
            </asp:SqlDataSource>       
                <h5>
                    <asp:FormView ID="FormView21" runat="server" DataKeyNames="商品ID" DataSourceID="SqlDataSource27">            
                        <ItemTemplate>
                            $
                             <asp:Label ID="價格Label" runat="server" Text='<%# Bind("價格") %>' />
                             <br />
                            </ItemTemplate>
                            </asp:FormView>
                    <asp:SqlDataSource ID="SqlDataSource27" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [商品ID], [價格] FROM [商品主黨] WHERE ([商品ID] = ?)">
                         <SelectParameters>
                             <asp:SessionParameter Name="商品ID" SessionField="downpicture6" Type="Int32" />
                         </SelectParameters>
                    </asp:SqlDataSource>
                </h5>
                <p class="card-text">
                  <asp:FormView ID="FormView10" runat="server" DataKeyNames="商品ID" DataSourceID="SqlDataSource16">
            <ItemTemplate>
                <font size="5">顏色:</font>
                <asp:Label ID="顏色Label" runat="server" Text='<%# Bind("顏色") %>' Font-Size="17" />
                <br />
                <font size="5">容量:</font>
                <asp:Label ID="容量Label" runat="server" Text='<%# Bind("容量") %>'  Font-Size="17"/>
                <br />
                <font size="5">螢幕尺寸:</font>
                <asp:Label ID="螢幕尺寸Label" runat="server" Text='<%# Bind("螢幕尺寸") %>'  Font-Size="17"/>
                <br />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource16" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [商品ID], [商品名稱], [顏色], [容量], [螢幕尺寸] FROM [商品主黨] WHERE ([商品ID] = ?)">
            <SelectParameters>
                <asp:SessionParameter Name="商品ID" SessionField="downpicture6" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
                    </p>
              </div>
              <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div>
            </div>
          </div>

        </div>
        <!-- /.row -->

      </div>
      <!-- /.col-lg-9 -->

    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2020</p>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    </form>

</body>
</html>

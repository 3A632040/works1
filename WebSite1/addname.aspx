<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addname.aspx.cs" Inherits="addname" %>

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

        <div>
            姓名<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            帳號<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            密碼<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="確認" />
            <br />
            地址<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </div>
            </div>
        </body>
    </form>
</body>
</html>

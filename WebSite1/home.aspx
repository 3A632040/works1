<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Grayscale - Start Bootstrap Theme</title>
        <link rel="icon" type="image/x-icon" href="img/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />

    </head>

    <body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
             <div id="l_ad" style="position:fixed;left:35%; z-index:1;margin: 150px 0px 0px -640px;overflow:hidden;width:135px; height:280px; top: -22px;">
                <ul class="navbar-nav ml-auto">
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#about">最新商品</a></li>
                </ul>
</div>
            <div id="l_ad2" style="position:fixed;left:35%; z-index:1;margin: 225px 0px 0px -640px;overflow:hidden;width:135px; height:520px; top: -22px;">
                <ul class="navbar-nav ml-auto">
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#sony">sony</a></li>
                </ul>
</div>

            <div id="l_ad3" style="position:fixed;left:35%; z-index:1;margin: 300px 0px 0px -640px;overflow:hidden;width:135px; height:520px; top: -22px;">
                <ul class="navbar-nav ml-auto">
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#apple">apple</a></li>
                </ul>
</div>


            <div id="l_ad4" style="position:fixed;left:35%; z-index:1;margin: 375px 0px 0px -640px;overflow:hidden;width:135px; height:520px; top: -22px;">
                <ul class="navbar-nav ml-auto">
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#samsung">samsung</a></li>
                </ul>
</div>
            <div id="l_ad5" style="position:fixed;left:35%; z-index:1;margin: 450px 0px 0px -640px;overflow:hidden;width:135px; height:520px; top: -22px;">
                <ul class="navbar-nav ml-auto">
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#htc">HTC</a></li>
                </ul>
</div>
            <div id="l_ad6" style="position:fixed;left:35%; z-index:1;margin: 525px 0px 0px -640px;overflow:hidden;width:135px; height:520px; top: -22px;">
                <ul class="navbar-nav ml-auto">
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#oppo">oppo</a></li>
                </ul>
</div>
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="#page-top">CellphoneKing</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#about">熱門</a></li>
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

                    </ul>

                    <div class="btn-group">
                        <button type="button" class="btn btn-danger">賣場</button>
                        <button type="button" class="btn btn-danger dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                         <span class="sr-only">Toggle Dropdown</span>
                         </button>
                     <div class="dropdown-menu">
                        <a class="dropdown-item" href="shopproduct.aspx?name=5">Sony</a>
                        <a class="dropdown-item" href="shopproduct.aspx?name=1">Apple</a>
                        <a class="dropdown-item" href="shopproduct.aspx?name=2">Samsung</a>
                        <a class="dropdown-item" href="shopproduct.aspx?name=3">HTC</a>
                        <a class="dropdown-item" href="shopproduct.aspx?name=4">Oppo</a>
                        
                        <div class="dropdown-divider"></div>
                        
                    </div>
                </div>
                </div>
            </div>
        </nav>
        <!-- Masthead-->
        <header class="masthead">
            <div class="container d-flex h-100 align-items-center">
                <div class="mx-auto text-center">
                    <h1 class="mx-auto my-0 text-uppercase">手機王</h1>
                    <h2 class="text-white-50 mx-auto mt-2 mb-5">想買手機嗎? 來看看吧!!</h2>
                    <a class="btn btn-primary js-scroll-trigger" href="#about">Get Started</a>
                </div>
            </div>
        </header>
        <!-- About-->
        <section class="about-section text-center" id="about">
           
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 mx-auto">
                        <h3 class="text-white mb-4"> IPhone XR</h3>
                        <p class="text-white-50">
                            大幅降價的iPhone XR與售價親民的iPhone 11，誰才會是2019年的CP值王者？iPhone 11 擁有最新的A13晶片、首次使用的超廣角鏡頭、以及目前最好的照相錄影體驗，適合喜愛追求新功能且預算無法攻頂的使用者。iPhone XR 則是目前最低價同時還具備 Face ID 的手機，且因為蘋果突然降價，後續會有更多通路提供優惠方案，適合預算有限又想要一隻穩定手機的使用者。
                            <br>
                                <a href="https://startbootstrap.com/template-overviews/grayscale/">看個IPHONE XR</a>
                            </br>
                    </div>
                    <div class="btn-group">
  <div class="dropdown-menu">
    <a class="dropdown-item" href="#">Action</a>
    <a class="dropdown-item" href="#">Another action</a>
    <a class="dropdown-item" href="#">Something else here</a>
    <div class="dropdown-divider"></div>
    <a class="dropdown-item" href="#">Separated link</a>
  </div>
</div>
                </div>
                <img class="img-fluid" src="img/iPhone-Xr.png" alt="" />
            </div>
        </section>

        <!-- Projects-->
         <h2 class="title" style="box-sizing: border-box; font-family: Poppins, &quot;Microsoft JhengHei&quot;, sans-serif; font-weight: 100; line-height: 1.1; color: rgb(51, 51, 51); margin: 0px; font-size: 2.4rem; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">&nbsp;</h2>
&nbsp;<section class="projects-section bg-light" id="sony">
            <div class="container">
                <!-- Featured Project Row-->

                                <div class="row align-items-center no-gutters mb-4 mb-lg-5">

                    <div class="col-xl-8 col-lg-7">
                       
                        <img class="img-fluid mb-3 mb-lg-0" src="img/sony.jpg" alt="" /></div>
                    <div class="col-xl-4 col-lg-5">
                        <div class="featured-text text-center text-lg-left">
                            <h4>Sony Xperia 5</h4>
                            <p class="text-black-50 mb-0">規格</p>
                             <div class="product-description-container">
                                <ul><li><span style="color: rgb(51, 51, 51); font-family: Poppins, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">4G + 4G 雙卡雙待</span> </li>
                                    <li><span style="color: rgb(51, 51, 51); font-family: Poppins, 'Microsoft JhengHei', sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none; background-color: rgb(255, 255, 255)">&nbsp;Andriod</span><span style="color: rgb(51, 51, 51); font-family: Poppins, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"> 
                                        9.0 Pie 作業系統</span> </li>
                                    <li><span style="color: rgb(51, 51, 51); font-family: Poppins, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">6.1吋2,520 x 1,080pixels<span>解析度OLED&nbsp;</span>觸控螢幕</span></li>
                                    <li><span style="color: rgb(51, 51, 51); font-family: Poppins, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">&nbsp;八核心處理器</span></li>
                                    <li><span style="color: rgb(51, 51, 51); font-family: Poppins, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">6</span><span style="color: rgb(51, 51, 51); font-family: Poppins, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span>GB 
                                        RAM</span>/ 128</span>GB ROM</li>
                                    <li><span style="color: rgb(51, 51, 51); font-family: Poppins, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span>&nbsp;</span>1,200 萬畫素、800 萬畫素前鏡頭</span></li>
                                    <li><span style="color: rgb(51, 51, 51); font-family: Poppins, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">IP65 / IP68<span>&nbsp;</span></span><span style="color: rgb(51, 51, 51); font-family: Poppins, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">防水防塵等級</span>
                                    </li>
                                    <li><span style="color: rgb(51, 51, 51); font-family: Poppins, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">指紋辨識、臉部解鎖</span></li>
                                    <li><span style="color: rgb(51, 51, 51); font-family: Poppins, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">採用 USB 3.1<span>Type-C</span>規格，支援<span>&nbsp;PD</span>3.0 快充</span></li>
                                    <li><span style="color: rgb(51, 51, 51); font-family: Poppins, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">支援 microSD 記憶卡，最高可擴充至 512GB儲存空間</span></li>
                                 <br>
                                      <a href="shopproduct.aspx?name=5">更多產品...</a>
                                </ul>
                                <div class="description-toggle">
                                    &nbsp;</div>
                            </div>


                        </div>
                    </div>
                </div>
                </div>
             </section>
        <section class="projects-section bg-light" id="apple">
            <div class="container">
                <!-- Featured Project Row-->
                <div class="row align-items-center no-gutters mb-4 mb-lg-5">
                    <div class="col-xl-8 col-lg-7"><img class="img-fluid mb-3 mb-lg-0" src="img/xmax.png" alt="" /></div>
                    <div class="col-xl-4 col-lg-5">
                        <div class="featured-text text-center text-lg-left">
                            <h4>IphoneX MAX</h4>
                            <p class="text-black-50 mb-0">規格</p>
                             <div class="product-description-container">
                                <ul><li>6.5 吋超 Retina 特製 OLED 顯示器 </li>
                                    <li>玻璃材質搭配醫療級特製不鏽鋼邊框 </li>
                                    <li>IP68 等級防潑抗水與防塵 </li>
                                    <li>A12 仿生晶片具備新一代神經網路引擎 </li>
                                    <li>強化的影像訊號處理器(ISP)  </li>
                                    <li>1200 萬像素後置雙鏡頭相機，智慧型 HDR </li>
                                    <li>700 萬像素原深感測前置相機 </li>
                                    <li>人像模式，具備景深控制 </li>
                                    <li>4K 影片及更寬廣的立體聲播放 </li>
                                    <li>支援無線充電 </li>
                                    <li>Face ID，解鎖、登入與 Apple Pay</li>    
                                     <br>
                                    <a href="shopproduct.aspx?name=1">更多產品...</a>
                                </ul>
                                <div class="description-toggle">
                                    <img class="desc-dots" src="/home/eshop/img/ic/description-up.svg" alt="">
                                </div>
                            </div>
</div>
                        </div>
                    </div>
                </div>  </section>
 <section class="projects-section bg-light" id="samsung">
            <div class="container">
                <!-- Featured Project Row-->
                <div class="row align-items-center no-gutters mb-4 mb-lg-5">
                    <div class="col-xl-8 col-lg-7"><img class="img-fluid mb-3 mb-lg-0" src="img/samsungnote10.jpg" alt="" /></div>
                    <div class="col-xl-4 col-lg-5">
                        <div class="featured-text text-center text-lg-left">
                             <h4>Samsung Note10</h4>
                            <p class="text-black-50 mb-0">規格</p>
                             <div class="product-description-container">
                               <ul>
                                   <li>Android 9.0 Pie 作業系統、One UI 操作介面 </li>
                                    <li>6.3 吋 2,280 x 1,080pixels 解析度 Dynamic AMOLED 觸控螢幕（401ppi） </li>
                                    <li>8GB RAM / 256GB ROM </li>
                                    <li>1,200 萬畫素 + 1,200 萬畫素 + 1,600 萬畫素主相機、1,000 萬畫素前鏡頭 </li>
                                    <li>IP68 防水防塵等級</li>
                                    <li>1200 萬像素後置雙鏡頭相機，智慧型 HDR </li>
                                    <li>螢幕指紋辨識、臉部解鎖</li> 
                                    <br>
                                    <a href="shopproduct.aspx?name=2">更多產品...</a>                              

                               </ul>
                                <div class="description-toggle">
                                    <img class="desc-dots" src="/home/eshop/img/ic/description-up.svg" alt="">
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
</div>
       </section>

                 <section class="projects-section bg-light" id="htc">
          <div class="container">
                <!-- Featured Project Row-->
                <div class="row align-items-center no-gutters mb-4 mb-lg-5">
                    <div class="col-xl-8 col-lg-7"><img class="img-fluid mb-3 mb-lg-0" src="img/HTCU12.jpg" alt="" /></div>
                    <div class="col-xl-4 col-lg-5">
                        <div class="featured-text text-center text-lg-left">
                            <h4>HTC U12+</h4>
                            <p class="text-black-50 mb-0">規格</p>
                             <div class="product-description-container">
                                <ul><li>6.5 吋超 Retina 特製 OLED 顯示器 </li>
                                    <li>玻璃材質搭配醫療級特製不鏽鋼邊框 </li>
                                    <li>IP68 等級防潑抗水與防塵 </li>
                                    <li>A12 仿生晶片具備新一代神經網路引擎 </li>
                                    <li>強化的影像訊號處理器(ISP)  </li>
                                    <li>1200 萬像素後置雙鏡頭相機，智慧型 HDR </li>
                                    <li>700 萬像素原深感測前置相機 </li>
                                    <li>人像模式，具備景深控制 </li>
                                    <li>4K 影片及更寬廣的立體聲播放 </li>
                                    <br>
                                    <a href="shopproduct.aspx?name=3">更多產品...</a>
                                                                   </ul>
                                <div class="description-toggle">
                                    <img class="desc-dots" src="/home/eshop/img/ic/description-up.svg" alt="">
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
</div>  </section>
 <section class="projects-section bg-light" id="oppo">
            <div class="container">
                <!-- Featured Project Row-->
                <div class="row align-items-center no-gutters mb-4 mb-lg-5">
                    <div class="col-xl-8 col-lg-7"><img class="img-fluid mb-3 mb-lg-0" src="img/oppo.jpg" alt="" /></div>
                    <div class="col-xl-4 col-lg-5">
                        <div class="featured-text text-center text-lg-left">
                              <h4>OPPO A5</h4>
                           <p class="text-black-50 mb-0">規格</p>
                             <div class="product-description-container">
                                <ul><li>6.5吋水滴螢幕 </li>
                                    <li>12MP＋8MP＋2MP＋2MP超廣角四鏡頭 </li>
                                    <li>5000mAh電池容量，可反向充電塵 </li>
                                    <li>杜比全景聲立體聲雙喇叭 </li>
                                    <li>Snapdragon™ 665處理器，4GB RAM</li>       
                                    <br>
                                    <a href="shopproduct.aspx?name=4">更多產品...</a>
                                </ul>
                                <div class="description-toggle">
                                    <img class="desc-dots" src="/home/eshop/img/ic/description-up.svg" alt="">
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                <!-- Project One Row-->
                <div class="row justify-content-center no-gutters mb-5 mb-lg-0">
                    <div class="col-lg-6"><img class="img-fluid" src="img/demo-image-01.jpg" alt="" /></div>
                    <div class="col-lg-6">
                        <div class="bg-black text-center h-100 project">
                            <div class="d-flex h-100">
                                <div class="project-text w-100 my-auto text-center text-lg-left">
                                    <h4 class="text-white">Misty</h4>
                                    <p class="mb-0 text-white-50">An example of where you can put an image of a project, or anything else, along with a description.</p>
                                    <hr class="d-none d-lg-block mb-0 ml-0" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Project Two Row-->
                <div class="row justify-content-center no-gutters">
                    <div class="col-lg-6"><img class="img-fluid" src="img/demo-image-02.jpg" alt="" /></div>
                    <div class="col-lg-6 order-lg-first">
                        <div class="bg-black text-center h-100 project">
                            <div class="d-flex h-100">
                                <div class="project-text w-100 my-auto text-center text-lg-right">
                                    <h4 class="text-white">Mountains</h4>
                                    <p class="mb-0 text-white-50">Another example of a project with its respective description. These sections work well responsively as well, try this theme on a small screen!</p>
                                    <hr class="d-none d-lg-block mb-0 mr-0" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Signup-->
        <section class="signup-section" id="signup">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-lg-8 mx-auto text-center">
                        <i class="far fa-paper-plane fa-2x mb-2 text-white"></i>
                        <h2 class="text-white mb-5">Subscribe to receive updates!</h2>
                            <input class="form-control flex-fill mr-0 mr-sm-2 mb-3 mb-sm-0" id="inputEmail" type="email" placeholder="Enter email address..." />
                            <button class="btn btn-primary mx-auto" type="submit">Subscribe</button>
                    </div>
                </div>
            </div>
        </section>
        <!-- Contact-->
        <section class="contact-section bg-black">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 mb-3 mb-md-0">
                        <div class="card py-4 h-100">
                            <div class="card-body text-center">
                                <i class="fas fa-map-marked-alt text-primary mb-2"></i>
                                <h4 class="text-uppercase m-0">Address</h4>
                                <hr class="my-4" />
                                <div class="small text-black-50">4923 Market Street, Orlando FL</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mb-3 mb-md-0">
                        <div class="card py-4 h-100">
                            <div class="card-body text-center">
                                <i class="fas fa-envelope text-primary mb-2"></i>
                                <h4 class="text-uppercase m-0">Email</h4>
                                <hr class="my-4" />
                                <div class="small text-black-50"><a href="#!">hello@yourdomain.com</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mb-3 mb-md-0">
                        <div class="card py-4 h-100">
                            <div class="card-body text-center">
                                <i class="fas fa-mobile-alt text-primary mb-2"></i>
                                <h4 class="text-uppercase m-0">Phone</h4>
                                <hr class="my-4" />
                                <div class="small text-black-50">+1 (555) 902-8832</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="social d-flex justify-content-center">
                    <a class="mx-2" href="https://twitter.com/?lang=zh-tw!"><i class="fab fa-twitter"></i></a>
                    <a class="mx-2" href="https://zh-tw.facebook.com/!"><i class="fab fa-facebook-f"></i></a>
                    <a class="mx-2" href="https://github.com/!"><i class="fab fa-github"></i></a>
                </div>
            </div>
        </section>
        <!-- Footer-->
        <footer class="footer bg-black small text-center text-white-50"><div class="container">Copyright © Your Website 2020</div></footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
        <!-- Third party plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>

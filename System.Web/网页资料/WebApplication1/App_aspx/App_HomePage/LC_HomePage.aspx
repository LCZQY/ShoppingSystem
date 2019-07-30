<%@ Page Title="" Language="C#" MasterPageFile="~/App_Site/LC_Leitao.Master" AutoEventWireup="true" CodeBehind="LC_HomePage.aspx.cs" Inherits="WebApplication1.App_aspx.App_HomePage.LC_HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
<link href="../../App_Style/bootstrap.min.css" rel="stylesheet" /> 
<link href="../../App_Style/LC_HomePage_style.css" rel="stylesheet" />        
    <style>        
a {
    text-decoration: none;
}
    a:hover {
        text-decoration: none;
    }

li {
    list-style-type: none;
}

header {
    font-size: 10px;
}

footer {
    font-size: 5px;
}
 [class^="col-md"] {
             /*border:Red  solid thin;*/
}
/*页脚字体*/
#Master_nav > li > a {
    /*color: rgb(241,6,132);*/
    font-weight: bold;
    margin-left: 10px;
}

    #Master_nav > li > a:hover {
        color: red;
    }

#Master_img > li > img, .FootSize > a {
    margin-left: 5px;
}
/* 导航*/
.MaeginRightLi>a {
margin-left:20%;
position:relative;
}

/*搜索框*/
#seek {
    /*border: rgb(241,6,132) solid 3px;*/
    height: 50px;
}
    /*搜索框后的按钮*/
#seek + #basic-addon2 {
        background: rgb(241,6,132);
        /*border: rgb(241,6,132) solid 3px;*/
 }
    /******无延迟导航***/
   #hdValue,#showValue {            
            z-index:5;
            margin-left:-42.3%;      
            width:750px;
            border:red solid 2px;                    
            height:408px;
            background:rgb(255, 255, 255);           
            display:none;
            float:left;
            padding:0;
        }
        .brand_content {  
          border-bottom:rgb(200, 173, 173) solid thin;
          margin-bottom:2%;         
        }
        .brand_content>span {         
             padding-left:4%;                                                       
        }
        .brand_content > span>a {
            color:rgba(34,34,34,1);
          }
/***/
       .Describe {
      width:280px;
      height:30px;          
        }
     .HomeProPrice {
        color:red;
        font-weight:bold;
        font-size:18px;
        }
   /* 回到顶部*/

       .IocRight_One {
            background:rgb(253, 198, 227);
            float:right;
            height:17%;
            width:36px;     
            margin-bottom:60%;                    
            color:rgb(241,6,132);          
        }
        .IocRight_Two {        
              background:rgb(242, 222, 222);

        }
        .MarginTop > a {
           color: rgb(34,34,34);                       
            }
        .MarginTop {
            padding-top:40%;
            margin-top:90%;
          
        }
       .MarginTop:hover {
             background:rgb(241,6,132);
         }

        .IocTOP {
        margin-top:100%;
        }

        .IocRight_Two {
        
        }

 
        .jump {         
            width:280px;            
            margin-top:8%;
            margin-bottom:5%;
          
        }
        .jump>a  {          
           width:50px;
           color:rgba(34,34,34,1);            
           font-weight:bold;
           margin-left:2%;        
                                       
        }
        .jump > a >span {
            color:rgba(34,34,34,1);
            background:rgb(241,6,132);
            font-size:17px;
            margin-right:2%;
            font-weight:bold;
          } 
 </style>
    <div class="container-fluid">
        <div class="row ">
            <%--搜索栏开始--%>
            <div class="container-fluid center-block">
                <div class="row " style="background: rgb(254,230,243); padding-top: 2%;">
                    <div class="col-md-2 ">
                        <img src="../../App_Image/LogIngTitle.jpg" class="img-responsive pull-left" style="z-index: 1" width="160" />
                    </div>
                    <div class="col-md-6 col-md-offset-1  ">
                        <div class="input-group">
                            <input type="text" id="seek" class="form-control " placeholder="玫瑰花" aria-describedby="basic-addon2" />
                            <span class="input-group-addon btn" id="basic-addon2" style="color: rgb(255, 255, 255); font-weight: bold;">搜索</span>
                        </div>
                    </div>
                </div>
            </div>

            <%--搜索栏结束--%>
            <section>
                <div class="container-fluid">
                    <div class="row">
                        <%--侧边栏导航--%>
                        <div class="col-md-2" style="height: 100%; margin: 0; padding: 0;">
                            <div style="width:1400px;">
                                <%=nav                                        
                                %>
                                <div id="hdValue">
                                </div>
                                <div class="col-md-6" id="showValue">
                                </div>
                            </div>
                        </div>
                        <%--轮播 --%>
                        <div class="col-md-7" id="CarouselFrist" style="height: 100%;">
                            <%--第一列轮播开始 --%>
                            <div id="slidershow" class="carousel  slide" data-ride="carousel">
                                <!-- 设置图片轮播的顺序-->
                                <ol class="carousel-indicators ">
                                    <li class="active" data-target="#slidershow" data-slide-to="0"></li>
                                    <li data-target="#slidershow" data-slide-to="1"></li>
                                    <li data-target="#slidershow" data-slide-to="2"></li>
                                    <li data-target="#slidershow" data-slide-to="3"></li>
                                </ol>
                                <!-- 设置轮播图片-->
                                <div class="carousel-inner" id="Carouse_widht">
                                    <div class="item  ">
                                        <a href="#">
                                            <div class="carouse1_img"></div>
                                            <div class="carouse1_bg" hidden="hidden"></div>
                                        </a>
                                    </div>
                                    <div class="item  active">
                                        <a href="#">
                                            <div class="carouse2_img"></div>
                                            <div class="carouse2_bg" hidden="hidden"></div>
                                        </a>
                                    </div>
                                    <div class="item">
                                        <a href="##">
                                            <div class="carouse3_img"></div>
                                            <div class="carouse3_bg " hidden="hidden"></div>
                                        </a>
                                    </div>
                                    <div class="item ">
                                        <a href="##">
                                            <div class="carouse4_img"></div>
                                            <div class="carouse4_bg" hidden="hidden"></div>
                                        </a>
                                    </div>
                                </div>
                                  <a id="left" class="left carousel-control " href="#slidershow" role="button" data-slide="prev">
                                    <span class="glyphicon glyphicon-chevron-left"></span>
                                </a>
                                <a id="right" class=" right carousel-control" href="#slidershow" role="button" data-slide="next">
                                    <span class="glyphicon glyphicon-chevron-right"></span>
                                </a>
                            </div>

                            <%--第一列轮播结束 --%>
                        </div>
                        <%--登陆/注册--%>
                        <div class="col-md-3 text-center">
                            <ul id="RegisterUL">
                                <li>
                                    <div id="Register" class="text-center">
                                        <div class="user h5">
                                            <sapn id="LoginForUserName">
                                    <%=LoginForUserName %>
                                </sapn>
                                            <br />
                                        </div>
                                        <div class="span2">
                                            <div class="RegisterInputButton" style='<%=Buuton_Display %>'>
                                                <button type="button" class="btn btndefault" id="LogIn"><a href="../LC_LogIng.aspx">登录</a></button>
                                                <button type="button" class="btn btndefault" id="SignIn"><a href="#">注册</a></button>
                                                <button type="button" class="btn btndefault" id="UpShop"><a href="../LC_SetUpShop.aspx">开店</a></button>
                                            </div>
                                            <div class="jump" style='<%=A_Display %>'>
                                                <a href="#"><span class="badge" id="badgeOne">1</span>待发货</a>
                                                <a href="#"><span class="badge" id="badgeOne">1</span>待收货</a>
                                                <a href="#"><span class="badge" id="badgeTwo">1</span>待评价</a>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li >
                                    <div class=" table-responsive">
                                    <table class="table table-bordered " style="" id="HonePageTable" border="2">
                                        <tr>
                                            <td class="danger text-center">
                                                <a href="#">
                                                    <span class="glyphicon glyphicon-glass btn-lg"></span>
                                                    <br />
                                                    <label>美酒</label>
                                                </a>
                                            </td>
                                            <td class="danger">
                                                <a href="#">
                                                    <span class=" glyphicon glyphicon-cloud btn-lg"></span>
                                                    <br />
                                                    <label>云盘</label>
                                                </a>

                                            </td>
                                            <td class="danger">
                                                <a href="#">
                                                    <span class="glyphicon glyphicon-tags btn-lg"></span>
                                                    <br />
                                                    <label>
                                                        办公
                                                    </label>
                                                </a>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td class="danger text-center">
                                                <a href="#">
                                                    <span class="glyphicon glyphicon-scissors btn-lg"></span>
                                                    <br />
                                                    <label>理发</label>
                                                </a>
                                            </td>
                                            <td class="danger">
                                                <a href="#">
                                                    <span class=" glyphicon glyphicon-lamp btn-lg"></span>
                                                    <br>
                                                    <label>家电</label>
                                                </a>

                                            </td>
                                            <td class="danger">
                                                <a href="#">
                                                    <span class="glyphicon glyphicon-camera btn-lg"></span>
                                                    <br />
                                                    <label>
                                                        摄影
                                                    </label>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="danger">
                                                <a href="#">
                                                    <span class="glyphicon glyphicon-plane btn-sm"></span>
                                                    <br />
                                                    <label>旅行</label>
                                                </a>
                                            </td>
                                            <td class="danger">
                                                <a href="#">
                                                    <span class="glyphicon glyphicon-globe btn-sm"></span>
                                                    <br />
                                                    <label>机票</label>
                                                </a>
                                            </td>
                                            <td class="danger">
                                                <a href="#">
                                                    <span class="glyphicon glyphicon-cutlery btn-sm"></span>
                                                    <br />
                                                    <label>
                                                        外卖
                                                    </label>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="danger">
                                                <a href="#">
                                                    <span class="glyphicon glyphicon-ice-lolly-tasted btn-sm"></span>
                                                    <br />
                                                    <label>女性</label>
                                                </a>
                                            </td>
                                            <td class="danger">
                                                <a href="#">
                                                    <span class="glyphicon glyphicon-apple btn-sm"></span>
                                                    <br />
                                                    <label>苹果X</label>
                                                </a>
                                            </td>
                                            <td class="danger">
                                                <a href="#">
                                                    <span class="glyphicon glyphicon-tint btn-sm"></span>
                                                    <br />
                                                    <label>
                                                        低碳
                                                    </label>
                                                </a>
                                            </td>

                                        </tr>

                                    </table>
                                        </div>
                                </li>
                            </ul>
                            <%--右侧锚链接--%>
                            <div class="right_Nav" style="top: 22%; right: 0%; width: 36px; height: 100%; position: fixed;">
                                <div class="IocRight_One">
                                    &nbsp;
                                </div>
                                <div class="IocRight_Two">
                                    <div class="MarginTop" ><a href="#" id="Wear"><span class="glyphicon glyphicon-ice-lolly-tasted"></span><span class="glyphicon glyphicon-ice-lolly-tasted"></span><span class="h4">女装</span></a></div>
                                    <div class="MarginTop" ><a href="#" id="Shoe"><span class="glyphicon glyphicon-gift"></span><span class="glyphicon glyphicon-gift"></span><span class="h4">鞋包</span></a></div>
                                    <div class="MarginTop"><a href="#"  id="Man"><span class="glyphicon glyphicon-sunglasses"></span><span class="glyphicon glyphicon-sunglasses"></span><span class="h4">男装 </span></a></div>
                                    <div class="IocTOP"><a href="javascript:;" class="text-center"><span class="glyphicon glyphicon-hand-up btn-lg"></span><span class="h4">回到顶部 </span></a></div>
                                </div>

                            </div>
                        </div>
                        <%--页中脚--%>
                        <div class="col-md-12 hrs">
                            <div id="Page_center">
                                <div class="Hrimg">
                                    <div class="HrimgFrist">
                                        <a href="#">
                                            <img src="../../App_Image/CarouselImage/HrimgFrist.jpg" class="img-circle" width="50" /></a>
                                    </div>
                                    <a href="#">趣玩先锋</a><br />
                                    <a href="#">怪有意思的</a>
                                </div>
                                <div class="Hrimg">
                                    <div class="HrimgSeend">
                                        <a href="#">
                                            <img src="../../App_Image/CarouselImage/HrimgSeend.jpg" class="img-circle" width="50" /></a>
                                    </div>
                                    <a href="#">新时代主妇</a><br />
                                    <a href="#">俏皮小夫人</a>
                                </div>
                                <div class="Hrimg">
                                    <div class="HrimgThrity">
                                        <a href="#">
                                            <img src="../../App_Image/CarouselImage/HrimgThrity.jpg" class="img-circle" width="50" /></a>
                                    </div>
                                    <a href="#">租房一族</a><br />
                                    <a href="#">生活从不租</a>
                                </div>
                                <div class="Hrimg">
                                    <div class="HrimgFifth">
                                        <a href="#">
                                            <img src="../../App_Image/CarouselImage/HrimgFifth.jpg" class="img-circle" width="50" /></a>
                                    </div>
                                    <a href="#">雅致居家控</a><br />
                                    <a href="#">我的生活我做主</a>
                                </div>
                            </div>
                            <div class="Hrimg">
                                <div class="HrimgSixth">
                                    <a href="#">
                                        <img src="../../App_Image/CarouselImage/Alipay.jpg" class="img-circle" width="50" /></a>
                                </div>
                                <a href="#">支付宝</a><br />
                                <a href="#">有钱就是爷</a>
                                <div class="Alipay_QRcode"></div>

                            </div>
                            <div class="Hrimg">
                                <div class="HrimgSeventh">
                                    <a href="#">
                                        <img src="../../App_Image/CarouselImage/Taopolarizer.png" class="img-circle" width="50" /></a>
                                </div>
                                <a href="#">电影片</a><br />
                                <a href="#">有陪伴有故事</a>
                                <div class="Alipay_QRcode"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <%--导航链接--%>
            <section style="background: rgba(246,6,132,.1); margin-top: 1%;">
                <%--商品图片展示一--%>
                <div class="container-fluid text-center">
                    <div class="row">
                        <div class="col-md-12" id="ProRecommendFrist">
                            <div style="border-bottom: red solid thin; width: 100%;" class="h4 text-center">
                                <span class="glyphicon glyphicon-ice-lolly-tasted"></span>&nbsp <span class="h3">女装</span> &nbsp <span class="glyphicon glyphicon-ice-lolly-tasted"></span>
                            </div>
                            <div class="col-md-3 text-center">
                                <a href="javascript:;">
                                    <img src="../../App_Image/ProImage/ProOne.jpg" class="img-responsive" />
                                    <div class="Describe">
                                        <p class="pull-left HomeProPrice">￥<span>150</span></p>
                                        <p class="pull-left">德·玛纳韩版高腰修身小脚九分裤牛仔裤修身</p>
                                    </div>
                                </a>
                            </div>
                            <div class="col-md-3">
                                <a href="javascript:;">
                                    <img src="../../App_Image/ProImage/ProTwo.jpg" class="img-responsive" />
                                    <div class="Describe">
                                        <label class="pull-left HomeProPrice">￥<span>220</span></label>
                                        <p class="pull-left">白鹿语时尚休闲拼接条纹立领落肩卫衣秋</p>
                                    </div>
                                </a>
                            </div>
                            <div class="col-md-3">
                                <a href="javascript:;">
                                    <img src="../../App_Image/ProImage/ProThree.jpg" class="img-responsive" />
                                    <div class="Describe">

                                        <label class="pull-left HomeProPrice">￥<span>240</span></label>
                                        <p class="pull-left">时尚潮流条纹拼块衬衣长袖翻领不对称衬衫</p>
                                    </div>
                                </a>
                            </div>
                            <div class="col-md-3">
                                <a href="javascript:;">
                                    <img src="../../App_Image/ProImage/ProFour.jpg" class="img-responsive" />
                                    <div class="Describe">

                                        <label class="pull-left HomeProPrice">￥<span>320</span></label>
                                        <p class="pull-left">2017秋冬新款时尚撞领直筒针织衫女款毛衣</p>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <%--商品图片展示二 --%>
                        <div class="col-md-12" id="ProRecommendSeend">
                            <div style="border-bottom: red solid thin; width: 100%;" class="h4 text-center">
                                <span class="glyphicon glyphicon-gift"></span>&nbsp <span class="h3">鞋包</span> &nbsp<span class="glyphicon glyphicon-gift"></span>
                            </div>

                            <div class="col-md-3">
                                <a href="javascript:;">
                                    <img src="../../App_Image/ProImage/ProEleven2.jpg" class="img-responsive" />
                                    <div class="Describe">
                                        <label class="pull-left HomeProPrice">￥<span>359</span></label>
                                        <p class="pull-left">万里马新款女包牛皮时尚单肩包手包托特包</p>
                                    </div>
                                </a>
                            </div>
                            <div class="col-md-3">
                                <a href="javascript:;">
                                    <img src="../../App_Image/ProImage/ProTen2.jpg" class="img-responsive" />
                                    <div class="Describe">

                                        <label class="pull-left HomeProPrice">￥<span>559</span></label>
                                        <p class="pull-left">女鞋运动真皮平板鞋厚底松糕鞋高帮休闲鞋</p>
                                    </div>
                                </a>
                            </div>
                            <div class="col-md-3">
                                <a href="javascript:;">
                                    <img src="../../App_Image/ProImage/Pro222_bg.jpg" class="img-responsive" />
                                    <div class="Describe">
                                        <label class="pull-left HomeProPrice">￥<span>159</span></label>
                                        <p class="pull-left">ZGR女鞋运动平板鞋厚底松糕鞋高帮休闲鞋</p>
                                    </div>
                                </a>
                            </div>
                            <div class="col-md-3">
                                <a href="javascript:;">
                                    <img src="../../App_Image/ProImage/Pro111.jpg" class="img-responsive" />
                                    <div class="Describe">

                                        <label class="pull-left HomeProPrice">￥<span>159</span></label>
                                        <p class="pull-left">新款牛皮英伦单肩包斜挎包包女包波士顿包</p>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <%--商品图片展示三 --%>
                        <div class="col-md-12" id="ProRecommendThree">
                            <div style="border-bottom: red solid thin; width: 100%;" class="h4 text-center">
                                <span class="glyphicon glyphicon-sunglasses"></span>&nbsp<span class="h3"> 男装 </span>&nbsp<span class="glyphicon glyphicon-sunglasses"></span>
                            </div>
                            <div class="col-md-3">
                                <a href="javascript:;">
                                    <img src="../../App_Image/ProImage/ProFive1_bg.jpg" class="img-responsive" />
                                    <div class="Describe">
                                        <label class="pull-left HomeProPrice">￥<span>239</span></label>
                                        <p class="pull-left">皮尔·卡丹2017新款男款春夏百搭格子衬衫</p>
                                    </div>
                                </a>
                            </div>

                            <div class="col-md-3">
                                <a href="javascript:;">
                                    <img src="../../App_Image/ProImage/ProSix1.jpg" class="img-responsive" />
                                    <div class="Describe">

                                        <label class="pull-left HomeProPrice">￥<span>159</span></label>
                                        <p class="pull-left">皮尔·卡丹2017新款男款春夏百搭格子衬衫</p>
                                    </div>
                                </a>
                            </div>
                            <div class="col-md-3">
                                <a href="javascript:;">
                                    <img src="../../App_Image/ProImage/ProSeven1.jpg" class="img-responsive" />
                                    <div class="Describe">
                                        <label class="pull-left HomeProPrice">￥<span>1500</span></label>
                                        <p class="pull-left">2017新款秋装新品时尚外套绵羊皮真皮皮衣</p>
                                    </div>
                                </a>
                            </div>
                            <div class="col-md-3">
                                <a href="javascript:;">
                                    <img src="../../App_Image/ProImage/ProNight1_bg.jpg" class="img-responsive" />
                                    <div class="Describe">

                                        <label class="pull-left HomeProPrice">￥<span>99</span></label>
                                        <p class="pull-left">2017新款翻领俄罗斯刺绣短款纯棉牛仔外套</p>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
    <script src="../../App_Script/jquery-1.8.3.min.js"></script>
    <script src="../../App_Script/jquery.min.js"></script>
    <script src="../../App_Script/bootstrap.min.js"></script>
<script>
    $(document).ready(function () {
        //展示区域字体
        $("div[id^='ProRecommend'").find("a").addClass("h5");
        //锚链接
     
        //$(window).scroll(function () {
        //    var ScrollTop =  //滚动条距离顶部位置 633   1173 1573
        //  //  alert(ScrollTop);
        //});        
        ProScroll("#Wear", 633);
        ProScroll("#Shoe", 1173);
        ProScroll("#Man", 1573);
  

        $.post(
            "../../App_BackgroundProcedure/LC_HomePage.ashx",
            {
                HomeSeek: $(this).attr("class"), HomeOrShowPro: "1"
            },
            function getBack(data, state) {
                if (state == "success") {

                    //alert("陈宫！");
                //  alert("商品的数值是:" + data);
                    $("#hdValue").html(data);
                    //控制字体的大小
                    $(".brand_content").find("span").addClass("h5");
                                              
                }
                else {
                    alert("传值失败！");
                }
            });

        $("#Nav_parent").find("li").each(function (index) {       
            $(this).mouseenter(function () {    
               $("#showValue").fadeIn(10);                                        
                var hv = $("#hdValue").children().eq(index);                                      
                $("#showValue").html(hv.html());
                $("#showValue").bind("mouseover", function () {
                    $("#showValue").fadeIn(10);
                });

            });
        });
        //控制鼠标移除事件
        $("#Nav_parent,#showValue").mouseleave(function () {
            $("#showValue").fadeOut(10);
        });



    });
    function ProScroll(Id,scollNunber)
    {
        $(Id).click(function () {
            alert($(this).text());
            $(window).scrollTop(scollNunber);
        });  
    }
</script>

<script type="text/javascript">

    $(document).ready(function () {
        /*****导航跳转之《卖家中心》*****/
        TitleNavHref(2, "../LC_My.aspx");
        TitleNavHref(4, "../LC_SetUpShop.aspx");
        TitleNavHref(3, "../LC_ShoppingTrolley.aspx");

        $("#Master_nav").find("li").find("a").eq(4).click(function () {
            $.post(
                "../../App_BackgroundProcedure/LC_HomePage.ashx",
                 {
                      HomeOrShowPro: "2"
                 },
                   function getBack(data, state) {
                       if (state == "success") {
                             //alert(data);
                            if (data == "True") {
                               window.location.href = "../LC_SetUpShop.aspx";
                           } else {
                               window.location.href = "../LC_LogIng.aspx";
                           }
                       } else {
                           alert("卖家中心验证是否登录时出错！");
                       }
                   }
            );            
        });


        /*搜索***********/
        $("#basic-addon2").click(function () {
            var HomeIput = $("#seek").val();
            // window.this.location.href = "../LC_ShowProHomePage.aspx?ProMsg=" +$("#seek").val()+ "";
            if (HomeIput == "") {
                HomeIput = "针织衫";
            }
            $.post(
               "../../App_BackgroundProcedure/LC_HomePage.ashx",
                {
                    HomeSeek: HomeIput, HomeOrShowPro: "0"
                },
                  function getBack(data, state) {
                      if (state == "success") {
                        
                       //   alert(data);
                          window.location.href = "../LC_ShowProHomePage.aspx"
                      }
                      else {
                          alert("传值失败！");
                      }
                  }
           );

        });


        /*是否直接打开页面*/
        //var url = window.location.search.substr(1);
        //name = url.substring(url.indexOf("=") + 1, url.length);
        //if (name == "") {            
        //    alert("本页面跳转！");             
        //} else {

        //    alert("登录后跳转！");

        //}


        // 设置一级导航栏的字体             
        $("#Nav_sno").find("li").find("a").addClass("h5");

        /*隐藏轮播左右切换*/
        $("#left").css("display", "none");
        $("#right").css("display", "none");

        $("#slidershow").bind({
            "mouseenter": function () {
                $("#left").show();
                $("#right").show();
            },
            "mouseleave": function () {
                $("#left").hide();
                $("#right").hide();
            }
        })
        //轮播弹出背景片效果         

        $("#Carouse_widht").find(".item").find("a").each(function (index) {
            // 在当前选中的标签中添加事件
            $(this).mouseenter(function () {
                if (index == 0) {
                    $(".carouse1_bg").fadeIn(300);
                }
                if (index == 1) {
                    $(".carouse2_bg").fadeIn(300);
                }
                if (index == 2) {
                    $(".carouse3_bg").fadeIn(300);
                }
                if (index == 3) {
                    $(".carouse4_bg").fadeIn(300);
                }

            });
            $(this).mouseleave(function () {
                $(".carouse1_bg").fadeOut(300);
                $(".carouse2_bg").fadeOut(300);
                $(".carouse3_bg").fadeOut(300);
                $(".carouse4_bg").fadeOut(300);
            });
        });
        /*table区的字体*/
        $("#HonePageTable").find("tr").find("td").find("a").addClass("h6");
        $("#HonePageTable").find("tr").find("td").find("a").find("span").addClass("btn_color");

        /*页中结尾字体*/
        $(".Hrimg").find("a:eq(1)").addClass("h5");
        $(".Hrimg").find("a:eq(1)").css({
            "font-weight": "bold"
        });
        $(".Hrimg").find("a:eq(2)").addClass("h6");
        $(".Hrimg").find("a:gt(1)").css("padding-left", "3%");

        /*商品推荐特效*/
        Pro_Image("#ProRecommendFrist", "ProOne_bg.jpg", "ProTwo_bg.jpg", "ProThree_bg.jpg", "ProFour_bg.jpg", "ProOne.jpg", "ProTwo.jpg", "ProThree.jpg", "ProFour.jpg");
        Pro_Image("#ProRecommendSeend", "ProEleven2_bg.jpg", "ProTen2_bg.jpg", "Pro222.jpg", "Pro111_bg.jpg", "ProEleven2.jpg", "ProTen2.jpg", "Pro222_bg.jpg", "Pro111.jpg");
        Pro_Image("#ProRecommendThree", "ProFive1.jpg", "ProSix1_bg.jpg", "ProSeven1_bg.jpg", "ProNight1.jpg", "ProFive1_bg.jpg", "ProSix1.jpg", "ProSeven1.jpg", "ProNight1_bg.jpg");
        /*注册跳转*/
        $("#SignIn").bind("click", function () {
            $(this).find("a").attr("href", "../LC_LogIN.aspx");
        }
        );
        /*商品图片展示特效*/
        ///ProRecommend : [id]
        ///Oldimg_one......Oldimg_four :[旧图片]
        ///Bgimg_one.....Bgimg_four : [新图片]
        (function () { //函数闭包


        })();

    });
    // 设置头部导航方法

    function TitleNavHref(index, path) {
        $("#Master_nav").find("li").find("a").eq(index).click(function () {
            alert(0)
            $.post(
                "../../App_BackgroundProcedure/LC_HomePage.ashx",
                 {
                     HomeOrShowPro: "2"
                 },
                   function getBack(data, state) {
                       if (state == "success") {
                        //   alert(data);
                           if (data == "True") {
                               window.location.href = path;
                           } else {
                               window.location.href = "../LC_LogIng.aspx";
                           }
                       } else {
                           alert("卖家中心验证是否登录时出错！");
                       }
                 }
            );
        });

    }

    //图片展示方法
    function Pro_Image(ProRecommend, Bgimg_one, Bgimg_two, Bgimg_three, Bgimg_four, Oldimg_one, Oldimg_two, Oldimg_three, Oldimg_four) {
        $(ProRecommend).find(".col-md-3").find("img").each(function (index) {

            $(this).mouseenter(function () {
                if (index == 0) {
                    $(this).attr("src", "../../App_Image/ProImage/" + Bgimg_one);
                } else if (index == 1) {
                    $(this).attr("src", "../../App_Image/ProImage/" + Bgimg_two);
                }
                else if (index == 2) {
                    $(this).attr("src", "../../App_Image/ProImage/" + Bgimg_three);
                } else {
                    $(this).attr("src", "../../App_Image/ProImage/" + Bgimg_four);
                }

            }).mouseleave(function () {
                if (index == 0) {
                    $(this).attr("src", "../../App_Image/ProImage/" + Oldimg_one);
                } else if (index == 1) {
                    $(this).attr("src", "../../App_Image/ProImage/" + Oldimg_two);
                } else if (index == 2) {
                    $(this).attr("src", "../../App_Image/ProImage/" + Oldimg_three);
                } else {
                    $(this).attr("src", "../../App_Image/ProImage/" + Oldimg_four);
                }
            });
        });
    }
</script>
</asp:Content>

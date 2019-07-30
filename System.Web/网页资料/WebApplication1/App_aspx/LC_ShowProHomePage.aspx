    <%@ Page Title="" Language="C#" MasterPageFile="~/App_Site/LC_Leitao.Master" AutoEventWireup="true" CodeBehind="LC_ShowProHomePage.aspx.cs" Inherits="WebApplication1.App_aspx.LC_ShowProHomePage" %>

    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <link href="../App_Style/bootstrap.min.css" rel="stylesheet" />
        <style>
            [class^="col-md"] {
             /*border:Red  solid thin;*/
            }
            .proIco {
                font-size: 0.001px;
            }
            /*搜索栏*/
            #ProSeek {
                border: rgb(241,6,132) solid 1px;
                transform: scaleY(1);
            }
           /*搜索框后的按钮*/
                #ProSeek + #basic-addon2 {
                    background: rgb(241,6,132);
                    border: rgb(241,6,132) solid 3px;
                    color: rgb(255, 255, 255);
                    font-size: 12px;
                }

            .PromarginTop {
                padding-top: 1.5%;
            }
            /*图片展示排版*/
            .ShowTable {
                padding: 0;
                margin-bottom: 1%;
                width: 20%;
                /*margin-left: 2.1%*/
                margin-left: 4%;
            }

           .ShowImagePrice {
                color: rgb(255, 0, 0);
            }
            /*显示边框*/
            .ShowBorder {
          
                table-layout: fixed; /*限定表格的大小*/
                height: 350px;
            }
            .ShowBorder:hover {
                    box-shadow: -1px 1px 1px rgba(241,6,132,.8);
                }
            .ImagesWidthHeight {
                width: 230px;
                height: 300px;
            
            }
    /*条件查询背景*/

            #ShowTitleBack {
                box-shadow: -1px 1px 1px rgb(241,6,132); 
                    
            
            }
      .ShowBorTton {
                border-bottom:rgb(128, 128, 128) solid thin;
                box-shadow:1px 1px 1px gray;            

     }
            #SectionPrice {
            margin-left:15%;
            }


    /*价格范围*/
            #PriceBtn {
                margin-left: 12%;
                background: rgba(246,6,132,1);
                color: #ffffff;
                display:none;
            }
            .ShowProFont {
                box-shadow:1px 1px 1px rgb(128, 128, 128); 
                margin-left:26%;
                position:absolute;
                background:rgb(255, 255, 255);     
                width:13%;
                margin-top:0.5%;
               letter-spacing:2px;  
               display:none;        
            }
            .ShowProFont > a {
                color:rgb(0, 0, 0);
                }
               .ShowProFont>a:hover {
                color:red;
            
                }            
        </style>
      
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12" id="ProFloatTop" style="background: rgb(254,230,243);">
                    <%--搜索栏开始--%>
                    <div class="col-md-12">
                        <div class="col-md-2 col-md-offset-1">
                            <img src="../../App_Image/LogIngTitle.jpg" class="img-responsive pull-left" style="z-index: 1" width="120" />
                        </div>
                        <div class="col-md-7">
                            <div class="input-group PromarginTop">
                                <input type="text" id="ProSeek" class="form-control input-group " placeholder="玫瑰花" aria-describedby="basic-addon2" />
                                <span class="input-group-addon btn btn-sm ProSeach" id="basic-addon2">搜索</span>
                            </div>
                        </div>
                    </div>
                </div>
                <%--搜索栏结束--%>
                <div class="col-md-12" >
                    <div class="col-md-12"  id="ShowTitleBack">
                        <a href="#" class="pull-left" style="margin-left: 9.5%;">所有分类<span class="proIco glyphicon glyphicon-menu-right"></span></a>
                        <div>
                            <a role="button" style="margin-left: 71%;" data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample">显示筛选<sapn class=" proIco glyphicon glyphicon-menu-down"></sapn>
                            </a>
                            <div class="collapse in" id="collapseExample">
                                <div class="well" style="background:rgb(255, 255, 255); border: rgb(255, 255, 255);">
                              
                                 <form class="form-horizontal col-md-10 col-md-offset-1 ">
                                        <div class="form-group ShowBorTton">
                                            <label class="col-md-1">品牌:</label>
                                            <div class="col-md-11">
                                               ..................
                                            </div>
                                        </div>
                                        <div class="form-group ShowBorTton">
                                            <label class="col-md-1">尺码:</label>
                                            <div class="col-md-11">
                                                ..................
                                            </div>
                                        </div>
                                        <div class="form-group ShowBorTton">
                                            <label class="col-md-1">综合:</label>
                                            <a class="col-md-1">人气
                                            </a>
                                            <a class="col-md-1">销量
                                            </a>
                                            <a class="col-md-2" style="position: absolute; z-index: 2">
                                                <div id="SeekPirce">价格<span class=" proIco glyphicon glyphicon-menu-down"></span></div>
                                                <div class='fontPrice ShowProFont'>
                                                    <a href='javascript:;' id='HighToLow'>价格从高到低</a><br /><br />                                              
                                                    <a href='javascript:;' id='LowToHigh'>价格从底到高</a>
                                                </div>
                                            </a>                                    
                                            <div id="SectionPrice"  class=" backSetionPice input-group col-md-3 pull-left">
                                                <input class="col-md-3 input-sm" placeholder="￥" id="LeftInput" type="text" />
                                                <span class="col-md-1">-</span>
                                                <input class="col-md-3 input-sm" placeholder="￥"  id="RightInput" type="text" />    
                                                <button type='button' id='PriceBtn' class='btn btn-sm'>确定</button>                                       
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-10 col-lg-offset-1" style="background: rgba(246,6,132,.1);"  id="DisplaySquare">      
                    <!--商品展示开始-->
                    <!--商品展示开始-->     
                </div>
            </div>
        </div>

        <script src="../App_Script/jquery-1.8.3.min.js"></script>
        <script src="../App_Script/bootstrap.min.js"></script>
        <script>
            $(document).ready(function () {
                // 页面加载后就接受后台组合的商品标签字符串！！！
                $.post(
                 "../../App_BackgroundProcedure/LC_HomePage.ashx",
                  {
                      HomeOrShowPro: "0", HomeSeek: ""
                  },
                    function getBack(data, state) {
                        if (state == "success") {
                            //alert(data);
                            $("#DisplaySquare").html(data);
                        }
                        else {
                            alert("传值失败！");
                        }
                });
    /***************************************/
           $("#LeiTaoEixt").attr("href", "LC_LogIng.aspx");
           $("#ShowTitleBack").find("a").addClass("h5");   
           //价格
              $("#SeekPirce").mouseenter(function () {
                  $(this).html(" ");
                  $(".ShowProFont").show();
                  $(".ShowProFont").mouseover(function () {
                      $("#SeekPirce").html(" ");
                      $(".ShowProFont").show();
                  }).mouseleave(function () {
                      $(".ShowProFont").hide();
                      $("#SeekPirce").html("价格");
                  });;
              })
             .mouseleave(function () {
                    $(this).html("价格");                    
              });             
                //低到高后台数据
              $("#LowToHigh").click(function () {
                  alert("价格低到高");
                  $.post(
                        "../../App_BackgroundProcedure/LC_HomePage.ashx",
                         {
                             HomeOrShowPro: "3", HomeSeek: "LowToHigh"
                         },
                           function getBack(data, state) {
                               if (state == "success") {
                                  // alert("价格低到高:" + data);
                                   $("#DisplaySquare").html(data);
                               }
                               else {
                                   alert("传值失败！");
                               }
                           });                  
              });
                //价格高到低后台数据
              $("#HighToLow").click(function () {
                  $.post(
                        "../../App_BackgroundProcedure/LC_HomePage.ashx",
                         {
                             HomeOrShowPro: "3", HomeSeek: "HighToLow"
                         },
                          function getBack(data, state) {
                               if (state == "success") {
                                  // alert("价格高到底:" + data);
                                   $("#DisplaySquare").html(data);
                               }
                               else {
                                   alert("传值失败！");
                               }
                     });
              });
                //价格范围后台数据
              $("#PriceBtn").click(function () {
                  var LeftInput = $("#LeftInput").val();
                  var RightInput = $("#RightInput").val();
                  if (LeftInput == "" || RightInput == "") {
                      LeftInput = 0;
                      RightInput = 0;
                  } else {
                      $.post(
                            "../../App_BackgroundProcedure/LC_HomePage.ashx",
                             {
                                 HomeOrShowPro: "3", HomeSeek: LeftInput + "*" + RightInput
                             },
                               function getBack(data, state) {
                                   if (state == "success") {
                                     //alert("价格范围搜索:" + data);
                                       $("#DisplaySquare").html(data);
                                       if (data == "") {
                                           $("#DisplaySquare").html("<h2>没有找到....</h2>");
                                       }
                                   }
                                   else {
                                       alert("传值失败！");
                                   }
                               });
                  }
              });
           //价格范围
            $("#SectionPrice").mouseenter(function () {
                $("#PriceBtn").show();
                $(this).css({                     
                    "background": " rgba(246,6,132,.1)"
                    });
            }).mouseleave(function () {
                $(this).css({
                    "background": "rgba(255,255,255,1)"
                });
               $("#PriceBtn").hide();
           });
             
 /*搜索框特效*/         
                $(window).scroll(function () {
                    var ScrollTop = $(window).scrollTop();
                    if (ScrollTop >= 122) {            
                        $("#ProFloatTop").addClass("navbar-fixed-top");
                        $("#ProFloatTop").fadeIn(500000);

                    } else {
                        $("#ProFloatTop").removeClass("navbar-fixed-top");
                    }
                });
            });

            TitleNavHref(2, "LC_My.aspx");
            TitleNavHref(3, "LC_ShoppingTrolley.aspx");
            TitleNavHref(4, "LC_SetUpShop.aspx");
      
/*设置头部导航链接*/
            function TitleNavHref(index, path) {
                $("#Master_nav").find("li").find("a").eq(index).click(function () {
                    alert(0)
                    $.post(
                        "../App_BackgroundProcedure/LC_HomePage.ashx",
                         {
                             HomeOrShowPro: "2"
                         },
                           function getBack(data, state) {
                               if (state == "success") {
                                   alert(data);
                                   if (data == "True") {
                                       window.location.href = path;
                                   } else {
                                       window.location.href = "LC_LogIng.aspx";
                                   }
                               } else {
                                   alert("卖家中心验证是否登录时出错！");
                               }
                           }
                    );
                });

            }
        </script>
    </asp:Content>
    <%--<script>
        //点击该图片就把该商品ID给 一般处理程序中存放在cookies中 【步骤一】
        /////********
        //$(".ShowBorder").find("tr").find("td").find("a").click(function () {
        //    //alert($(this).attr("href"));
        //    $.post(
        //        "../App_BackgroundProcedure/LC_PurchasePro.ashx",
        //         {
        //             acx: $(this).attr("href").split('=')[1]
        //         },
        //           function getBack(data, state) {
        //               if (state == "success") {
        //               }
        //               else {
        //                   alert("传值失败！");
        //               }
        //           }
        //    );

        /********************/




        // 


 
        //alert(window.location.href);
        //console.log("编码:" + encodeURI("http://www.cnblogs.com/ruoshui-llj/p/5826321.html?name='f地方g'"));
        //console.log("解码:" + unescape("http://www.cnblogs.com/ruoshui-llj/p/5826321.html?name='f地方g'"));
    </script>--%>
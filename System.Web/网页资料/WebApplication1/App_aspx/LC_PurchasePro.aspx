<%@ Page Title="" Language="C#" MasterPageFile="~/App_Site/LC_Leitao.Master" AutoEventWireup="true" CodeBehind="LC_PurchasePro.aspx.cs" Inherits="WebApplication1.App_aspx.LC__PurchasePro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>    
       
        /*两组按钮*/
        #PurImmediately {
            background: #f5c0dc;
            color: rgba(241,6,132,.8);
            font-weight: bold;
        }

        #shopBuys {
            font-weight: bold;
            background: rgb(241,6,132);
            color: rgb(255, 255, 255);
        }
        /**购物车链接*/
        #PurTopHright {
            height: 130px;
        }
        #PurRight {
            text-align: center;
            float: right;
            position: fixed;
            margin-left: 97%;
            padding-right:2%;
            margin-top:4.9%;
            width: 2.8%;
            background: rgba(34,34,34,.8);
            color: rgba(241,6,132,.8);      
            font-weight: bold;
            /*letter-spacing:200px;*/ /*字体间距*/
        }
       
        /*加入购物车动画设置*/
        #PurKeyframes {
            width: 35px;
            height: 35px;
            border-radius: 10em;
            position: absolute;
            float: left;
            border: Red solid thin;
            display: none;
        }

        /*点击时的样式*/
        .ExecuteCartoon {
            animation: myfirst 1s;
            -webkit-animation: myfirst 1s; /* Safari 与 Chrome */
        }

        @keyframes myfirst {
            0% {
                top: 80%;
                left: 70%;
                opacity: .5;
            }

            20% {
                top: 70%;
                left: 70%;
            }

            100% {
                top: 25%;
                left: 155%;
            }
        }

        #Purhr {
            margin-top: 3%;
            margin-bottom: 2%;
            line-height: 25px;
            letter-spacing: 2px;
            background: rgb(241, 1, 128);
        }

            #Purhr > div > a {
                color: rgb(255, 255, 255);
            }

        header {
            background: rgb(241, 241, 241);
        }
        /***弹出登录框*/
        .FromStyle {
            background: rgba(254,241,248,1);
            box-shadow: 1PX 1PX 1PX rgba(241,6,132,1), -1px 1px 1px rgba(241,6,132,1), 1px -1px 1px rgba(241,6,132,1);
            position: absolute;
            left: 35%;
            top: 30%;
            opacity: 1;
            filter: blur(0px);
        }

        .DivMarginTop {
        }

        #submit {
            background: rgba(241,6,132,1);
            line-height: 100%;
            font-weight: bold;
            color: #ffffff;
            margin-left: 8%;
        }

        .ModelBackground {
            -webkit-filter: blur(5px) contrast(.8) brightness(.8);
            -moz-filter: blur(5px);
            -o-filter: blur(5px);
            -ms-filter: blur(5px);
            filter: blur(5px) contrast(.6) brightness(.6);
            transition: 1.0s filter;
        
            }
         /*商品展示大图*/
        #PurLiImags {            
            padding:0;                        
            margin-top:80%;     
        }
 /**图片放大特效*/
        .left {
            float: left;
        }

        .wrap {
            overflow: hidden;
            cursor: all-scroll;
            position: absolute;
        }
       .wrap > span {
                position: absolute;
                width: 60px;
                height: 60px;
                background: red;
                border: Red thin solid;
            }

        .zoom {              
            background-position: center center;
             margin-left:55%;
            margin-top:15%;            
            z-index:0;
            position:absolute;
            width: 120px;
            height: 160px;
            transform: scale(2);
            background: no-repeat;       
        }
        
    </style>
  <div class="container-fluid " id="purBody">
        <div class="row">        
            <div class="col-md-12 h4" id="Purhr">
                <%=PurTitleNav %>
            </div>
            <div class="col-md-12" id="PurRightHeight">
                <div class="col-md-4 col-lg-offset-2 ">
                    <div class="col-md-12" style="width:130%;">
                        <div class="wrap  left">                                                   
                            <span></span>
                        </div>
                        <div class="zoom left"></div>                      
                       </div>
                    <div class="col-md-8 table-responsive" id="PurLiImags">
                        <table class="table col-md-12">
                            <tr id="PurTableAspx">

                            </tr>
                        </table>
                    </div>
                </div>
                <div class="col-md-4" style="margin-top: 2%;">
                    <table class="table table-responsive table-bordered">
                        <tr>
                            <td colspan="2">
                                <div class="h4" id="PurCommodityDescribe">                                           
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td><span class="pull-left">价格</span><strong><s>12</s></strong></td>
                            <td colspan="1" class="text-right" >累计评论<strong id="SumComment"></strong></td>
                        </tr>
                        <tr>
                            <td colspan="2"><span>类淘价</span><strong><i id="PurPirce"><%=price %></i></strong></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <span>尺码</span>
                                <button class="btn btn-default  btn-xs">S</button>
                                <button class="btn btn-default btn-xs">L</button>
                                <button class="btn btn-default btn-xs">M</button>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <span class="pull-left">数量</span>
                                <div class="col-md-8">
                                    <button class="btn  btn-default btn-sm pull-left disabled" id="PurSubtract"><strong>-</strong></button>
                                    <input class="col-md-3 input-group text-center input-sm  pull-left" id="Number" value="1" />
                                    <button class="btn  btn-default btn-sm pull-left" id="PurPuls"><strong>+</strong></button>
                                    <div>库存<span id="PurRepertory"></span></div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <button id="PurImmediately" class="col-md-3 btn btn-default" >立即购买</button>
                                <button id="shopBuys" class=" col-md-4 col-md-offset-2  btn btn-default">加入购物车</button>
                                <span id="PurKeyframes"></span>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
       
            <div class="col-md-1 h4" id="PurRight">
                <div id="PurTopHright"></div>
                <div style="height:30%; width:410%;  background: #f5c0dc;">
                    <span class="glyphicon glyphicon-bed"></span>
                    &nbsp
                    <div>购物车</div>
                    <span class="badge" id="badge"></span>
                </div>
            </div>
             <div class="col-md-12" style="FILTER: alpha(opacity=100,finishopacity=0,style=3);margin-bottom:1%; border:rgba(241,6,132,.3) solid thin; width:100%;"></div>
            <div class="col-md-12"  >                        
                <div class="col-md-10 col-md-offset-1 table-responsive">
                    <table class="table" id="PurrRview">
                        <tr>
                            <th style="border-top:red solid 2px;">累积评论<span class="badge" style="background:rgb(245, 192, 220); color:#000000; " id="badgeTwo"></span></th>
                        </tr>
                    </table>
                </div>
            </div>
        </div>     
 </div>
    <%--用户未登陆时弹出登陆框--%>
    <div class="FromStyle col-md-3" hidden="hidden">
        <form class="form-horizontal  ">
            <div class="form-group DivMarginTop">
                <div class="col-md-4 col-md-offset-1">
                    <h4>密码登录</h4>
                </div>
            </div>
            <div class="form-group">
                <span class="col-md-1 col-md-offset-1 Mdwidth glyphicon glyphicon-user pull-left  btn-lg "></span>
                <div class="col-md-9">
                    <div class="form-group  has-feedback">
                        <input type="text" class="form-control" id="InputUserPhoneNumber" placeholder="手机号/用户名" aria-describedby="inputSuccess2Status" />
                        <span class="glyphicon glyphicon-remove form-control-feedback" id="NOInputUserPhoneNumber" style="display: none"></span>
                        <span class="sr-only SpanDisplay">(success)</span>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <span class="col-md-1 col-md-offset-1  Mdwidth text-left  glyphicon glyphicon-lock btn-lg"></span>
                <div class="col-md-9">
                    <div class="form-group has-feedback">
                        <input type="password" class="form-control  " id="InputUserpasswrod" aria-describedby="inputSuccess2Status" />
                        <span class="glyphicon glyphicon-remove form-control-feedback " id="NOInputUserpasswrod" style="display: none"></span>
                        <span class="sr-only SpanDisplay">(success)</span>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-10 text-center  col-md-offset-1">
                    <button type="button" id="submit" class="btn btn-default btn-lg form-control">登录</button>
                </div>
            </div>
            <div class="form-group" style="margin-top: 10%;">
                <div class="col-md-10 text-right">
                    <a href="LC_LogIN.aspx" target="_blank" <%--data-dismiss="modal"--%> style="padding-right: -100%; color: gray; opacity: .9;">免费注册</a>
                </div>
            </div>
        </form>
    </div>
    <script src="../App_Script/jquery-1.8.3.min.js"></script>
    <script src="../App_Script/jquery.min.js"></script>
    <script src="../App_Script/bootstrap.min.js"></script>  
    <script type="text/javascript">
        $(document).ready(function () {       
            //给购物车添加链接地址
            $("#Master_nav").find("li").find("a").eq(3).click(function () {            
                window.location.href = "LC_ShoppingTrolley.aspx";
            });

            var ProID = window.location.search.split('=')[1];
            //alert("商品ID:" + ProID);
            /*立即购买*/
            $("#PurImmediately").click(function () {
                $.post(
                      "../App_BackgroundProcedure/LC_PurchasePro.ashx",
                       { Chunk: "1" },
                            function (data, state) {
                                if (state == "success") {
                                    if (data == "False") {

                                     $(".FromStyle").show();
                                     $("#purBody").addClass("ModelBackground");
                                     $("#purBody").click(function () {
                                         $("#purBody").removeClass("ModelBackground");
                                         $(".FromStyle").hide();
                                     });
                                     /*给弹出框绑定事件*/
                                     $("#submit").bind("click", function () {
                                         if ($("#InputUserPhoneNumber").val() != "" && $("#InputUserpasswrod").val() != "") {
                                             $.post(
                                                 "../App_BackgroundProcedure/LC_LogIng.ashx/stin", //登录时的一般处理程序
                                                 {
                                                     LogIng: $("#InputUserPhoneNumber").val() + "*" + $("#InputUserpasswrod").val()
                                                 },
                                                 function (data, state) {
                                                     if (state == "success") {
                                                         if (data == "true") {
                                                             $("#purBody").removeClass("ModelBackground");
                                                             $(".FromStyle").hide();
                                                                //跳转到下一个页面
                                                                 window.location.href = "LC_Payment.aspx?name=" + ProID + "?LC_ProBder=" + $("#Number").val() + "";
                                                              //   window.location.reload();                                                                                                            
                                                         } else if (data == "false") {
                                                             var enroll = confirm("亲，你还没有注册哦，是否注册！");
                                                             if (enroll == true) {
                                                                 window.location.href = "LC_LogIN.aspx";
                                                             }
                                                         } else if (data == "APP_Administrator/Administrator.aspx") {
                                                             window.location.href = data;
                                                         }

                                                     } else {
                                                         alert("传值失败！");
                                                     }
                                                 });

                                         } else {

                                             if ($("#InputUserPhoneNumber").val() == "") {
                                                 hide("#NOInputUserPhoneNumber", "show");

                                             } if ($("#InputUserpasswrod").val() == "") {
                                                 hide("#NOInputUserpasswrod", "show");

                                             }
                                         }
                                     });
                                     // 移除所有图标
                                     $("#InputUserPhoneNumber").bind("blur", function () {
                                         hide("#NOInputUserPhoneNumber");
                                     });
                                     $("#InputUserpasswrod").bind("blur", function () {
                                         hide("#NOInputUserpasswrod");
                                     });
                                 } else {                                  
                                    window.location.href = "LC_Payment.aspx?name=" + ProID + "?LC_ProBder=" + $("#Number").val() + "";                                                            
                                 }
                             } else {
                                 alert("验证登陆失败！");
                             }
                         });
            });
            /**数量的加减**/
            //减
            $("#PurSubtract").click(function () {
                if ($("#Number").val() > 1) {
                    $("#Number").val(parseInt(parseInt($("#Number").val()) - 1));
                }
                if (parseInt($("#Number").val()) == 1) {
                    $("#PurSubtract").addClass("disabled");
                }
            });
            //加【购买数量要小于库存量】
            $("#PurPuls").click(function () {
                $("#PurSubtract").removeClass("disabled");
                $("#Number").val(parseInt(parseInt($("#Number").val()) + 1));
            });

          
            /*********图片显示******/
            // 方案三调用后台方法！
            /*页面一加载时候就调用该方法给页面数据库中的渲染*/
            var iocArr = new Array(); //购物车数量
            if (ProID != "") {
                $.post(
                     "../App_BackgroundProcedure/LC_PurchasePro.ashx",
                      {
                          Variate: ProID, Chunk: "0"
                      },
                        function (data, state) {
                            if (state == "success") {
                               // alert(data);                                                             
                                localStorage.setItem("key", data);
                                LC_tally();
                                                    
                            } else {
                                alert("购物车显示失败！")
                            }
                        });
                //商家回复评论   ？？？


            } else {
                alert("商品ID为空！");
                }
            /*** 商品区域特效 *********/       
            //点击导航中购物车时附带传出商品ID
            $("#Master_nav").find("li").find("a").eq(3).bind("click", function () {
                winderdow.location.href = "LC_ShoppingTrolley.aspx?name=" + ProID + "";
            });
            /*设置侧边栏的高度*/
            $("#PurRight").css({
                "height": ($("#PurRightHeight").height()+30) + "px",

            });

        });

        //!!!!!// 在生成标签的时候就要对其绑定事件,如果在之后绑定在页面中是完全找不到【最后一步】
        function LC_tally() {
            var PurArray = new Array(); 
            PurArray = localStorage.getItem("key").toString().split('*');//获取指定key本地存储的值      

         //alert(PurArray);
            //商品描述
            $("#PurCommodityDescribe").text(PurArray[1]).css("font-weight","bold");
            //价格
            $("#PurPirce").text(PurArray[2]);
            ////图片展示!
            $(".wrap").html("<img  src='" + PurArray[0] + "' width=220 class='center-block'/>");  //大图失帧？？？
            var StringBurl;
            StringBurl += "<td ><a href='#' class='img-responsive'><img src='" + PurArray[0] + "'  width=20;></a></td>"
            for (var i = 3; i <7; i++) {
                //alert(PurArray[i]);
                StringBurl += "<td><a href='#' class='img-responsive '><img src='" + PurArray[i] + "'  width=20;></a></td>"
            }                
            $("#PurTableAspx").html(StringBurl);

         

            //限制如片的个数5张详细图个！ ？？？？？？？
            /*
            *
            *
            *
            ？？？？？？？？？？？？？？
            */
            alert(PurArray);
            $("#SumComment").text(PurArray[PurArray.length - 2]); //累积评论
            $("#PurRepertory").text(PurArray[PurArray.length - 1]); //库存
            $("#PurrRview").append(PurArray[PurArray.length-3]);   //评论内容                              
            $("#badgeTwo").text(PurArray[PurArray.length - 2].split('*')); //评论数量
            $("#badge").text(PurArray[PurArray.length - 4]); //购物车数量     

            /**********图片放大效果*****************/
            var BigImages = $(".wrap").find("img");
            //图片相对于窗口的位置
            var tLeft = BigImages.offset().left;
            var tTop = BigImages.offset().top;
            console.log("图相对于窗口左边的位置:" + tLeft);
            console.log("图相对于窗口顶部的位置:" + tTop);
            $(".wrap").mousemove(function (e) {          
                //获取鼠标坐标
                var mLeft = e.clientX;
                var mTop = e.clientY;
        
                console.log("鼠标距离窗口顶部的位置:" + mTop);
                console.log("鼠标距离窗口左边的位置:" + mLeft);
                //计算鼠标相对于图片区域的位置[减去图片距离顶部和距离左边的距离]
                var l = mLeft - tLeft;
                var t = mTop - tTop;

                //鼠标移动时移动span
                $(".wrap").find("span").css({
                    "display": "block",
                    "z-index":"2",
                    "left": (l) + "px",
                    "top": (t) + "px"
                });

                var ll = (l / BigImages.width()) * 100 + "%";
                var tt = (t / BigImages.height()) * 100 + "%";
  
                //设置大图偏移
                $(".zoom").css({
                    "display": "block",
                    "background": "url(" + BigImages.attr("src") + ")",
                    "background-position": ll + " " + tt
                })
          
            
                // 接触绑定
            }).mouseout(function () {
                $(this).find("span").css("display", "none");
                $(".zoom").css("display", "none");
            })
        
        

            //清空所有数据给下次使用！              
            StringBurl = "";
            /****  图片切换 *****/
            var imgs = $("#PurTableAspx").find("td").find("a").find("img").attr("src");           
      
            $("#PurTableAspx").find("td").find("a").find("img").each(function (index) {
                $(this).mouseenter(function () {
                    if (index == 1) {
                        imgs = $(this).attr("src");//替换新图
                        $(".wrap").find("img").attr("src", imgs);
                    } else if (index == 2) {
                        imgs = $(this).attr("src");//替换新图
                        $(".wrap").find("img").attr("src", imgs);
                    } else if (index == 0) {
                        imgs = $(this).attr("src");//替换新图
                        $(".wrap").find("img").attr("src", imgs);
                    } else {
                        imgs = $(this).attr("src");//替换新图
                        $(".wrap").find("img").attr("src", imgs);
                    }
                })
            });

            /****  加入购物车弹出动画******/
            var i = 0;
            var j = 0;
            $("#shopBuys").bind({"click": function () {                                                        
                    $.post(
                 "../App_BackgroundProcedure/LC_PurchasePro.ashx",
                  { Chunk: "1" },
                       function (data, state) {
                           if (state == "success") {
                               if (data == "False") {
                                   $(".FromStyle").show();
                                   $("#purBody").addClass("ModelBackground");
                                   //给body增加点击事件...
                                   $("#purBody").click(function () {
                                       $("#purBody").removeClass("ModelBackground");
                                       $(".FromStyle").hide();
                                   });
                                   /*给弹出框绑定事件*/
                                   $("#submit").bind("click", function () {
                                       if ($("#InputUserPhoneNumber").val() != "" && $("#InputUserpasswrod").val() != "") {
                                           $.post(
                                               "../App_BackgroundProcedure/LC_LogIng.ashx/stin", //登录时的一般处理程序
                                               {
                                                   LogIng: $("#InputUserPhoneNumber").val() + "*" + $("#InputUserpasswrod").val()
                                               },
                                               function (data, state) {
                                                   if (state == "success") {
                                                       if (data == "true") {
                                                           $("#purBody").removeClass("ModelBackground");
                                                           $(".FromStyle").hide();
                                                           //跳转到下一个页面
                                                           j = 1;
                                                           window.location.reload();
                                                       } else if (data == "false") {
                                                           var enroll = confirm("亲，你还没有注册哦，是否注册！");
                                                           if (enroll == true) {
                                                               window.location.href = "LC_LogIN.aspx";
                                                           }
                                                       } else if (data == "APP_Administrator/Administrator.aspx") {
                                                           window.location.href = data;
                                                       }

                                                   } else {
                                                       alert("传值失败！");
                                                   }
                                               });

                                       } else {

                                           if ($("#InputUserPhoneNumber").val() == "") {
                                               hide("#NOInputUserPhoneNumber", "show");

                                           } if ($("#InputUserpasswrod").val() == "") {
                                               hide("#NOInputUserpasswrod", "show");

                                           }
                                       }
                                   });
                                   // 移除所有图标
                                   $("#InputUserPhoneNumber").bind("blur", function () {
                                       hide("#NOInputUserPhoneNumber");
                                   });
                                   $("#InputUserpasswrod").bind("blur", function () {
                                       hide("#NOInputUserpasswrod");
                                   });
                               } else {
                                   j = 1;
                               }
                           } else {
                               alert("验证登陆失败！");
                           }
                       });
                      //先判断该用户是否登录！再限定其加入购物车的数量！
                     if (j == 1) {                     
                         i++;
                            if (i < 3) //一件商品最多选择两次
                            {                                                      
                                //增加购物车数量                 
                                $("#badge").text(Number($("#badge").text()) + Number($("#Number").val()));

                                $("#PurKeyframes").show();
                                $("#PurKeyframes").css({
                                    "background": "url('" + imgs + "') no-repeat",
                                    "background-size": "cover"
                                }).addClass("ExecuteCartoon");
                                window.setTimeout(function () {
                                    $("#PurKeyframes").removeClass("ExecuteCartoon");
                                    $("#PurKeyframes").hide();
                                }, 1000);

                                var ProID = window.location.search.split('=')[1];
                                ///把商品id给后台，增加购物车数据                          
                                if (ProID != "") {
                                    //alert("已经进入："+ProID)
                                    $.post(
                                          "../App_BackgroundProcedure/LC_Shopping.ashx",
                                           {
                                               PurShopp: ProID + "*" + $("#Number").val() + "*" + $("#PurPirce").text(), Shopping: "1"
                                           },
                                             function (data, state) {
                                                 if (state == "success") {                                                  
                                                 } else {
                                                     alert("数据发送到购物车失败！");
                                                 }
                                             }
                                        );
                                } else {
                                    alert("商品ID为空！");
                                }

                            } else {                               
                                alert("商品已加入购物车！");
                            }
                        }
                }
            });
        }

        //本地数据储存方法
        localData = {
            hname: location.hostname ? location.hostname : 'localStatus',
            isLocalStorage: window.localStorage ? true : false,
            dataDom: null,
            initDom: function () { //初始化userData 7             
                if (!this.dataDom) {
                    try {
                        this.dataDom = document.createElement('input');//这里使用hidden的input元素10    
                        this.dataDom.type = 'hidden';
                        this.dataDom.style.display = "none";
                        this.dataDom.addBehavior('#default#userData');//这是userData的语法13       
                        document.body.appendChild(this.dataDom);
                        var exDate = new Date();
                        exDate = exDate.getDate() + 30;

                        this.dataDom.expires = exDate.toUTCString();//设定过期时间17   
                    } catch (ex) {
                        return false;
                    }
                } return true;
            }, set: function (key, value) {
                if (this.isLocalStorage) {
                    window.localStorage.setItem(key, value);
                } else {
                    if (this.initDom()) {
                        this.dataDom.load(this.hname);
                        this.dataDom.setAttribute(key, value);
                        this.dataDom.save(this.hname)
                    }
                }
            }, get: function (key) {
                if (this.isLocalStorage) {
                    return window.localStorage.getItem(key);
                } else {
                    if (this.initDom()) {
                        this.dataDom.load(this.hname);
                        return this.dataDom.getAttribute(key);
                    }
                }
            }, remove: function (key) {
                if (this.isLocalStorage) {
                    localStorage.removeItem(key);
                } else {
                    if (this.initDom()) {
                        this.dataDom.load(this.hname); this.dataDom.removeAttribute(key);
                        this.dataDom.save(this.hname)
                    }
                }
            }
        }

        /***隐藏图标或者显示****/
        function hide(my, HideOrShow) {
            if (HideOrShow == "show") {
                $(my).show();
                $(my).parent().addClass("has-error");
            } else {
                $(my).hide();
                $(my).parent().removeClass("has-error");
            }
        }




    </script>
<script>
   // $(document).ready(function () {
     


        //解决Modal弹出时页面左右移动问题        
        //$.ajax({
        //    type: "post",
        //    contentType: "application/json;utf-8",
        //    url: "LC_PurchasePro.aspx/datavlaues",  
        //    dateType: "json",
        //    success: function (result) {
        //        // alert("前台接收的ID是:" + result.d);                  
        //        localStorage.setItem("key", result.d);
        //        LC_tally();
        //    },
        //    error: function (msg) {
        //        alert(msg);
        //    }
        //});
        //   if (ProID != "") {
        //方案一 (X)
        //$.ajax({
        //    type: "post",
        //    url: "../App_BackgroundProcedure/LC_PurchasePro.ashx",
        //    data: { Variate: ProID.split('=')[1] },
        //    success: function (data) {
        //        alert(data);
        //        localStorage.setItem("key", data);  //将value存储到key字段
        //        Bigbinds();
        //        $(".wrap").html("<div id='IMGS'>我是图片显示区域图</div>");
        //    },
        //    error: function () {
        //        alert("怎么出错了呢");
        //    },
        //    datatype:"text"
        //});
        //$("#IMGS").bind("click", function () {
        //    alert("成功访问！！");
        //});
        //方案二(X)

        /*
        $.post(
            "../App_BackgroundProcedure/LC_PurchasePro.ashx",
             {
                 Variate: ProID.split('=')[1]
             },
               function (data, state) {
                   if (state == "success") {
                    //   alert("后台数据是:" + data);
                       /*遇到的问题？？？？？？？？？？？？？？？？？？？？？？？？*/
        //post内部组合标签外部访问不到 ！ ！尝试把数据迁移到外部去？
        //数据一到外部就被清空了????????
        ///  数据拿出后不能够同步刷新？？？？
        /************?????????????????????????????????????????*/
        //localStorage.setItem("key", data);  //将value存储到key字段
        //var PurArray = new Array();
        //PurArray = localStorage.getItem("key").toString().split('*');//获取指定key本地存储的值      

        //$("#PurCommodityDescribe").html("<button type='button'  onclick='WoYao()'>绑定</button>");

        ////商品描述和价格
        //$("#PurCommodityDescribe").text(PurArray[1]);
        //$("#PurPirce").text(PurArray[2]);
        ////图片展示!
        //$(".wrap").html("<img src='" + PurArray[0] + "' id='zqy' class='center-block' />");  //大图失帧？？？
        //var StringBurl;
        //StringBurl += "<td><a href='#'><img src='" + PurArray[0] + "' onmousemove='Bigs()' class='img-responsive center-block' ></a></td>"

        //for (var i = 3; i < PurArray.length; i++) {
        //    StringBurl += "<td><a href='#'><img src='" + PurArray[i] + "' class='img-responsive center-block'></a></td>"
        //}
        //$("#PurTableAspx").html(StringBurl);
        ////清空所有数据给下次使用！
        //localStorage.setItem("key", " ");
        //StringBurl = "";

        //alert("储存成功！");
        //Bigbinds();
        /*   }
           else {
               alert("传值失败！");
           }
       }
);

} else {
alert("商品ID为空！");
}
*/
        //  /****组合标签******/
        function Bigbinds() {
            //   alert("调用成功!");
            //   var PurArray = new Array();
            //   PurArray = localStorage.getItem("key").toString().split('*');//获取指定key本地存储的值          
            //   //商品描述和价格
            //   $("#PurCommodityDescribe").text(PurArray[1]);
            //   $("#PurPirce").text(PurArray[2]);
            //   //图片展示!
            //   $(".wrap").html("<img src='" + PurArray[0] + "' class='zs center-block' />");  //大图失帧？？？

            //   var StringBurl;
            //   StringBurl += "<td><a href='#'><img src='" + PurArray[0] + "' class='img-responsive center-block'></a></td>"
            ////   $("#PurTableAspx").append("<td><a href='#'><img src='" + PurArray[0] + "' class='img-responsive center-block'></a></td>");
            //   for (var i = 3; i < PurArray.length; i++) {
            //       StringBurl += "<td><a href='#'><img src='" + PurArray[i] + "' class='img-responsive center-block'></a></td>"
            //   }
            //   $("#PurTableAspx").html(StringBurl);
            //   //清空所有数据给下次使用！
            //   localStorage.setItem("key", " ");
            //   StringBurl = "";
        }

        /*  
             JQ获取不到动态添加的节点必须要现将其节点激活！！！
              POST方法中组建的标签不能获取到！！！
           */


        //function bind(msg) {

        //    $.post(
        //        "../App_BackgroundProcedure/LC_PurchasePro.ashx",
        //         {
        //             Variate: msg
        //         },
        //           function getBack(data, state) {
        //               if (state == "success") {
        //                   alert(data);

        //               }
        //               else {
        //                   alert("传值失败！");
        //               }
        //           }
        //    );

        //}

        //       /**几大滤镜！(参考资料)http://www.cnblogs.com/fsjohnhuang/p/4127888.html **/
        //       /*黑白*/
        //       -webkit-filter: grayscale(100%);
        //       -o-filter: grayscale(100%);
        //       -moz-filter: grayscale(100%);
        //       -ms-filter: grayscale(100%);
        //       filter: grayscale(100%);
        //       /*老照片*/
        //       -webkit-filter: sepia(100%);
        //       -moz-filter: sepia(100%);
        //       -o-filter: sepia(100%);
        //       -ms-filter: sepia(100%);
        //       filter: sepia(100%);
        //       /*高斯模糊*/
        //       -webkit-filter: blur(1px);
        //       -moz-filter: blur(1px);
        //       -o-filter: blur(1px);
        //       -ms-filter: blur(1px);
        //       filter: blur(1px);
        //       /*圆角滤镜*/
        //       /**  格式，filer: drop-shadow(x-offset y-offset 阴影模糊半径 阴影颜色)
        //*  x-offset和y-offset为阴影的相对于元素左上角的位移距离；
        //* 注意：
        //*     1. 阴影的外观受border-radius样式的影响；
        //*     2. :after和:before等伪元素会继承阴影的效果。
        //*/
        //       -webkit-filter: drop-shadow(5px 5px 0px #333);
        //       -moz-filter: drop-shadow(5px 5px 0px #333);
        //       -o-filter: drop-shadow(5px 5px 0px #333);
        //       -ms-filter: drop-shadow(5px 5px 0px #333);
        //       filter: drop-shadow(5px 5px 0px #333);
        //       border: solid 10px #e00;
        //       -webkit-border-radius: 10px;
        //       /**诡异滤镜*/
        //       /**  格式，filer: hue-rotate(效果范围)
        //*  效果范围，取值范0deg~365deg，0（默认值）为无效果
        //*/
        //       -webkit-filter: hue-rotate(200deg);
        //       -moz-filter: hue-rotate(200deg);
        //       -o-filter: hue-rotate(200deg);
        //       -ms-filter: hue-rotate(200deg);
        //       filter: hue-rotate(200deg);
        //       /*亮度滤镜*/
        //       /**  格式，filer: brightness(效果范围)
        //*  效果范围，取值范围>=0的数字或百分数，1为无效果
        //*/
        //       -webkit-filter: brightness(2);
        //       -moz-filter: brightness(2);
        //       -o-filter: brightness(2);
        //       -ms-filter: brightness(2);
        //       filter: brightness(2);
        //       /*对比度滤镜*/
        //       /**  格式，filer: contrast(效果范围)
        //*  效果范围，取值范围>=0的数字或百分数，1为无效果
        //*/
        //       -webkit-filter: contrast(2);
        //       -moz-filter: contrast(2);
        //       -o-filter: contrast(2);
        //       -ms-filter: contrast(2);
        //       filter: contrast(2);
        //       /*/饱和度滤镜**/
        //       /**  格式，filer: saturate(效果范围)
        //*  效果范围，取值范围>=0的数字或百分数，1为无效果，0为灰度图
        //*/
        //       -webkit-filter: saturate(2);
        //       -moz-filter: saturate(2);
        //       -o-filter: saturate(2);
        //       -ms-filter: saturate(2);
        //       filter: saturate(2);
        //       /*反色滤镜*/
        //       /**  格式，filer: invert(效果范围)
        //*  效果范围，取值范围0~1或0~100%，0为无效果，1或100%表示最大效果
        //*/
        //       -webkit-filter: invert(1);
        //       -moz-filter: invert(1);
        //       -o-filter: invert(1);
        //       -ms-filter: invert(1);
        //       filter: invert(1);




   /// });
   
</script>
</asp:Content>

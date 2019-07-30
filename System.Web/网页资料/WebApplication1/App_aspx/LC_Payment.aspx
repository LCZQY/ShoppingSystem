<%@ Page Title="" Language="C#" MasterPageFile="~/App_Site/LC_Leitao.Master" AutoEventWireup="true" CodeBehind="LC_Payment.aspx.cs" Inherits="WebApplication1.App_aspx.LC_Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<link href="../App_Style/bootstrap.min.css" rel="stylesheet" />
    <style> 
        [class*="col-md"] {
            /*border: Red solid thin;*/
        }
/*结账导航*/
        #menu2 {
            list-style: none;
            width: 620px;
            height: 50px;
            margin-left: 7%;
        }

            #menu2 > li {
                float: left;
                width: 120px;
                border-right: 45px transparent dotted;
                border-top: 0;
                margin-left: 2%;
                padding-top: 5%;
                font-weight: bold;
                text-align: left;
                color: #fff;
                font-size: 15px;
                border-bottom: 23px rgb(246, 220, 220) groove;
                letter-spacing: 1px;
            }
        #menu2 > li > span {
                   position: absolute;
        }
        /*--抽奖按钮--*/
        #sj {
            height: 250px;
            background-repeat: no-repeat;
            background-size: contain;
            background-image: url(../App_Image/packet.jpg);
            background-position: center;
            text-align: center;
            letter-spacing: 12px;
            text-shadow: 5px 5px 8px rgb(0, 0, 0);
            color: #fff;
            padding-top: 22%;
            padding-left: 12%;
            font-weight: bold;
            font-size: 100px;
        }
        #PayRaffle {
            background:rgb(237, 238, 50);    
        }
/*收获地址*/
        #PayTableOne,  #PayTableTwo {   
         box-shadow:-1px 1px 1px rgb(0, 0, 0);        
        }

/**诚实插件*/
 	#test select{
		width:100px;
		margin-left:20px;
	}
     /**余额*/

        #Difference {
             border:rgb(246, 45, 153) solid thick;
               width:100%;
               margin-top:2%;
               height:50px;
               line-height:50px;
               margin-bottom:3%;
        }
        .PayMarginTop {
        margin-top:1.3%;
        }

        .PageEndBorder {
            height: 200px;
            box-shadow: -2px 3px 2px rgb(0, 0, 0), 2px -3px 2px rgb(0, 0, 0), 2px 3px 2px rgb(0, 0, 0), 2px 3px 2px rgb(0, 0, 0);
             margin-bottom: 10%;
        }
        #PayMarginTopTwo {
            margin-top: 5%;
            cursor:pointer;
            box-shadow: -2px 1px 2px rgb(0, 0, 0), 2px -3px 2px rgb(0, 0, 0), 2px 1px 2px rgb(0, 0, 0), 2px 1px 2px rgb(0, 0, 0);
            margin-bottom: 10%;
        }
    </style>
    <div class="container-fluid">
        <div class="row">
            <%--主页面--%>
            <div class="col-md-12" id="PriameyBody" style="background: rgb(254,230,243); margin-top:.4%; box-shadow: 2px -3px 2px rgb(217, 8, 118);">
                <div class="col-md-2 col-md-offset-1">
                    <img src="../../App_Image/LogIngTitle.jpg" class="img-responsive pull-left" style="z-index:1" width="150" />
                </div>
                <div class="col-md-5  col-md-offset-3">
                    <div class="tab_pannel ">
                        <ul id="menu2">
                            <li id="m1" style="border-bottom: 23px rgb(241,6,132) groove;"><span>拍下商品</span></li>
                            <li id="m3"><span>支付宝付款</span></li>
                            <li id="m4"><span>确定收货</span></li>
                            <li id="m5"><span>评价</span></li>
                        </ul>
                    </div>
                </div>                            
            </div>
            <div id="PayBosyOne">         
                <div class="col-md-10  col-lg-offset-1">
                    <table class=" col-md-12 table table-bordered" id="PayTableOne">
                        <tr>
                            <th colspan="4" class="h5"><b>确定收货地址</b></th>
                        </tr>
                    </table>
                </div>
                <div class="col-md-10  col-lg-offset-1">
                    <table class="col-md-12 table table-bordered" id="PayTableTwo">                                
                        <tr class="text-center">
                            <td colspan="1">商品属性</td>
                            <td>单价</td>
                            <td>数量</td>
                            <td>小计</td>
                        </tr>
                    </table>
                </div>
                <div class="col-md-10 col-md-offset-1">
                    <div class="col-md-6 pull-right" style="margin-right: 0; ">
                        <ul style="border:rgba(241,6,132,.8) solid 2px; height: 100%; width: 100%;">
                            <li>
                                <label>实付款:</label><h5 style="color: Red" id="Settle"></h5>
                            </li>
                            <li>
                                <label>寄送至:</label><h5 style="color: Red" id="Paddrees"></h5>
                            </li>
                            <li>
                                <label>收货人:</label><h5 style="color: Red" id="Pname"></h5>
                            </li>
                            <li>
                                <button style="background: rgb(241,6,132)" id="SumbitPay"  class="btn pull-right  col-md-8 btn-danger">提交订单</button>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

            <%--绑定支付宝--%>
            <div id="PayBosTwo" hidden="hidden" >
                <div class="col-md-12 " style="background: rgb(254,230,243); margin-top: .4%; box-shadow: 2px -1px 2px rgb(217, 8, 118);">
                    <div class="col-md-12 col-lg-offset-1">
                        <div class="img-responsive  col-md-3">
                            <img src="../App_Image/PayMent/PayLogo.png" class="pull-left" width="100" />
                               <h4>我的收银台</h4>
                        </div>                   
                        <div class="col-md-2 col-lg-offset-5" id="account">
                            支付宝账户:<span id="Sonaccount"></span>
                        </div>
                    </div>
                </div>
                <div class="col-md-10  col-lg-offset-1"  >
                    <div class="col-md-12  " style=" box-shadow: 2px 1px 2px gray;">
                        <div class="img-responsive col-md-1">
                            <img src="../App_Image/PayMent/payer.png" />
                        </div>
                        <div class="col-md-9">
                            <div id="PayProNames" style="margin-left: 3%; margin-top: 5%;">122d了可能尽量快点发你就离开大陆开放 </div>
                        </div>
                        <div class="col-md-1" style="margin-top: 2%;">
                            <h5>￥<span id="LastPrice">150</span></h5>
                        </div>
                    </div>
                     <%--提示绑定--%>
                    <div id="PayBosyThree" hidden="hidden">
                        <div class="col-md-12" id="PayMarginTopTwo" >
                            <div class="col-md-12 img-responsive ">
                                <img src="../App_Image/PayMent/NoPay.jpg" data-toggle="popoverOne" data-container="body" data-title="我可爱的亲" data-content="请先绑定支付宝哦" class="center-block" />
                            </div>
                            <div style="position:absolute;">
                                <button class="btn btn-info btn-sm " hidden="hidden" id="Pinless"><span class="glyphicon glyphicon-plus">点击绑定</span></button>
                            </div>
                        </div>                    
                    </div>
                    <%--设置支付宝页面--%>
                    <div id="BindPay" hidden="hidden" class="col-md-12">
                        <form class="form-horizontal col-md-6 col-lg-offset-3">
                            <div class="form-group text-center">
                                <h3>绑定支付宝</h3>
                            </div>
                            <div class="form-group has-feedback">
                                <label for="exampleInputName1">支付宝账号</label>
                                <input type="text" class="form-control" id="exampleInputName1"  data-toggle="popoverTwo" data-container="body"   placeholder="请输入支付宝账号" />
                                <span class="glyphicon glyphicon-ok form-control-feedback SpanDisplay " id="YESexampleInputName1" style="display: none"></span>
                                <span class="glyphicon glyphicon-remove form-control-feedback" id="NOexampleInputName1" style="display: none"></span>
                                <span class="sr-only SpanDisplay">(success)</span> <%--sr-only:盲人设备观看--%>
                            </div>
                            <div class="form-group has-feedback">
                                <label for="exampleInputPasswrod1">设置支付密码</label>
                                <input type="password" class="form-control" maxlength="20" id="exampleInputPasswrod1"  data-toggle="popoverThree" data-container="body" placeholder="请设置支付密码" />
                                <span class="glyphicon glyphicon-ok form-control-feedback SpanDisplay " id="YESexampleInputPasswrod1" style="display: none"></span>
                                <span class="glyphicon glyphicon-remove form-control-feedback" id="NOexampleInputPasswrod1" style="display: none"></span>      
                            </div>
                            <div class="form-group  has-feedback">
                                <label for="exampleInputPasswrod2">确认密码</label>
                                <input type="password" class="form-control" maxlength="20" id="exampleInputPasswrod2"  data-toggle="popoverFour" data-container="body" placeholder="请再次确认密码" />
                                <span class="glyphicon glyphicon-ok form-control-feedback SpanDisplay " id="YESexampleInputPasswrod2" style="display: none"></span>
                                <span class="glyphicon glyphicon-remove form-control-feedback" id="NOexampleInputPasswrod2" style="display: none"></span>
                            </div>
                            <div class="form-group ">
                                <input id="PayBuy" type="button" class="btn  col-md-4 col-lg-offset-4  btn-primary" data-toggle="modal" value="保存" />
                               <%--  <a href="##" class="text-right col-md-12 disabled" id="GetBack" style="color:rgb(241,6,132);">返回支付</a>--%>
                            </div>
                        </form>
                    </div>

                    <%--支付页面--%>
                    <div id="LastPage" hidden="hidden" class="col-md-12 ">
                        <div class="col-md-12" id="Difference">
                            <h5 class="col-md-1">余额</h5>
                            <div class="col-md-2 col-lg-offset-9">
                                <h5><span class="h5">支付:</span><span id="LastPrice_One">150</span></h5>
                            </div>
                        </div>
                        <div class="PageEndBorder col-md-12 ">
                            <div class="col-md-12 PayMarginTop">
                                <label for="exampleInputName1">支付宝支付密码：</label>
                            </div>
                            <div class="col-md-12 PayMarginTop">
                                <span class="badge" style="background: #51f14f; font-size: .1px;"><span class="glyphicon glyphicon-ok"></span></span>安全设置检测成功！无需短信校验。
                            </div>
                            <div class="col-md-4 PayMarginTop has-feedback">
                                <input type="password" id="PayLastPasswrod" placeholder="请输入6位数密码" class="form-control input-sm" />
                                <span class="glyphicon glyphicon-ok form-control-feedback SpanDisplay " id="YESPayLastPasswrod" style="display: none"></span>
                                <span class="glyphicon glyphicon-remove form-control-feedback" id="NOPayLastPasswrod" style="display: none"></span>
                                <span class="sr-only SpanDisplay">(success)</span>
                            </div>
                            <a class="col-md-2 h6 PayMarginTop" href="#">忘记密码？</a>
                            <div class="col-md-12 PayMarginTop">
                                <button type="button" id="LastSumbitPay" class="btn btn-primary btn-sm col-md-2">确认支付</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%--收货地址模态框--%>
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <%--模态头部--%>
                        <div class="modal-header">
                            <button type="button" id="Rtrues" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="myModalLabel" style="color: rgb(241,6,132);">新增收货地址</h4>
                        </div>
                        <%--主要内容--%>
                        <div class="modal-body">
                  
                            <table class="table table-responsive">
                                <tr>
                                    <td colspan="3"><span class="pull-left">所在地区 </span>                                                                           
                                        <div class="col-md-10">                                               
                                            <form class="form-inline ">
                                                <div data-toggle="distpicker" class="col-md-12">
                                                    <div class="form-group">
                                                        <select class="form-control input-sm" id="province2">
                                                            <option>"---- 选择省 ----</option>
                                                        </select>
                                                    </div>
                                                    <div class="form-group">
                                                        <select class="form-control input-sm" id="city2">
                                                            <option>"---- 选择市 ----</option>
                                                        </select>
                                                    </div>
                                                    <div class="form-group">
                                                        <select class="form-control input-sm" id="district2">
                                                            <option>"---- 选择区 ----</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3"><span class="pull-left">详细地址</span>
                                        <div class="col-md-8 has-feedback">
                                        <textarea class="form-control" placeholder="请填写详细地址" id="PayTextarea" rows="3">                                            
                                        </textarea>
                                            <span class="glyphicon glyphicon-ok form-control-feedback SpanDisplay " id="YESPayTextarea" style="display: none"></span>
                                            <span class="glyphicon glyphicon-remove form-control-feedback" id="NOPayTextarea" style="display: none"></span>
                                            <span class="sr-only SpanDisplay">(success)</span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3"><span class="pull-left">收件人姓名 </span>
                                        <div class="col-md-7 has-feedback">
                                            <input type="text" id="PayReceiving" placeholder="请填写收件人姓名" class="input-group col-md-12 input-sm" />
                                            <span class="glyphicon glyphicon-ok form-control-feedback SpanDisplay " id="YESPayReceiving" style="display: none"></span>
                                            <span class="glyphicon glyphicon-remove form-control-feedback" id="NOPayReceiving" style="display: none"></span>
                                            <span class="sr-only SpanDisplay">(success)</span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3"><span class="pull-left">手机号码 </span>
                                        <div class="col-md-7 has-feedback" style="margin-left: 2.2%;">
                                            <input type="text" id="PayPhone" maxlength="11" placeholder="请输入手机号" class="input-group col-md-12 input-sm" />
                                            <span class="glyphicon glyphicon-ok form-control-feedback SpanDisplay " id="YESPayPhone" style="display: none"></span>
                                            <span class="glyphicon glyphicon-remove form-control-feedback" id="NOPayPhone" style="display: none"></span>
                                            <span class="sr-only SpanDisplay">(success)</span>
                                        </div>
                                    </td>
                                </tr>
                            </table>

                        </div>
                        <%--模态脚--%>
                        <div class="modal-footer">
                            <div class="col-md-12">
                                <div class="checkbox col-md-12">
                                    <label>
                                        <input type="checkbox" id="AddressDefalut" value="" />
                                        设为默认地址
                                    </label>
                                </div>
                                <div class="col-md-12">
                                    <button id="ModalFooter" type="button" class="btn btn-primary" data-dismiss="modal">保存</button>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

            <%--抽奖模态框--%>
            <div class="modal fade" id="myModa2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <%--模态头部--%>
                        <div class="modal-header">
                            <h4 class="modal-title" id="myModalLabe2" style="color: rgb(241,6,132);">绑定成功!您将有一次抽奖的机会!</h4>
                        </div>
                        <%--主要内容--%>
                        <div class="modal-body">
                         
                            <div class="col-md-12">
                                <button type="button" id="PayRaffle" class="btn btn-danger col-md-2">点击抽奖</button>
                                <div class="col-md-12 h1" id="sj">
                                    0000                           
                                 </div>                                
                            </div>
                        </div>
                        <div class="modal-footer">
                            <div class="col-md-12">
                                <span id="texts" class="col-md-6 pull-left"></span>
                                <button type="button" id="ModalFooter2" class="btn col-md-3 pull-right  btn-primary  btn-xs" hidden="hidden" data-dismiss="modal">我知道了</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
 
<%--    <script src="../App_Script/jquery-1.4.1.min.js"></script>--%>
    <script src="../App_Script/jquery-3.1.1.min.js"></script>
<%--    <script src="../App_Script/jquery-1.8.3.min.js"></script>--%>
    <script src="../App_Script/bootstrap.min.js"></script>
    <%--城市插件--%>
    <script src="../App_Script/City_JS/distpicker.data.js"></script>
    <script src="../App_Script/City_JS/distpicker.js"></script>
    <script src="../App_Script/City_JS/main.js"></script>
  


<script type="text/javascript">
    $(document).ready(function () {                           
            var hrefs = window.location.search.split('?');
            var PayCommID = hrefs[1].split('=')[1];
            var PayProNuber = hrefs[2].split('=')[1];
            var PayPrice = "";

         /*****可能存在购物车问题多个商品！！！！！！！****/ 
          // alert(PayCommID + " " + PayProNuber);

            if (PayCommID != "") {
           //     alert(PayCommID);          
                        $.post(
                       "../App_BackgroundProcedure/LC_Payment.ashx",
                       {
                           Pay: PayCommID, Payber: PayProNuber, category: "0"
                       },
                          function (data, state) {
                              if (state == "success") {
                                //  alert("结账页面:" + data);
                                  var YesAdrees = data.split('*');
                                  $("#PayTableOne").append(YesAdrees[0]);

                                 // 修改默认地址
                                  $("input:radio").each(function (index) {                                    
                                      var k = 0;
                                      if ($(this).val() == "1" || $("input:radio").length == 1) {
                                          k = index;
                                          //随时修改该收获地址信息【默认第一条时候】
                                          $("#Paddrees").text($(".LC_paaddress").eq(index).text()).addClass("h5");
                                          $("#Pname").text($(".LC_payname").eq(index).text() + "  " + $(".LC_payUnmber").eq(index).text()).addClass("h5");

                                          $(this).attr("checked", true);
                                          $(this).parent().css({ "border": "red solid thin", "width": "100%", "background": "rgba(251, 197, 197,.4)" })
                                      }
                                      $(this).click(function () {                                         
                                          if (k != index) {
                                              if (confirm("修改地址后,你需要重新确认订单信息!")) {

                                                  //改变默认收获地址 ！！！！！！！！！！！！！！！！！！！
                                                  $.post(
                                                      "../App_BackgroundProcedure/LC_Payment.ashx",
                                                          {
                                                              category: "8", Addressid: $(this).attr("name")
                                                          },
                                                             function (data, state) {
                                                                 if (state == "success") {
                                                                    // alert(data);
                                                                     if (data = "Ture") {
                                                                         //随时修改该收获地址信息【修改地址的时候】
                                                                         $("#Paddrees").text($(".LC_paaddress").eq(index).text()).addClass("h5");
                                                                         $("#Pname").text($(".LC_payname").eq(index).text()+" "+ $(".LC_payUnmber").eq(index).text()).addClass("h5");
                                                                         window.location.reload();
                                                                     }
                                                                 }
                                                             });
                                              }
                                          }
                                      });

                                      
                                  });
                                  //删除地址
                                  $(".DeleteAdrees").each(function (index) {
                                      $(this).click(function () {
                                
                                          if(confirm("是否删除本地址"))
                                          {
                                              $.post(
                                              "../App_BackgroundProcedure/LC_Payment.ashx",
                                                  {
                                                      category: "9", Addressid: $("input:radio").eq(index).attr("name")                                                      
                                                  },
                                                     function (data, state) {
                                                         if (state == "success") {
                                                           //alert(data);
                                                             if (data = "Ture") {
                                                                 window.location.reload();
                                                             }
                                                         }
                                                    });                                                                                            
                                          }
                                      });
                                  });
                                  $("#PayTableTwo").append(YesAdrees[1]);
                                  /*遍历对应商品的数量*/

                                
                                  //结算时!
                                  var PriceTotal = 0                                                
                                  if ($(".LC_sum").length > 1) {
                                      $("#PayProNames").text("合并付款:"+$(".LC_sum").length+"笔");
                                      $(".LC_sum").each(function () {
                                          PriceTotal += parseInt($(this).text());
                                      });
                                  } else {                                 
                                      $("#PayProNames").text($("#PayTableTwo").find("img").next().html());
                                      PriceTotal = parseInt($(".LC_sum").text());
                                  }
                                  //实付款
                                  $("#Settle").text("￥" + PriceTotal);

                              } else {
                                  alert("失败！");
                              }
                          });
            }

            //提交订单
            /*先检测该用户是否绑定支付宝！如果未绑定后台直接反对NULL，前台就显示绑定界面！如果已经绑定就直接
            进入抽奖界面，抽中的金额发送给后台！最近进行支付！判断其余额和支付金额大小！！！*/

            /*跳向绑定支付宝页面！*/
            $("#Pinless").click(function () {
                $("[data-toggle='popoverOne']").popover('hide');
                $("#PayBosyThree").hide();
                $("#BindPay").show();
            });

        /**********************/
            $("#PayMarginTopTwo").mouseenter(function () {
                $("#Pinless").show();
              
            }).mouseleave(function () {
                $("#Pinless").hide();

            });

        /**********************/

            var k = "";  //K是账户余额,如果为空则密码输入不正确!
            /******************************提交订单******************************************/
            $("#SumbitPay").click(function () {
                $("#PayBosyOne").hide();
                $("#PriameyBody").hide();
                $("#PayBosTwo").show();
                //最后的价格！
                $("#LastPrice").text($("#Settle").text().substr(1, $("#Settle").text().length));
                $("#LastPrice_One").text(  $("#LastPrice").text());
                /*赋值给余额*/

                $.post(
                     "../App_BackgroundProcedure/LC_Payment.ashx",
                     {
                         category: "2", PriceLast: $("#Settle").text()
                     },
                        function (data, state) {
                            if (state == "success") {
                                if (data == "NULL") {
                                    alert(0);
                                    $("#account").text("请绑定支付宝账号...").css("color", "red");
                                    $("#PayBosyThree").show();
                                    $("[data-toggle='popoverOne']").popover('show');
                                    //   alert("支付宝未绑定！！！");
                                } else {
                                    //存在支付宝直接支付！！
                                    $("#BindPay").hide();
                                    $("#LastPage").show();
                                    $("#Sonaccount").text(data);
                                
                                }
                            } else {
                                alert("失败!");
                            }
                        }
                       );
            })
            /*********************************************************************************/
            //比对密码是否正确！！
            $("#PayLastPasswrod").blur(function () {
             
            });          
            /******************************确定支付   ******************************************/            
            $("#LastSumbitPay").click(function () {
                 alert("正在比对！");
                $.post(
                      "../App_BackgroundProcedure/LC_Payment.ashx",
                      {
                          category: "4", paypasswrod:$("#PayLastPasswrod").val()
                      },
                     function (data, state) {
                         if (state == "success") {
                             if (data == "Eroor") {
                                 PayShow("#PayLastPasswrod", "#NOPayLastPasswrod");
                                 PayHidden("PayLastPasswrod", null, "YESPayLastPasswrod");
                             } else {
                                 alert("密码的data:" + data);
                                 PayHidden("PayLastPasswrod", "#NOPayLastPasswrod", null);
                                 PayShow("#PayLastPasswrod", "#YESPayLastPasswrod");
                                 k = data;

                                 /**********************************************************/
                                 alert("k的数值余额是:" + k);
                                 alert("消费:" + $("#LastPrice").text());   // 消费为空
                                 if (parseInt($("#LastPrice").text()) > parseInt(k)) {

                                     alert("余额不足");

                                 } else {
                                     var shen = parseInt(parseInt(k) - parseInt($("#LastPrice").text()));
                                     alert("余额:" + shen);

                                     $.post(
                                           "../App_BackgroundProcedure/LC_Payment.ashx",
                                              {
                                                  category: "5", consume: shen
                                              },
                                              function (data, state) {
                                                  if (state == "success") {
                                                      alert(data);

                                                      var q = 0;
                                                      var seecond = window.setInterval(function () {
                                                          q++;
                                                          if (q == 1) {
                                                              alert("支付成功！正在您生成商品信息....");
                                                              window.clearInterval(seecond);
                                                          }  }, 1000);                                                  
                                                      $.post(
                                                           "../App_BackgroundProcedure/LC_Payment.ashx",
                                                           {
                                                              //  category: "7", consume: PayCommID + "," + PayProNuber + "," + 

                                                              category: "7", CommID: PayCommID, ProNuber: PayProNuber
                                                           },
                                                          function (data, state) {
                                                              if (state == "success") {
                                                                  alert("生成个人账单" + data);
                                                                  if (data != "") {
                                                                      //window.location.href = "LC_My.aspx?CommID=" + PayCommID.substr(0, PayCommID.length - 1) + "?ProNuber=" + PayProNuber.substr(0, PayProNuber.length - 1) + "?Price=" + PayPrice.substr(0, PayPrice.length - 1) + "";
                                                                      window.location.href = "LC_My.aspx?CommID=" + PayCommID + "?ProNuber=" + PayProNuber + "";
                                                                  }
                                                              }
                                                          }
                                                     );
                                                  } else {

                                                  }
                                              });
                                 }


                             }

                         } else {
                             alert("后台发送密码错误！");
                         }
                     });                   
            });

            InputFous("PayLastPasswrod");
            /***************************************   ******************************************/
    


            //抽奖 【1:插入余额】
            var i = 0;
            var next = 0;
            $("#PayRaffle").click(function () {
                if ($("#exampleInputName1").val() != "" && $("#exampleInputPasswrod1").val() != "" && $("#exampleInputPasswrod2").val() != "") {
                    i++;
                    var setinter = setInterval(function () {
                        next = Math.floor(Math.random() * 10000);
                        $("#sj").text(next);
                        if (i > 1) {
                            window.clearInterval(setinter);
                            $("#PayRaffle").unbind("click");
                            /// $("#texts").text("支付宝账户:" + $("#exampleInputName1").val() + "账户余额:" + next).css("color", "red");
                            $("#ModalFooter2").show();
                            $.post(
                               "../app_backgroundprocedure/lc_payment.ashx",
                             {
                                 category: "6", consume: next
                             },
                             function (data, state) {
                                 if (state == "success") {
                                 alert(data);
                                 $("#Sonaccount").text($("#exampleInputName1").val());
                                 $("#texts").text("账户:" + $("#exampleInputName1").val() + "账户余额:" + next).css("color", "red");
                                 }
                             }
                            );
                        }
                    }, 50)
                } else {
                    $("#texts").text("请输入完整的信息！");
                }
            });
          
        /*****支付宝绑定验证********/   //???????????????????????????????????????????
            $("#exampleInputName1").change(function () {
                PopoverHide("popoverTwo");
                PayHidden("#exampleInputPasswrod1", null, "#YESexampleInputPasswrod1");
            });
            var i = 1;
            $("#exampleInputName1").blur(function () {
                if ($(this).val() == "") {
                  //  $(this).attr("data-toggle data-container");
                    $(this).attr("data-content", "请绑定支付账号");
                    i = 1;
                    PayShow("#exampleInputName1", "#NOexampleInputName1");
                } else {

                   // $(this).removeAttr("data-toggle data-container");
                    //PopoverHide("popoverTwo");
                    //$('#exampleInputName1').popover('hide')
                    //$(this).attr("data-content", "绑定成功");
                    PayShowSuccess("#exampleInputName1", "#YESexampleInputName1");
                    i = 0;
                }
                PopoverShow("popoverTwo");
            });
            $("#exampleInputName1").focus(function () {
                $('#exampleInputName1').popover('hide')

                // PopoverHide("popoverTwo");
                PayHidden("#exampleInputName1", null, "#YESexampleInputName1");
            });
           
        //密码 
            $("#exampleInputPasswrod1").blur(function () {

                if ($(this).val() == "") {
                    i = 1;
                    $(this).attr("data-content", "请设置密码");
                    PayShow("#exampleInputPasswrod1", "#NOexampleInputPasswrod1");
                } else if ($(this).val().length < 6) {
                    i = 1;
                    $(this).attr("data-content", "请设置6-20位密码");
                    PayShow("#exampleInputPasswrod1", "#NOexampleInputPasswrod1");
                } else {
                    //$(this).attr("data-content", "密码设置成功");
                    PayShowSuccess("#exampleInputPasswrod1", "#YESexampleInputPasswrod1");
                    i = 0;
                }
                PopoverShow("popoverThree");

            });
        //确认密码
            $("#exampleInputPasswrod2").blur(function () {
                if ($(this).val() == "") {
                    i = 1;
                    $(this).attr("data-content", "请确定密码");
                    PayShow("#exampleInputPasswrod2", "#NOexampleInputPasswrod2");

                } else if ($("#exampleInputPasswrod1").val() != $(this).val()) {
                    i = 1;
                    $(this).attr("data-content", "两次密码输入不一样");
                    PayShow("#exampleInputPasswrod2", "#NOexampleInputPasswrod2");
                }
                else {
                    i = 0;
                    //$(this).attr("data-content", "密码正确");
                    PayShowSuccess("#exampleInputPasswrod2", "#YESexampleInputPasswrod2");
                }
                PopoverShow("popoverFour");
            });


            $("#exampleInputPasswrod1").focus(function () {               
               PopoverHide("popoverThree");
                PayHidden("#exampleInputPasswrod1", null, "#YESexampleInputPasswrod1");
            });
            $("#exampleInputPasswrod2").focus(function () {
                PopoverHide("popoverFour");
                PayHidden("#exampleInputPasswrod2", null, "#YESexampleInputPasswrod2");
            });
            /*****支付宝绑定验证********/

            var w = 0; //判断是否有修改成功！
            /************************************************************绑定支付宝账号/************************************************************/
            $("#PayBuy").click(function () {

                //PayHidden("#exampleInputName1", null, "#YESexampleInputName1");
                //PayHidden("#exampleInputPasswrod1", null, "#YESexampleInputPasswrod1");
                //PayHidden("#exampleInputPasswrod2", null, "#YESexampleInputPasswrod2");
                //当用户输入的所有值通过判断后 i=0,执行修改该用户支付宝账号!
                if (i == 0) {
                    alert("账户余额:"+next);
                    $("#PayBuy").attr("data-target", "#myModa2");

                    $.post(
                    "../App_BackgroundProcedure/LC_Payment.ashx",
                   {
                       category: "3", baybay: $("#exampleInputName1").val() + "*" + $("#exampleInputPasswrod2").val()
                   },
                   function (data, state) {
                       if (state == "success") {
                           alert("支付宝账户插入成功!！");                      
                           //$("#account").text($("#exampleInputName1").val()).css("color", "red");
                      
                           //$("#PayLastPasswrod").blur(function () {
                           //    //alert("正在比对！");
                             
                           //});
                           $("#BindPay").hide(); // 点了我知道了！ 才跳回到支付页面
                           $("#LastPage").show();
                       } else {
                           alert("绑定支付宝时，后台数据发送失败！");
                       }
                   }
                   );
                }            
            });
            //返回支付
            $("#GetBack").click(function () {
                $("#BindPay").hide();
                $("#LastPage").show();
            });
          /************************************************************绑定支付宝账号/************************************************************/


            /*得到焦点后*/
            InputFous("exampleInputName1");
            InputFous("exampleInputPasswrod1");
            InputFous("exampleInputPasswrod2");

        /******************************收货地址 用户验证************************************************/
        //详细地址

            $("#PayTextarea").val("");
            $("#PayTextarea").blur(function () {
                if ($(this).val() == "") {
                    //    $(this).attr("data-content", "请绑定支付账号");   
                    PayShow("#PayTextarea", "#NOPayTextarea");
                    PayHidden("#PayTextarea", null, "#YESPayTextarea");
                    PayShow("#PayTextarea", "#NOPayTextarea");
                } else {
                    //$(this).attr("data-content", "绑定成功");
                    PayShowSuccess("#PayTextarea", "#YESPayTextarea");
                    PayHidden("#PayTextarea", "#NOPayTextarea", null);
                    PayShowSuccess("#PayTextarea", "#YESPayTextarea");
                }
            });

        //姓名
            $("#PayReceiving").blur(function () {
                if ($(this).val() == "") {
                    //    $(this).attr("data-content", "请绑定支付账号"); 
                    PayShow("#PayReceiving", "#NOPayReceiving");
                    PayHidden("#PayReceiving", null, "#YESPayReceiving");
                    PayShow("#PayReceiving", "#NOPayReceiving");

                } else {
                    //$(this).attr("data-content", "绑定成功");
                    PayShowSuccess("#PayReceiving", "#YESPayReceiving");
                    PayHidden("#PayReceiving", "#NOPayReceiving", null);
                    PayShowSuccess("#PayReceiving", "#YESPayReceiving");
                }
            });

        //手机号
            $("#PayPhone").blur(function () {
                if ($(this).val() == "" || $(this).val().length != 11 || isNaN($(this).val()) == true || isPhoneNo($(this).val()) == false) {
                    //    $(this).attr("data-content", "请绑定支付账号"); 
                    PayShow("#PayPhone", "#NOPayPhone");
                    PayHidden("#PayPhone", null, "#YESPayPhone");
                    PayShow("#PayPhone", "#NOPayPhone");
                } else {
                    //$(this).attr("data-content", "绑定成功");
                    PayShowSuccess("#PayPhone", "#YESPayPhone");
                    PayHidden("#PayPhone", "#NOPayPhone", null);
                    PayShowSuccess("#PayPhone", "#YESPayPhone");
                }
            });

   /******************************---------------************************************************/
          

            /*收件人信息*/
            var Adress = "";
            //省
            $("#province2").change(function () {
                Adress += $(this).val();
            });
            //市
            $("#city2").change(function () {
                Adress += $(this).val();
            });
            //区
            $("#district2").change(function () {
                Adress += $(this).val();
            });

            var DeafultAddress = "0";
             //默认地址
            $("#AddressDefalut").each(function () {
                $(this).click(function () {
                    if ($(this).is(":checked")) {               
                        DeafultAddress = "1";
                    } 
                })
            });                            

           $("#ModalFooter").click(function () {      
                //alert("点击成功！");
              //  alert("默认地址是:" + DeafultAddress);
                $.post(
                      "../App_BackgroundProcedure/LC_Payment.ashx",
                    {
                        CONSIGNEE: Adress + "*" + $("#PayReceiving").val() + "*" + $("#PayPhone").val() + "*" + DeafultAddress,
                        category: "1"
                    },
                     function (data, state) {
                         if (state == "success") {
                             if(data!="")
                             {
                                 window.location.reload();
                             }

                         } else {
                             alert("失败！");
                         }
                     });
            });
        });
    /*手机号判断*/
    function isPhoneNo(phone) {
        var pattern = /^1[34578]\d{9}$/;
        return pattern.test(phone);    //test()方法 判断字符串中是否匹配到正则表达式内容，返回的是boolean值 ( true / false )
    }


        //提示框的隐藏
        function PopoverHide(PopverID) {
            $("[data-toggle=" + PopverID + "]").popover('hide');
        }
        //提示框的显示
        function PopoverShow(PopverID) {
            $("[data-toggle=" + PopverID + "]").popover('show');
        }
        //显示错误
        function PayShow(Id, Eroor)
        {           
            $(Id).parent().addClass("has-error");
            $(Eroor).show();
        }
       //显示正确
        function PayShowSuccess(Id, Success)
        {           
            $(Id).parent().addClass("has-success");
            $(Success).show();
        }

        //得到焦点隐藏所有!
        function InputFous(ID){
            $("#"+ID).focus(function () {
                //PayHidden(this, "#NO" + ID, null);
                PayHidden(this, "#NO" + ID, "#YES"+ID);
            });


        };
       //隐藏所有
        function PayHidden(Id, Eroor, Success) {
            
                $(Id).parent().removeClass("has-error");
                $(Id).parent().removeClass("has-success");       
            $(Eroor).hide();
            $(Success).hide();
        }
</script>

</asp:Content>

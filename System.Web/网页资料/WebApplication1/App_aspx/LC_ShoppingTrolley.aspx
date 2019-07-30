<%@ Page Title="" Language="C#" MasterPageFile="~/App_Site/LC_Leitao.Master" AutoEventWireup="true" CodeBehind="LC_ShoppingTrolley.aspx.cs" Inherits="WebApplication1.LC_ShoppingTrolley" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../App_Style/bootstrap.min.css" rel="stylesheet" />
    <style>
        td {
            border: red solid thin;
        }
        [class*="col-md"] {
            /*border: Red solid thin;*/
        }

        .Delete {
        color:rgba(34,34,34,1);
        }

        .ShoppSettleBACK {
        background:rgb(217, 8, 118);
        
    
        }

        .ShoppSettleBACK:hover {
        background:rgb(217, 8, 118);    
            }

    </style>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12 " style="background: rgb(254,230,243); margin-top:.4%;  box-shadow:2px -3px 2px rgb(217, 8, 118);">
                <div class="col-md-11 col-md-offset-1">
                    <img src="../../App_Image/LogIngTitle.jpg" class="img-responsive pull-left" style="z-index: 1" width="150" />
                    <h2>购物车</h2>
                </div>
            </div>
            <div class="col-md-12 ">
                <div class="col-md-10 col-lg-offset-1" style="margin-bottom: 5%;">
                    <div class="table-responsive ">
                        <table class="table table-bordered table-hover" id="ShopTable">
                            <tr>
                                <td>
                                    <h4 style="border-bottom: red solid 2px; color: rgb(217, 8, 118);">全部商品</h4>

                                </td>
                            </tr>
                            <tr class="text-center">
                                <td>
                                    <label class="checkbox ">
                                    <input type="checkbox" class="checkAll" value="All" />全选</label>
                                </td>
                                <td colspan="1">商品信息</td>
                                <td></td>
                                <td>单价</td>
                                <td>数量</td>
                                <td>金额</td>
                                <td>操作</td>
                            </tr>
                        </table>
                    </div>
                    <div class="col-md-12" id="ShooFootPage" style=" background:rgba(128, 128, 128,.1);  ">
                        <div class="col-md-2 ">
                            <label class="checkbox">
                              <input type="checkbox" class="checkAll" value="All" />全选</label>
                        </div>
                        <div class="col-md-2"><a id="AllDeletePro" href="#">删除</a></div>
                        <div class="col-md-2"><a href="#">已选商品<span id="Letter">0</span>件</a></div>
                        <div class="col-md-2 "><a href="#">合计￥<span id="Prices">0</span></a></div>
                        <div class="col-md-4 pull-right">
                            <button type="button" id="ShoppSettle" style="border:0;" class="pull-right  col-md-6 btn btn-default">结算</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    

    <script src="../App_Script/jquery-1.8.3.min.js"></script>
    <script src="../App_Script/jquery.min.js"></script>
    <script src="../App_Script/bootstrap.min.js"></script>
    <script>
        $(document).ready(function () {
            /***********
            * 商品的总价？？ 和全选？？ 还有按钮的取消和选中样式？
            *                                              
            **********/
 
            //页面一加载就读取数据
            $.post(
                  "../App_BackgroundProcedure/LC_Shopping.ashx",
                   {
                       Shopping: "2"
                   },
                     function (data, state) {
                         if (state == "success") {                           
                            //alert("购物车页面已经接收:" + data);   //  ????还是出现自动截取字符串问题！！
                             $("#ShopTable").append(data);
                             //遍历checkbox
                             //只能够全选一次！！点击第二次就失效？？？？
                             $(".checkAll").click(function () {
                                 var Sum = 0;
                                 $(".Delete").each(function () {
                                     Sum += Number( $(this).parent().prev().text())                  
                                 });
                                 $("#Prices").text(Sum);
                                 if ($(this).is(":checked")) {
                                     $("input[type='checkbox']").attr("checked", true);
                                 } else {
                                     $("#Prices").text("0");
                                     $("input:checkbox").each(function () {
                                         if ($(this).is(":checked")) {
                                             $("input[type='checkbox']").attr("checked", false);
                                         } else {
                                             $("input[type='checkbox']").attr("checked", true);
                                         }
                                     });
                                 }

                             });
                         
                             //删除商品
                             $(".Delete").each(function () {
                                 $(this).click(function () {
                                     if (confirm("是否删除该商品？")) {
                                         $.post(
                                             "../App_BackgroundProcedure/LC_Shopping.ashx",
                                              {
                                                  Shopping: "3", deleteProid: $(this).attr("delete")
                                              },
                                                function (data, state) {
                                                    if (state == "success") {
                                                        //alert("已经发送！");
                                                        if (data == "Yes") {
                                                            window.location.reload();  //页面重新刷新
                                                        }
                                                    } else {
                                                    }
                                            });
                                     }
                                 });


                             })
                             

                             /**数量的加减**/
                             //减
                             $(".PurSubtract").each(function (index) {
                                 $(this).click(function () {

                                     if ($(".Number").eq(index).val() > 1) {
                                         $(".Number").eq(index).val(parseInt(parseInt($(".Number").eq(index).val()) - 1));

                                         //因为该数量在变化，所以直接单价*数量即可【单个商品价格】
                                         var TdPrice = $(this).parent().parent().prev().text();  //单价                                             
                                         var TdNunber = $(".Number").eq(index).val();  //数量                    
                                         $("b").eq(index).text(Number(TdPrice * TdNunber));
                                         //总价

                                         if ($("input:checkbox").eq(index + 1).is(":checked")) {
                                             if ($("#Prices").text() != "") {
                                                 $("#Prices").text(Number($("#Prices").text()) - Number(TdPrice * TdNunber));
                                             } else {
                                                 $("#Prices").text(Number(TdPrice * TdNunber));

                                             }
                                         } 
                                     }

                                     if 
                                        (parseInt($(".Number").eq(index).val()) == 1) {
                                         $(".PurSubtract").eq(index).addClass("disabled");
                                     }
                                 });

                             })
                             //// 解开按钮封禁样式
                             //alert($("#Letter").text())
                             //if (Number($("#Letter").text()) != 0) {
                             //    $("#ShoppSettle").removeClass("disabled");
                             //} 
                             //加【购买数量要小于库存量】
                             $(".PurPuls").each(function (index) {
                                 $(this).click(function () {
                                     //$(".Number").css("transform", "translateY(-20)");
                      
                                     $(".PurSubtract").removeClass("disabled");
                                     $(".Number").eq(index).val(parseInt(parseInt($(".Number").eq(index).val()) + 1));
                                     //金额随着数量的增加而增加     【 prev（）只找到上一个兄弟节点 】                                                           
                                     var TdPrice = $(this).parent().parent().prev().text();
                                     var TdNunber = $(".Number").eq(index).val();                                                
                                     $("b").eq(index).text(parseFloat(TdPrice * TdNunber));

                                     //总价？？？？？？
                                     //if ($("input:checkbox").eq(index + 1).is(":checked")) {
                                     //    if ($("#Prices").text() != "") {
                                     //        $("#Prices").text(Number(TdPrice * TdNunber));
                                     //    } else {
                                     //        $("#Prices").text( Number(TdPrice * TdNunber));
                                     //    }
                                     //} 
                                                                
                                 });
                             });

                             // 价格和数量合计
                             var ber = 0; //选中商品合计
                             var Sprice = 0;   //  【【 注意:这个chexbox的索引是从1开始的】】
                             $("input:checkbox").each(function (index) {
                                 $(this).click(function () {                                
                                     if ($(this).is(":checked")) {
                                         $("#ShoppSettle").addClass("ShoppSettleBACK");
                                        // alert("索引是:" + index + ",该商品的数量:" + $(".Number").eq(index-1).val()+"该商品的价格是:"+$("b").eq(index-1).text());
//
                                      

                                         $("#Letter").text(Number($("#Letter").text()) + Number(1)).addClass("h3").css("color", "red");
                                         //价格总和=原来的+新增的！
                                         $("#Prices").text(Number($("#Prices").text()) +Number($("b").eq(index - 1).text()));
                                 //  $("#Prices").text(parseInt(($("." + $(this).val()).eq(index).text())) * ber * $(".Number").eq(index).val()).addClass("h3").css("color", "red");
                                      
                                     } else {
                                         $("input:checkbox").each(function (index) {
                                             if ($(this).is(":checked")) {
                                                 $("#ShoppSettle").addClass("ShoppSettleBACK");
                                             }

                                         });
                                      //   alert("索引是:" + index + ",该商品的数量:" + $(".Number").eq(index - 1).val() + "该商品的价格是:" + $("b").eq(index - 1).text() + "总价" + Number($("#Prices").text()));
                                  $("#Letter").text($("#Letter").text() - 1);

                                  $("#Prices").text(Number(Number($("#Prices").text()) - Number($("b").eq(index - 1).text())));
                                    $("#ShoppSettle").removeClass("ShoppSettleBACK");
                                         $("#Prices").text(" ");
                                     }
                                     //    alert(ber);

                                    
                                 });
                             });
                             $("#Letter").change(function () {

                                alert(0)
                             });

                             /*选择商品后删除所有的商品 ????  或者单个删除！！*/  
                             $("#AllDeletePro").click(function () {
                                 $("input:checkbox").each(function (index) {
                                     $(this).click(function () {
                                         if ($(this).is(":checked")) {
                                             $.post(
                                    "../App_BackgroundProcedure/LC_Shopping.ashx",
                                     {
                                         Shopping: "3", deleteProid: $(this).attr("delete")
                                     },
                                       function (data, state) {
                                           if (state == "success") {
                                               alert("已经发送！");
                                               if (data == "Yes") {
                                                   window.location.reload();  //页面重新刷新
                                               }
                                           } else {
                                           }
                                       });
                                         } else {
                                             alert();
                                         }
                                     });
                                 });
                             });

                             /*购买商品*/  //可以单个购买。可以多个购买

                             var LastProids = new Array();                             
                             $("input:checkbox").click(function () {                                 
                                 if ($(this).is(":checked")) {
                                     var Chexbox = $(this).val();
                                      LastProids[LastProids.length] = Chexbox;
                                    
                                 }
                             });
                             //结算
                             var endpros = "";
                             var AllPrice = "";
                             $("#ShoppSettle").click(function () {

                                 LastProids.sort();  ///先排序！！在比较去掉重复
                                 for (var j = 0; j < LastProids.length; j++) {

                                     if (LastProids[j] == LastProids[j + 1]) {
                                       //  alert("相同的:" + LastProids[j]);
                                     } else {
                                         //数量
                                         AllPrice = AllPrice + $("." + LastProids[j]).next().find("input:text").val() + "*";
                                         //价格
                                         //alert("标签:" + $("." + LastProids[j]).next().prev().text());
                                         endpros = endpros + LastProids[j]+"*";
                                     }
                                 }
                                  //alert(endpros.split('*')[0]);
                                 //发送选择要购买的商品
                                 //数据转化类型失败!!????????????????????      明天 购物车在和后台数据交互的时候完成!  分开权限,!  评价体系!! 
                                 //$.post(
                                 //    "../App_BackgroundProcedure/LC_Payment.ashx",
                                 //     {
                                 //         category: "0", Pay: endpros, Payber: AllPrice
                                 //     },
                                 //       function (data, state) {
                                 //           if (state == "success") {
                                 //               alert("已经发送！");
                                 //               alert(data);       //
                                 if(endpros!=""){
                                  window.location.href = "LC_Payment.aspx?name=" + endpros + "?LC_ProBder=" + AllPrice + "";//传递数量和商品id
                                 }else
                                 {
                                     alert("请选择商品!");
                                 }

                                            //    endpros = "";
                                            //} else {                                              
                                                
                                            //}
                                   //     });
                                 //避免重复提交清空上一次选中的商品ID
                                 endpros = "";
                             });
                            

                         } else {
                         
                         }
                     }
                );
         
            $("#ShooFootPage").find("a").addClass("h5").css("padding-top","2px");
          
         
        });
    </script>




</asp:Content>


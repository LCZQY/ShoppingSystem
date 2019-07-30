<%@ Page Title="" Language="C#" MasterPageFile="~/App_Site/LC_Leitao.Master" AutoEventWireup="true" CodeBehind="LC_My.aspx.cs" Inherits="WebApplication1.App_aspx.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../App_Style/bootstrap.min.css" rel="stylesheet" />  
     <style>
        [class*="col-md"] {
            /*border: red solid thin;*/
        }
     </style>
    <div class="container-fluid" style="border: black solid  thin; height:500px;">
        <div class="row">
            <div class="col-md-12" id="PriameyBody" style="background: rgb(254,230,243); margin-top: .4%; box-shadow: 2px -3px 2px rgb(217, 8, 118);">
                <div class="col-md-3 img-responsive col-md-offset-1">
                    <img src="../../App_Image/LogIngTitle.jpg" class=" pull-left" style="z-index: 1" width="150" />
                    <h3>我的类淘</h3>
                </div>
            </div>
            <div class="row MarginTop" style="margin-top:8%;">
                <div class="col-md-12">
                    <div class="col-md-10  col-md-offset-1" id="body">
                        <div class="col-md-2">
                            <div id="SetshopNav">
                                <ul class="nav nav-pills nav-stacked" id="SetNav">
                                    <li role="presentation" class="active">
                                        <a href="#" class="glyphicon glyphicon-menu-down btn-xs">
                                            <span class="h5">全部功能</span>
                                        </a>
                                    </li>
                                    <li role="presentation" class="disabled"><a href="#" class=" disabled glyphicon glyphicon-menu-down btn-xs">
                                        <span class="h5">购买记录</span>
                                    </a></li>
                                    <li role="presentation" class="disabled"><a href="#" class="glyphicon  glyphicon-menu-down btn-xs">
                                        <span class="h5">收货地址</span>
                                    </a></li>
                                    <li role="presentation" class="disabled">
                                        <a href="#" class="glyphicon glyphicon-menu-down btn-xs">
                                            <span class="h5">我的购物车</span>
                                        </a>
                                    </li>
                                    <li role="presentation" class="disabled" id="BtnMybill">
                                        <a href="#" class="glyphicon glyphicon-menu-down btn-xs">
                                            <span class="h5">修改登录密码</span>
                                        </a>
                                    </li>
                                    <li role="presentation" class="disabled" id="BtnPro">
                                        <a href="#" class="glyphicon glyphicon-menu-down btn-xs">
                                            <span class="h5">修改支付密码</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-10">
                            <div class="col-md-12">
                                <div class="col-md-2">个人账单<span class="badge">1</span></div>
                                <div class="col-md-2">待发货<span class="badge">1</span></div>
                                <div class="col-md-2">待收获<span class="badge">1</span></div>
                                <div class="col-md-2">待评价<span class="badge">2</span></div>
                            </div>
                            <div class="col-md-12">
                                <div class="col-md-12 table-responsive" style="height: 250px;">
                                    <table class="table table-bordered" id="MyWait">
                                        <tr style="background: rgba(128, 128, 128,.2);">
                                            <td>商品</td>
                                            <td>单价</td>
                                            <td>数量</td>
                                            <td>实付款</td>
                                            <td>交易操作</td>
                                        </tr>
                                    </table>
                                    <%--评价页面--%>
                                    <div class="col-md-12" hidden="hidden" id="Myluate">
                                        <div class="col-md-6">商品</div>
                                        <div class="col-md-6">商品评价</div>
                                        <div class="col-md-6" id="commodity" style="margin-top: 5%;">
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-horizontal">
                                                <div class="form-group">
                                                    <span class="glyphicon glyphicon-heart"></span>
                                                    <span class="glyphicon glyphicon-heart"></span>
                                                    <span class="glyphicon glyphicon-heart"></span>
                                                    <span class="glyphicon glyphicon-heart"></span>
                                                    <span class="glyphicon glyphicon-heart"></span>
                                                </div>
                                                <div class="form-group">
                                                    <textarea class="form-control" id="MyluateText" rows="6"></textarea>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <button type="button" id="Mypublish" class="col-md-3  col-lg-offset-3 btn-sm   btn-primary">发表评论</button>
                                        </div>
                                    </div>
                                    <%--评价成功页面--%>
                                    <div class="col-md-12" hidden="hidden" id="LuateSuccees" style="background: rgba(206, 13, 113,.5);">
                                        <div class="col-md-12">
                                            <h3>评价成功</h3>
                                        </div>
                                        <div class="col-md-3  pull-right"><a id="Personage" href="#">查看个人账单</a></div>
                                    </div>
                                    <%--个人账单页面--%>
                                    <div class="col-md-12" id="pagebill" hidden="hidden">
                                        <table class="table table-bordered" id="Billsum">
                                            <tr style="background: rgba(128, 128, 128,.2);">
                                                <td>商品</td>
                                                <td>单价</td>
                                                <td>数量</td>
                                                <td>实付款</td>
                                                <td>消费总额</td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
           
                </div>
    </div>
    </div>
    <script src="../App_Script/jquery-3.1.1.min.js"></script>
    <script src="../App_Script/bootstrap.min.js"></script>
<script>
    $(document).ready(function () {
        //如果存在商品ID,把商品ID给后台发回数据进行标签组合！
        //不存在的话就直接给出所有已购买商品............
       // var fddfdf="?CommID=303022220171019032953*505020171021075106?ProNuber=1*1?Price=4545*110";
        var MyProid = "";
        var MyNunber = "";
        try {
            var MyProid = window.location.search.split('?')[1].split('=')[1];
            var MyNunber = window.location.search.split('?')[2].split('=')[1];
        } catch (el)
        {   //直接打开页面
            $("#MyWait").append("<h1>.................</h1>");
        }
     
        var MyTrtd = ""; //标签组合
        if (MyProid == "") {
            
        }
        else {          
            $.post(
                "../App_BackgroundProcedure/MY.ashx",
                {
                    myproOne: MyProid,myproTwo:MyNunber, My: "0"              
                },
                function (data, state) {
                    if (state == "success") {
                        alert(data);
                        $("#MyWait").append(data);
    
                        $(".MyDelivery").each(function (index) {                
                            if ($(this).attr("class").substr(0, $(this).attr("class").indexOf(" ")) == "NO") {
                                $(".MyDelivery").eq(index).addClass("disabled");
                                $(this).click(function () {
                                    alert("请耐心等待，商家暂未发货......");
                                });
                            } else {
                                alert("收货成功......");
                                $(".MyDelivery").eq(index).removeClass("disabled");
                                $(".MyDelivery").eq(index).addClass("btn-danger").html("马上评价");                                                                                                                                
                            }
                        });
                        //已经发货
                        $(".YES").each(function (index) {                         
                            $(this).click(function () {
                                MyProid = $(this).attr("id"); //把对应商品id的值给到!                               
                                $("#MyWait").hide();
                                $("#commodity").html("<img src='" + $("img[name='YES']").eq(index).attr("src") + "' class='img-responsive pull-left' width='50' />" +
                                                   "<label>" + $("img[name='YES']").eq(index).next().text() + "</label>");
                                $("#Myluate").show();                           
                            })

                        })                      
                     
                    } else {
                        alert("数据发送失败！");
                    }
                })
      
           }
        //  添加评价表数据   【评论表也要该掉只需判断点击的是那个然后给出相应的商品ID即可】
        $("#Mypublish").click(function () {
            if ($("#MyluateText").val() != "") {
                $.post(
                  "../App_BackgroundProcedure/MY.ashx",
                  {
                      Mydiscuss: $("#MyluateText").val(),mypro:MyProid, My: "1"
                  },
                  function (data, state) {
                      if (state == "success") {
                          if (data == "true")
                          {
                              $("#Myluate").hide();
                              $("#LuateSuccees").show();

                              //显示个人账单，罗列该用户所有的购物清单！！按时间排序
                              $("#Personage").click(function () {
                                  
                                  $("#LuateSuccees").hide();
                                  $("#pagebill").show();

                                  $("#Billsum").append(MyTrtd.split(')')[0]+"<td>5454</td></tr>");
                                  $("#BothBtton").css("color","red"); //总额度
                              });
                            
                          }
                              
                      } else {
                      }
                  }
                  );
            } else {
                alert("请输入评价内容！");
                
            }
        })
       
        
    });
</script>
</asp:Content>

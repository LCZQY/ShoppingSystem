<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LC_LogIng.aspx.cs" Inherits="WebApplication1.App_aspx.LC_LogIng" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>类淘网</title>
    <link href="../App_Style/bootstrap.min.css" rel="stylesheet" />         
</head>
<style type="text/css">
    [class*="col-md"] {
        /*border: red solid thin;*/
    }
    * {
        padding: 0;
        margin: 0;
    }
    a {
        text-decoration: none;
    }

    li {
        list-style-type: none;
    }

    #BackgroundImg {
        background-image: url("../App_Image/bjtp.jpg");
        background-repeat: no-repeat;
        background-size: cover;
        width: 100%;
        height: 600px;
    }

    .Mdwidth {
        width: 10%;
    }

    .FromStyle {
        background: rgba(254,241,248,1);
        width: 26%;
        height: 58%;
        margin-right: 8%;
        float: right;
        margin-top: 8%;
    }

    .DivMarginTop {
        margin-top: 10%;
    }

    #submit {
        background: rgba(241,6,132,1);
        line-height: 100%;
        font-weight: bold;
        color: #ffffff;
    }
</style>
<body>
    <div class="container-fluid">
        <div class="row">
          <div class="col-md-12" id="PriameyBody" style="background: rgb(254,230,243); margin-top: .4%; box-shadow: 2px -3px 2px rgb(217, 8, 118);">
                    <div class="col-md-3 img-responsive col-md-offset-1">
                        <img src="../../App_Image/LogIngTitle.jpg" class=" pull-left" style="z-index: 1" width="150" />
                        <h3>用户注册</h3>
                    </div>
                </div> 

            <div class="col-md-12" id="BackgroundImg">
                <form class="form-horizontal  FromStyle">
                    <div class="form-group DivMarginTop">
                        <div class="col-md-4 col-md-offset-1">
                            <h4>密码登录</h4>
                        </div>
                    </div>
                    <div class="form-group">
                        <span class="col-md-1 col-md-offset-1 Mdwidth glyphicon glyphicon-user text-left  btn-lg "></span>
                        <div class="col-md-8">
                            <div class="form-group  has-feedback">
                                <input type="text" class="form-control" id="InputUserPhoneNumber" placeholder="手机号/用户名"
                                    aria-describedby="inputSuccess2Status" />                           
                                <span class="glyphicon glyphicon-remove form-control-feedback"
                                    data-toggle="tooltip"
                                    data-placement="top" data-html="true"
                                    id="NOInputUserPhoneNumber" style="display: none"></span>
                                <span class="sr-only SpanDisplay">(success)</span>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <span class="col-md-1 col-md-offset-1  Mdwidth text-left  glyphicon glyphicon-lock btn-lg"></span>
                        <div class="col-md-8">
                            <div class="form-group has-feedback">
                                <input type="password"  class="form-control"  id="InputUserpasswrod" />
                                <span class="glyphicon glyphicon-remove form-control-feedback "
                                    data-toggle="tooltip"
                                    data-placement="top" data-html="true"
                                    id="NOInputUserpasswrod" style="display: none"></span>
                                <span class="sr-only SpanDisplay">(success)</span>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-10 text-center  col-md-offset-1">
                            <button type="button" id="submit" class="btn btn-default btn-lg form-control">登录</button>
                        </div>
                    </div>
                     <div class="form-group" style="margin-top:10%;">
                        <div class="col-md-10 text-right">
                            <a href="LC_LogIN.aspx" style=" padding-right:-100%; color:gray; opacity:.9;">免费注册</a>
                        </div>
                    </div>
                </form>

            </div>
        </div>
    </div>
    
    
  <footer>

        <div class="container-fluid" style="background:rgba(242, 205, 205,.7);">
            <div class="row"> 
                <div class="col-md-3  text-center">
                    <ul>
                        <li>
                            <img class="pull-left" src="../../App_Image/FootImage/Footercustomer.png" width="20" height="20" />
                            <h6>消费者保障</h6>
                        </li>
                        <li class="FootSize"><a href="#">保障范围</a><a href="#">退货退款流程 </a><a href="#">服务中心</a></li>
                    </ul>
                </div>
                <div class="col-md-3  text-center">
                    <ul>
                        <li>
                            <img class="pull-left" src="../../App_Image/FootImage/Footerhands.png" width="20" height="20" />
                            <h6>新手报到</h6>
                        </li>
                        <li class="FootSize"><a href="#">新手专区</a><a href="#">消费警示 </a><a href="#">交易安全</a></li>
                    </ul>
                </div>
                <div class="col-md-3  text-center">
                    <ul>
                        <li>
                            <img class="pull-left" src="../../App_Image/FootImage/Footerpayment.png" width="20" height="20" />
                            <h6>付款方式</h6>
                        </li>
                        <li class="FootSize"><a href="#">快捷支付</a><a href="#">信用卡 </a><a href="#">余额宝</a><a href="#">蚂蚁花呗</a></li>
                    </ul>
                </div>
                <div class="col-md-3  text-center">
                    <ul>
                        <li>
                            <img class="pull-left" src="../../App_Image/FootImage/Footerleitao.png" width="20" height="20" />
                            <h6>淘宝特色</h6>
                        </li>
                        <li class="FootSize"><a href="#">手机淘宝</a><a href="#">汪汪/汪信 </a><a href="#">大众评审</a></li>
                    </ul>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <ul class="list-inline">
                        <li><a href="http://www.alibabagroup.com/cn/global/home?spm=a21bo.50862.1997523009.1.574a5a14b75jhk">阿里巴巴集团|</a></li>
                        <li><a href="https://www.taobao.com/">淘宝网&nbsp|</a></li>
                        <li><a href="https://www.tmall.com/?spm=a21bo.50862.1997523009.3.574a5a14b75jhkhttps://www.tmall.com/?spm=a21bo.50862.1997523009.3.574a5a14b75jhk">天猫|</a></li>
                        <li><a href="https://ju.taobao.com/">聚划算|</a></li>
                        <li><a href="http://www.vip.com/">唯品会|</a></li>
                        <li><a href="http://www.alibaba.com/?spm=a21bo.50862.1997523009.6.574a5a14b75jhk">阿里巴巴国际交易市场|</a></li>
                        <li><a href="http://www.autonavi.com/?spm=a21bo.50862.1997523009.15.574a5a14b75jhk">高德|</a></li>
                        <li><a href="http://www.gome.com.cn/?cmpid=sem_360_pinpai_yx_logo">国美|</a></li>
                        <li><a href="http://www.suning.com/?utm_source=360&utm_medium=cpc_pinpai&utm_campaign=%E5%93%81%E7%89%8C%E8%AF%8D&utm_content=%E5%93%81%E7%89%8C%E8%AF%8D+%E4%B8%BB%E9%A1%B5&utm_term=u1433130519.c1338163372.g2580219115.k4845921779.a465316124.pz">舒宁易购</a></li>
                        <li><a href="#">支付宝|</a></li>
                        <li><a href="#">优酷|</a></li>
                        <li><a href="#">土豆|</a></li>
                        <li><a href="#">阿里健康|</a></li>
                        <li><a href="#">阿里影业|</a></li>
                        <li><a href="#">阿里体育|</a></li>
                        <li><a href="#">网商银行|</a></li>
                    </ul>
                </div>
            </div>

            <div class="row" style="border-top: gray solid thin; margin-top: 2px;">
                <div class="col-md-12">
                    <%-- --%>
                    <ul class="list-inline">
                        <li><a href="http://www.alibabagroup.com/cn/global/home?spm=a21bo.50862.1997523009.1.574a5a14b75jhk">关于类淘</a></li>
                        <li><a href="https://www.taobao.com/">合作伙伴</a></li>
                        <li><a href="https://www.tmall.com/?spm=a21bo.50862.1997523009.3.574a5a14b75jhkhttps://www.tmall.com/?spm=a21bo.50862.1997523009.3.574a5a14b75jhk">天猫</a></li>
                        <li><a href="https://ju.taobao.com/">联系客服</a></li>
                        <li><a href="http://www.vip.com/">开放平台</a></li>
                        <li><a href="http://www.alibaba.com/?spm=a21bo.50862.1997523009.6.574a5a14b75jhk">诚征英才</a></li>
                        <li><a href="http://www.autonavi.com/?spm=a21bo.50862.1997523009.15.574a5a14b75jhk">高德</a></li>
                        <li><a href="##">&copy2017-9-19老苍----类淘</a></li>
                        <li><a href="##">联系方式:13167874692</a></li>
                        <li><a href="##">QQ:2536156085 微信:sl580230</a></li>
                    </ul>

                </div>
                <div class="col-md-8">                      
                    <ul class="list-inline" id="Master_img">
                           <li>                          
                            <img src="../../App_Image/FootImage/FootSixths.jpg" class="img-responsive" width="35" height="30" /></li>                                          
                        <li>                          
                            <img src="../../App_Image/LC.jpg" class="img-responsive" width="35" height="30" /></li>
                        <li>
                            <img src="../../App_Image/FootImage/FootSend.jpg" class="img-responsive" width="30" height="30" /></li>
                        <li>
                            <img src="../../App_Image/FootImage/FootFourthly.png" class="img-responsive" width="100" height="30" /></li>                      
                          <li>
                            <img src="../../App_Image/FootImage/FootFifth.png" class="img-responsive" width="100" height="30" /></li>
                        <li>
                            <img src="../../App_Image/FootImage/FootThirdly.png" class="img-responsive" width="100" height="30" /></li>
                       
                    </ul>                    
                </div>
            </div>
        </div>
    </footer>
    <script src="../App_Script/jquery-1.4.1.min.js"></script>
    <script src="../App_Script/jquery.min.js"></script>
    <script src="../App_Script/bootstrap.min.js"></script>
     <script type="text/javascript">
          
      $("[data-toggle='popover']").popover();


     
         
         //$("#Twoone").blur(function (e) {

         //    if ($(this).val().length != "") {
         //        hide("#NOTwoone", "hide");
         
         //        $('#NOTwoone').tooltip('hide');
         //    } else {
     
         //        hide("#NOTwoone", "show");
         //        $("#NOTwoone").attr("data-original-title", "<div style>用户名为空</div>");

         //        $('#NOTwoone').tooltip('show');
                
             
         //    }
         //});


      </script>

    

    <script type="text/javascript">
    $("[data-toggle='tooltip']").tooltip(); //提示语句


        $(document).ready(function () {

             // 设置获得焦距事件
            InputKeydown("#InputUserPhoneNumber", "#InputUserpasswrod");
            $("#submit").bind("click", function () {
         
                if ($("#InputUserPhoneNumber").val() != "" && $("#InputUserpasswrod").val() != "") {
                 
                    $.post(
                        "../App_BackgroundProcedure/LC_LogIng.ashx/stin", //登录时的一般处理程序
                        {
                            LogIng: $("#InputUserPhoneNumber").val() + "*" + $("#InputUserpasswrod").val()
                        },
                        function (data, state) {
                            if (state == "success") {
                               //alert("数据是:"+data);
                               
                                if (data == "true") {
                                   
                                    window.location.href = "App_HomePage/LC_HomePage.aspx";
                                } else if (data == "false") {
                                    hide("#NOInputUserpasswrod", "show");
                                    $("#NOInputUserpasswrod").attr("data-original-title", "密码错误");
                                    $('#NOInputUserpasswrod').tooltip('show');

                                    //影藏用户名
                                    $('#NOInputUserPhoneNumber').tooltip('hide');
                                    hide("#NOInputUserPhoneNumber");
                                                                 
                                } else {
                                
                                    hide("#NOInputUserPhoneNumber", "show");
                                    $("#NOInputUserPhoneNumber").attr("data-original-title", "请注册");
                                    $('#NOInputUserPhoneNumber').tooltip('show');

                                    //影藏密码
                                    hide("#NOInputUserpasswrod");
                                    $('#NOInputUserpasswrod').tooltip('hide');
                                    $('#NOInputUserpasswrod').val("");
                                }

                            } else {
                                alert("传值失败！");
                            }
                        }
                       )

                } else {


                    if ($("#InputUserPhoneNumber").val() == "") {

                        hide("#NOInputUserPhoneNumber", "show");
                        $("#NOInputUserPhoneNumber").attr("data-original-title", "用户名？");
                        $('#NOInputUserPhoneNumber').tooltip('show');
                 

                    } if ($("#InputUserpasswrod").val()=="")
                    {
                        hide("#NOInputUserpasswrod", "show");
                        $("#NOInputUserpasswrod").attr("data-original-title", "密码？");
                        $('#NOInputUserpasswrod').tooltip('show');

                    }
                }
            });
            // 移除所有图标
            $("#InputUserPhoneNumber").bind("blur", function () {
               $('#NOInputUserPhoneNumber').tooltip('hide');        
                hide("#NOInputUserPhoneNumber");            
            });
            $("#InputUserpasswrod").bind("blur", function () {

               $('#NOInputUserpasswrod').tooltip('hide');
                hide("#NOInputUserpasswrod");
            });
        


            

        });

        //输入框改变焦距
        function InputKeydown(OldFoucs, NewFoucs) {             
            $(OldFoucs).keydown(function (e) {
              //  alert(e.keyCode);
                if (e.keyCode == "13") {
                    $(NewFoucs).focus();
                }
            });
        }
        /***隐藏图标或者显示****/
        function hide(my,HideOrShow)
        {
            if (HideOrShow == "show") {
                $(my).show();
                $(my).parent().addClass("has-error");
            } else { 
                $(my).hide();
                $(my).parent().removeClass("has-error");
            }
        }
        /*******************js封装类*************/
        //var Person = (function () {
        //    //静态私有属性方法
        //    var home = "China";
        //    function sayHome(name) {
        //        console.log(name + "'s home in " + home);
        //    }
        //    //构造函数
        //    function _person(name, age) {
        //        var _this = this;
        //        //构造函数安全模式，避免创建时候丢掉new关键字
        //        if (_this instanceof _person) {
        //            //共有属性, 方法
        //            _this.name = name;
        //            _this.getHome = function () {
        //                //内部访问私有属性，方法
        //                sayHome(_this.name);
        //            };
        //            _this.test = sayHome; //用于测试
        //            //构造器
        //            _this.setAge = function (age) {
        //                _this.age = age + 12;
        //            }(age);
        //        } else {
        //            return new _person(name, age);
        //        }
        //    }
        //    //静态共有属性方法
        //    _person.prototype = {
        //        constructor: _person,
        //        drink: "water",
        //        sayWord: function () {
        //            console.log("ys is a boy");
        //        }
        //    }
        //    return _person;
        //})();
        //// 调用
        //var p1 = new Person("ys", 12);
        //p1.getHome();                   //ys's home in China
        //console.log(p1.age);            //24     

        //var p2 = Person("ys", 12);
        //p2.getHome();                   //ys's home in China
        //console.log(p2.age);            //24   

        //console.log(p2.test == p1.test);  //true, 证明静态私有变量共享性

        //发送数据
        // function bind(msg, arrt)
        // {             
        //    $.post(
        //        "../App_BackgroundProcedure/LC_LogIng.ashx/stin", //登录时的一般处理程序
        //        {
        //            LogIng:msg
        //        },
        //        function (data, state) {
        //            if (state == "success") {                         
        //                  alert(data);
        //                //arrt[0] = data;  //数组的值已经丢失？？？
        //                //$("#flage").val(data);                    


        //            } else {
        //                alert("传值失败！");
        //            }
        //        }

        //        )
        //}
    </script>

</body>
</html>

<%--             /*************************** 知识点
             localStorage只能存储字符串，如果需要存储对象，首先要转化为字符串。利用JSON.stringify()； 
             var person = {name:”vanida”,”sex”:”girl”,”age”:25}; 
             localStorage.setItem(“person”,JSON.stringify(person)); 
             // localStorage.person=”{“name”:”vanida”,”sex”:”girl”,”age”:25}” 
             //  注意：JSON.stringify()中不要忘了“i”,stringify而不是stringfy！ 
             然后取出person的对象你可以用JSON.parse(); 
             person = JSON.parse(localStorage.getItem(“person”));
             ***************************/
             //设置该对象
             localStorage["name"] = "郑强勇";//在项目没有关闭的时候就一直存在
             localStorage.name = ""; //删除对应的数据
             localStorage.clear(); //清除所有的--%>
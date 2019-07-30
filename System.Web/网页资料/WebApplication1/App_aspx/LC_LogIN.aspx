<%@ Page Title="" Language="C#" MasterPageFile="~/App_Site/LC_Leitao.Master" AutoEventWireup="true" CodeBehind="LC_LogIN.aspx.cs" Inherits="WebApplication1.App_aspx.LC_LogIN" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../App_Style/LC_LogIN_Style.css" rel="stylesheet" />
    <style>
            [class*="col-md"] {
        /*border: red solid thin;*/
    }
        .Strength {
            border: red solid thin;
            width: 60%;
            text-align: left;
            height: 90px;
            margin-right: -55%;
            padding-right: -0%; /* 外边距的问题*/
            background: rgb(128, 128, 128);
            display: none;
        }

        #Rule {
            padding: 0;
        }
            #Rule > li {
                list-style-type: circle;
                padding: 0;
                margin-top: -5%;
            }
        /*密码强度提示*/
        #PasswrodStrength {
            float: left;
            width: 100%;
            text-align: left;
            padding: 0;
            margin: -8% 12%;
        }
            #PasswrodStrength > li {
                border: rgb(245, 192, 220) solid thin;
                float: left;
                background: rgb(245, 192, 220);
                width: 40px;
                height: 10px;
                margin-left: 1%;
            }

      /**菜单头部*/
        #Usetitle {
            border-bottom:rgb(128, 128, 128) solid thin;
            box-shadow:-1px -1px 1px rgb(128, 128, 128);
            margin-top:2%;   
                 
        }
          #Usetitle > div > label {
              
                margin-right:7%;
                color:rgba(243, 178, 178, 0.2);
                font-weight:500;                
            }
  
        .Logbadge {
            background:rgba(243, 178, 178, 0.2);         
           /*background: #51f14f;*/
         
        }
        #SetUserName {
            margin-top:14%;
        }
            #SetUserName > div {
            margin-top:5%;
            }
           .SuccesFont {
       
        }
/*注册成功*/
        #SetUserName {        
           box-shadow: -2px 3px 2px rgb(245, 192, 220), 2px -3px 2px rgb(245, 192, 220), 2px 3px 2px rgb(245, 192, 220), 2px 3px 2px rgb(245, 192, 220);
        }
        #SetAccountMsg {
            box-shadow: -2px 3px 2px rgb(245, 192, 220), 2px -3px 2px rgb(245, 192, 220), 2px 3px 2px rgb(245, 192, 220), 2px 3px 2px rgb(245, 192, 220);
        }
        #Setsucceed{
            margin-top:4%;         
            height:250px;
            box-shadow: -2px 3px 2px rgb(245, 192, 220), 2px -3px 2px rgb(245, 192, 220), 2px 3px 2px rgb(245, 192, 220), 2px 3px 2px rgb(245, 192, 220);
            margin-bottom: 10%;
        }
    </style>

    <section>
        <%--模态框--%>
        <!-- Button trigger modal -->
        <input id="ButtonLoad" type="button" class="btn" data-toggle="modal" data-target="#myModal" style="display: none" />
        <!-- Modal -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <%--模态头部--%>
                    <div class="modal-header">
                        <button type="button" id="Rtrues" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">注册协议</h4>
                    </div>
                    <%--主要内容--%>
                    <div class="modal-body">
                        【审慎阅读】您在申请注册流程中点击同意前，应当认真阅读以下协议。
             <u><strong>请您务必审慎阅读、充分理解协议中相关条款内容，其中包括：<br />
                 1、与您约定免除或限制责任的条款；<br />
                 2、与您约定法律适用和管辖的条款；<br />
                 3、其他以粗体下划线标识的重要条款。
             </strong></u>
                        <br />
                        如您对协议有任何疑问，可向平台客服咨询。<br />
                        <strong>【特别提示】</strong>当您按照注册页面提示填写信息、阅读并同意协议且完成全部注册程序后，即表示您已充分阅读、理解并接受协议的全部内容。如您因平台服务与淘宝发生争议的，适用《淘宝平台服务协议》处理。如您在使用平台服务过程中与其他用户发生争议的，依您与其他用户达成的协议处理。<br />
                        <u><strong>阅读协议的过程中，如果您不同意相关协议或其中任何条款约定，您应立即停止注册程序。</strong></u>
                        <h4>《淘宝平台服务协议》</h4>
                        <h4>《法律声明及隐私权政策》</h4>
                        <h4>《支付宝服务协议》</h4>
                    </div>
                    <%--模态脚--%>
                    <div class="modal-footer">
                        <button id="ModalFooter" type="button" class="btn btn-primary" data-dismiss="modal">同意协议</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="container-fluid  text-center">
            <div class="row">
                <div class="col-md-12" id="PriameyBody" style="background: rgb(254,230,243); margin-top: .4%; box-shadow: 2px -3px 2px rgb(217, 8, 118);">
                    <div class="col-md-3 img-responsive col-md-offset-1">
                        <img src="../../App_Image/LogIngTitle.jpg" class=" pull-left" style="z-index: 1" width="150" />
                        <h3>用户注册</h3>
                    </div>
                </div>         
                <div class="col-md-12" id="Usetitle">
                    <div class="nav navbar-tabs" >
                        <label id="A_Btnname" ><span class="badge Logbadge" >1</span><span>设置用户名</span></label>
                        <label id="A_BtnMsg" ><span class="badge Logbadge">2</span><span>填写账号信息</span></label>
                        <label id="A_BtnSucceed" ><span class="badge Logbadge" id="SuccessBadge" style=" font-size: .1px;"><span class="glyphicon glyphicon-ok"></span></span>注册成功</label>                            
                    </div>
                </div>          
            <div>
                <div class="col-md-6 col-md-offset-3" style="height: 400px;">
                    <%--设置用户名--%>                
                        <form class="form-horizontal" id="SetUserName">
                            <div class="form-group">
                                <label class="col-md-2 control-label">手机号</label>
                                <div class="col-md-8">
                                    <%--has-success 成功！--%>
                                    <div class="form-group  has-feedback">
                                        <div class="col-md-12">
                                        <input type="text" class="form-control" placeholder="请输入11位数手机号"  maxlength="11" id="InputUserPhoneNumber" aria-describedby="inputSuccess2Status" />
                                         </div>
                                        <span class="glyphicon glyphicon-ok form-control-feedback SpanDisplay " 
                                            data-toggle="tooltip"
                                            data-placement=" right" data-html="true"
                                             id="YESInputUserPhoneNumber" style="display: none"></span>
                                        <span class="glyphicon glyphicon-remove form-control-feedback" id="NOInputUserPhoneNumber" style="display: none"></span>
                                        <span class="sr-only SpanDisplay">(success)</span> <%--sr-only:自动调整图标位置--%>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <button type="button" for="buttonyanzhen" id="buttonyanzhen" class="col-sm-1 col-lg-offset-1 control-label   btn btn-default">验证</button>
                                <div class="col-md-8">
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar" id="LogProgreess" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" <%--style="width: 60%;"--%>>                                       
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <button id="BtnUserName" disabled="disabled" type="button" role="tablist" class="col-md-2 col-md-offset-4  btn btn-default">
                                    下一步
                                </button>
                            </div>
                        </form>

                        <%--填写账号信息--%>
                        <form id="SetAccountMsg"  class="form-horizontal" hidden="hidden">
                            <div class="form-group">
                                <div class="col-md-3 col-md-offset-1">登录名<sapn id="LogInNumber">号码</sapn></div>
                            </div>
                            <div class="form-group">
                                <h4 class="col-md-2">设置密码</h4>
                            </div>
                            <div class="form-group">
                                <label class="col-md-2 control-label">登录密码:</label>
                                <div class="col-md-9">
                                    <div class="form-group  has-feedback">                                     
                                        <input type="password" class="form-control"
                                            id="inputPassword1" maxlength="20" placeholder="请设置你的登录密码" />
                                         
                                        <span class="glyphicon glyphicon-ok form-control-feedback SpanDisplay"
                                            data-toggle="tooltip"
                                            data-placement="top" data-html="true"
                                            id="YESinputPassword1" style="display: none;"></span>
                                        <span class="glyphicon glyphicon-remove form-control-feedback"
                                            data-toggle="tooltip"
                                            data-placement="top" data-html="true"
                                            id="NOinputPassword1" style="display: none;"></span>
                                        <span class="sr-only SpanDisplay">(success)</span><%--sr-only:自动调整图标位置--%>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword" class="col-sm-2 control-label">确认密码:</label>
                                <div class="col-md-9">
                                    <div class="form-group  has-feedback">
                                        <%-- has-feedback 字与框合拢一些--%>
                                        <input type="password" class="form-control" id="inputPassword2"
                                            data-toggle="tooltip"
                                            data-placement=" right" data-html="true"
                                            aria-describedby="inputSuccess4Status" placeholder="请再次输入你的密码" />
                                        <span class="glyphicon glyphicon-ok form-control-feedback SpanDisplay"
                                            id="YESinputPassword2" style="display: none;"></span>
                                        <span class="glyphicon glyphicon-remove form-control-feedback"                                    
                                            id="NOinputPassword2" style="display: none;"></span>
                                        <span class="sr-only SpanDisplay">(success)</span> <%--sr-only:自动调整图标位置--%>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <h4 class="col-md-3">设置用户名</h4>
                            </div>
                            <div class="form-group">
                                <label for="inputuser" class="col-sm-2 control-label">用户名:</label>
                                <div class="col-md-9">
                                    <div class="form-group  has-feedback">
                                        <input type="text" class="form-control"                                          
                                            id="InputUserName" placeholder="会员一旦设置成功，无法修改" />
                                        <span class="glyphicon glyphicon-ok form-control-feedback SpanDisplay" id="YESInputUserName" style="display: none;"></span>
                                        <span class="glyphicon glyphicon-remove form-control-feedback"
                                           data-toggle="tooltip"
                                            data-placement="top" data-html="true"
                                             id="NOInputUserName" style="display: none;"></span>
                                        <span class="sr-only SpanDisplay">(success)</span> <%--sr-only:自动调整图标位置--%>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <button id="BtnAccountMsg" type="button" role="tablist" class="col-md-2 col-md-offset-4  btn btn-default">
                                    下一步
                                </button>
                            </div>
                        </form>

                        <%--成功--%>
                        <form class="form-horizontal"  hidden="hidden" id="Setsucceed">
                            <div class="form-group">
                                <div class="col-md-12 text-center">
                                <h3><span class="glyphicon glyphicon-ok "></span>恭喜注册成功,你的账户为:
                                </h3>
                                  </div>                               
                            </div>
                             <div class="form-group col-md-12">
                                 <div class="col-md-12 h4 text-left">
                                     登录名:<span id="SuccendNunber">号码</span>
                                 </div>
                                 <div class="col-md-12 h4 text-left">
                                     类陶会员名:<span id="SuccendName">用户名</span>
                                 </div>
                                </div>
                            <div class="form-group col-md-12 text-right">
                                <a href="LC_LogIng.aspx">返回登录</a>
                            </div>
                        </form>

                 
                </div>
            </div>
        </div>
       </div>
        <%-- <a href="#" data-toggle="tooltip" data-placement="right" title='<span></span>'><span>这激素和i爱</span></a>--%>
    </section>
    <script src="../App_Script/jquery-3.1.1.min.js"></script>
    <script src="../../App_Script/jquery.min.js"></script>
    <script src="../../App_Script/bootstrap.min.js"></script>


    <script type="text/javascript">
        $("[data-toggle='tooltip']").tooltip();
        FontColor("#A_Btnname", ".Logbadge",0);
     
        /*页面一加载就弹出*/
        $("#ButtonLoad").click(function () {
        }).trigger("click");
        $("#Rtrues").click(function () {
            window.location.href = "App_HomePage/LC_HomePage.aspx";
        });
        $(document).ready(function () {
            var i =0;
            /*设置本页面的全局变量，（号码，密码，用户名）用post方法传递到数据库中*/
            var UserPhoneNumber="";
            var UserPasswrod="";
            var UserName="";   
            var passwrod1="";
            /*判断号码*/
            $('#InputUserPhoneNumber').bind(
                {
                    "blur": function () {
                        //号码
                        UserPhoneNumber = $("#InputUserPhoneNumber").val();
                        if (UserPhoneNumber == "") {
                            IocShowOrHide("#InputUserPhoneNumber", "show", "has-error", "#NOInputUserPhoneNumber");
                            Tooltip("show", "#NOInputUserPhoneNumber", "请输入手机号");
                            IocShowOrHide("#InputUserPhoneNumber", "hide", "has-success", "#YESInputUserPhoneNumber");
                            i = 0;
                        } else {

                            if (isPhoneNo(UserPhoneNumber) ==false) {

                                IocShowOrHide("#InputUserPhoneNumber", "show", "has-error", "#NOInputUserPhoneNumber");
                                Tooltip("show", "#NOInputUserPhoneNumber", "手机号格式不正确");
                                IocShowOrHide("#InputUserPhoneNumber", "hide", "has-success", "#YESInputUserPhoneNumber");
                                i = 0;
                            } else {
                                //成功之后就不提示  
                                IocShowOrHide("#InputUserPhoneNumber", "hide", "has-error", "#NOInputUserPhoneNumber");
                                Tooltip("hide", "#NOInputUserPhoneNumber", "");
                                IocShowOrHide("#InputUserPhoneNumber", "show", "has-success", "#YESInputUserPhoneNumber");
                                i = 1;

                                /*进度条*/
                                $("#buttonyanzhen").click(function () {
                                    var j = 10;
                                    var Times = window.setInterval(function () {
                                        j += 10
                                        $("#LogProgreess").css("width", j + "%");
                                        $("#LogProgreess").text(j + "%");
                                        if (j== 100) {
                                            $("#BtnUserName").removeAttr("disabled");
                                            $("#buttonyanzhen").attr("disabled", "disabled");
                                            window.clearInterval(Times);
                                        }
                                    }, 100)

                                });
                            }
                        }
                    }
                });
            /*自动跳转特效*/
            $("#BtnUserName").bind({
                "click": function () {
                    $("#A_BtnMsg").attr("href", "#SetAccountMsg");
                    //输入正确直接跳转
                    if (i == 1) {                               
                        $.post(
                            "../App_BackgroundProcedure/LC_HLogIN.ashx",
                             {
                                 Variate: UserPhoneNumber, Number: "1"
                             },
                               function getBack(data, state) {
                                   if (state == "success") {
                                   
                                       if (data == "true") {
                                           alert("亲！你已注册，可直接登录！");

                                           $("input:text").val(" ");
                                           IocShowOrHide("#InputUserPhoneNumber", "hide", "has-success", "#YESInputUserPhoneNumber");
                                           $("#LogProgreess").css("width", 0 + "%").text("");
                                        
                                       } else {                                    
                                           $("#SetUserName").hide();
                                           $("#SetAccountMsg").show();
                                           FontColor("#A_BtnMsg", ".Logbadge", 1);
                                           i = 0;
                                       }
                                   }
                                   else {
                                       alert("传值失败！");
                                   }
                               }
                        );                                                           
                    }
                    //把号码赋值给下一步的提示
                    $("#LogInNumber").text(UserPhoneNumber);          
                }
            });

            /*判断密码*/
         
            $('#inputPassword1').bind({
                "blur": function () {
                    //设置密码
                    passwrod1 = $('#inputPassword1').val();

                    if (passwrod1 == "") {
                        IocShowOrHide("#inputPassword1", "show", "has-error", "#NOinputPassword1");
                        Tooltip("show", "#NOinputPassword1", "请设置密码");
                        IocShowOrHide("#inputPassword1", "hide", "has-success", "#YESinputPassword1");
                        i = 0;
                    } else {
                        //判断密码的正确性
                        if (passwrod1.length < 6) {
                            IocShowOrHide("#inputPassword1", "show", "has-error", "#NOinputPassword1");
                            Tooltip("show", "#NOinputPassword1", "密码须6-20个长度");
                            IocShowOrHide("#inputPassword1", "hide", "has-success", "#YESinputPassword1");
                            i = 0;
                        }
                        else {
                            i = 1;
                            IocShowOrHide("#inputPassword1", "show", "has-success", "#YESinputPassword1");
                            ///*密码的强弱*/
                            if (passwrod1.length >= 6 && passwrod1.length < 7 && Match(passwrod1, "0") == true) {
                                
                                Tooltip("show", "#YESinputPassword1", "密码强度:弱");  //显示正确的提示
                                IocShowOrHide("#inputPassword1", "hide", "has-error", "#NOinputPassword1");
                                Tooltip("hide", "#NOinputPassword1", "");                              //隐藏错误的提示                              
                            }                    
                            if (passwrod1.length >= 7 && passwrod1.length < 14 &&  Match(passwrod1,"2") == true)
                            {                                                 
                                Tooltip("show", "#YESinputPassword1","密码强度:中");
                                IocShowOrHide("#inputPassword1", "hide", "has-error", "#NOinputPassword1");
                                Tooltip("hide", "#NOinputPassword1", "");
                            }
                            if (passwrod1.length >= 14 && passwrod1.length <= 20 && Match(passwrod1,"2") == true) {
                           
                                Tooltip("show", "#YESinputPassword1", "密码强度:强");
                                IocShowOrHide("#inputPassword1", "hide", "has-error", "#NOinputPassword1");
                                Tooltip("hide", "#NOinputPassword1", "");
                            }                     
                        }                        
                       
                    }
                }             
            });
         
            /*判断重新录入密码*/
            $('#inputPassword2').bind({
                "blur": function () {                                                 
                    //重复密码
                    UserPasswrod = $("#inputPassword2").val();
                    if (UserPasswrod == "") {
                        IocShowOrHide("#inputPassword2", "show", "has-error", "#NOinputPassword2");
                        Tooltip("show", "#NOinputPassword2", "请设置密码");
                        IocShowOrHide("#inputPassword2", "hide", "has-success", "#YESinputPassword2");
                        i = 0;
                    } else {

                        if (passwrod1 != UserPasswrod) {
                            IocShowOrHide("#inputPassword2", "show", "has-error", "#NOinputPassword2");
                            Tooltip("show", "#NOinputPassword2", "密码错误");
                            IocShowOrHide("#inputPassword2", "hide", "has-success", "#YESinputPassword2");
                            i = 0;
                        } else {
                            IocShowOrHide("#inputPassword2", "show", "has-success", "#YESinputPassword2");                  
                            IocShowOrHide("#inputPassword2", "hide", "has-error", "#NOinputPassword2");
                            Tooltip("hide", "#NOinputPassword2", "");
                            i = 1;
                        }
                    }
                }
            });
            
      //用户名不为空
            $("#InputUserName").bind("blur", function () {
                UserName = $(this).val();
                if (UserName == "") {
                    IocShowOrHide("#InputUserName", "show", "has-error", "#NOInputUserName");
                    Tooltip("show", "#NOInputUserName", "请设置用户名");
                    IocShowOrHide("#InputUserName", "hide", "has-success", "#YESInputUserName");
                    i = 0;
                } else {
                    i = 1;                                     
                }
            });           
            $("#BtnAccountMsg").click(function () {
                if (i == 1) {
                    //alert(i)
                    //判断用户名是否重复
                    $.post(
                              "../App_BackgroundProcedure/LC_HLogIN.ashx",
                               {
                                   Variate: UserName, Number: "2"
                               },
                                 function getBack(data, state) {
                                     if (state == "success") {
                                         alert(data);
                                         if (data == "true") {
                                             IocShowOrHide("#InputUserName", "show", "has-error", "#NOInputUserName");
                                             Tooltip("show", "#NOInputUserName", "用户名已存在,请重新输入");
                                             IocShowOrHide("#InputUserName", "hide", "has-success", "#YESInputUserName");
                                             i = 0;
                                         } else {
                                             IocShowOrHide("#InputUserName", "hide", "has-error", "#NOInputUserName");
                                             IocShowOrHide("#InputUserName", "show", "has-success", "#YESInputUserName");
                                             Tooltip("hide", "#NOInputUserName", "");
                                             i = 1;
                                         }
                                     }
                                 });
                    //提交所有数据
                    if (i == 1) {
                        var msg = UserPhoneNumber + "*" + UserPasswrod + "*" + UserName;
                        //alert("我要传送的是:" + msg);
                         bind(msg, "3");
                        $("#SuccendNunber").text(UserPhoneNumber).addClass("h4").css("color", "red");
                        $("#SuccendName").text(UserName).addClass("h4").css("color", "red");;
                        $("#SetAccountMsg").hide();
                        $("#Setsucceed").show();
                        FontColor("#A_BtnSucceed", ".Logbadge", 2);
                    }
                } else {
                    IocShowOrHide("#inputPassword1", "show", "has-error", "#NOinputPassword1");    
                    IocShowOrHide("#inputPassword1", "hide", "has-success", "#YESinputPassword1");

                    IocShowOrHide("#inputPassword2", "show", "has-error", "#NOinputPassword2");
                    IocShowOrHide("#inputPassword2", "hide", "has-success", "#YESinputPassword2");

                    IocShowOrHide("#InputUserPhoneNumber", "show", "has-error", "#NOInputUserPhoneNumber");  
                    IocShowOrHide("#InputUserPhoneNumber", "hide", "has-success", "#YESInputUserPhoneNumber");

                    IocShowOrHide("#InputUserName", "show", "has-error", "#NOInputUserName");                 
                    IocShowOrHide("#InputUserName", "hide", "has-success", "#YESInputUserName");
                }
                });
         


     });

        
        //**提示语句的隐藏或显示*/
        /// ID:显示ID
        /// HideOrShow:影藏或者显示
        /// iocID:图标ID
        /// Title: 提示语句
        function Tooltip(HideOrShow,iocID,Title)
        {
            if (HideOrShow == "show") {
                //alert(0);
                $(iocID).attr("data-original-title", Title);
                $(iocID).tooltip("show");
        
            } else {
                $(iocID).tooltip("hide");
                $(iocID).attr("data-original-title","");
            }
        }

        /***隐藏图标或者显示****/
        /// my: ID
        /// HideOrShow:隐藏或者显示
        /// SuccOrError: 父元素是正确还是错误
        /// ioc:图标是正确还是错误
        function IocShowOrHide(my, HideOrShow,SuccOrError,ioc) {
            if (HideOrShow == "show") {               
                $(my).parent().addClass(SuccOrError);
                $(ioc).show();                
            } else {         
                $(my).parent().removeClass(SuccOrError);
                $(ioc).hide();                
            }
        }
 
         /*还是要想办法把这些数据放在.cs文件中*/
         /*实现异步判断 $.POST()*/
            ///msg:传递的数据
            ///VariateNumber : 数据个数
            function bind(msg, VariateNumber) {        
                $.post(
                    "../App_BackgroundProcedure/LC_HLogIN.ashx",
                     {
                         Variate: msg, Number: VariateNumber
                     },
                       function getBack(data, state) {
                           if (state == "success") {
                               //alert(data);                                                       
                           }
                           else {
                               alert("传值失败！");
                           }
                       }
                );         
            }
        /*正则判断密码*/
            function Match(strings,nunber)                
            {             
                ///     //全数字  
                if (nunber == "0") {
                    //  pattern_d.exec(strings);
                    var pattern_d = /^\d+$/;
                    return pattern_d.test(strings);
                }// //全字符  
                else if (nunber == "1") {
                    var pattern_s = /^[A-Za-z]+$/
                    return pattern_s.test(strings);
                }
                    //数字或者字符  
                else if (nunber == "2") {
                    var pattern_w = /^\w+$/;
                    return pattern_w.test(strings);
                }
                else {
                    var pattern_W = /^\W+$/             //全非数字也非字符  
                    return pattern_W.test(strings);
                }
                //var pattern_r = /^\w+\W+[\w\W]*\w+$/    //以字母或者数字开头结尾的字符串                  
            }
        /*手机号判断*///test()方法 判断字符串中是否匹配到正则表达式内容，返回的是boolean值 ( true / false )
            function isPhoneNo(phone) {
                var pattern = /^1[34578]\d{9}$/;
                return pattern.test(phone);    
            }
            
        /*步骤字体的颜色*/
            function FontColor(Btnname, Logbadge,index) {
                $(Btnname).addClass("h3").css({
                    "color": "rgb(34,34,34)",
                    "border-bottom": "rgb(217, 8, 118) solid 2px"
                });
                $(Logbadge).eq(index).css("background", "rgb(217, 8, 118)");         
            }
    </script>
</asp:Content>

      <%-- 
          
    <script>                  
        /*提示框*/
        //$("[data-toggle='popover']").popover();
        //$("[data-toggle='popover']").popover('hide'); //影藏
        //$("[data-toggle='popover']").popover('show'); //显示
        /******************************************     
         //属性:
         $("[data-toggle='popover']").popover('show'); //显示
         $("[data-toggle='popover']").popover('hide'); //影藏
         $("[data-toggle='popover']").popover('toggle');  //切换
         //事件
       
         $('#mypopover').on('show.bs.popover', function () {
             // 执行一些动作...  //当调用 show 实例方法时立即触发该事件 
         })
    
         $('#mypopover').on('shown.bs.popover', function () {
              执行一些动作..//.当弹出框对用户可见时触发该事件（将等待 CSS 过渡效果完成）。
         })
      
         $('#mypopover').on('hide.bs.popover', function () {
             // 执行一些动作...   //当调用 hide 实例方法时立即触发该事件。
         })
        //当工具提示对用户隐藏时触发该事件（将等待 CSS 过渡效果完成）。
         $('#mypopover').on('hidden.bs.popover', function () {
             // 执行一些动作...
         })
         ********************************/


        /*****弹出框
        *****/
        $(function () {

            $(function () { $("[data-toggle='tooltip']").tooltip(); });
        });

   
    </script>
          
          
          
           function bind_function(msg) {
            alert("已经被调用!");
            var chongfu = "";
            $.ajax({
                type: "post",
                contentType: "application/json;utf-8",
                url: "../App_BackgroundProcedure/LC_HLogIN.ashx/ReiterationPhone",
                dateType: "json",
                success: function (result) {
                    alert("这个数据是:" + result.d);
                },
                error: function (msg) {
                    alert("失败！");
                    //alert(msg);
                }
            });

            //$.post(
            //    "../App_BackgroundProcedure/LC_HLogIN.ashx/" + Function,
            //     {
            //         Variate: msg, Number: VariateNumber
            //     },
            //       function getBack(data, state) {
            //           if (state == "success") {
            //               alert("这个数据是:"+data);
            //               chongfu=data;
            //           }
            //           else {
            //               alert("获取失败！");
            //           }
            //       }
            //);
            return chongfu;
        }

        (function () {
            /* 前台数据发送到后台文件时，可能是找不到其路径*/
            //function bind(msg) {
            //    $.ajax({
            //        type: "get",//数据发送的方式（post 或者 get）
            //        url: "/",//要发送的后台地址
            //        data: { val1: msg },//要发送的数据（参数）格式为{'val1':"1","val2":"2"}
            //        dataType: "json",//后台处理后返回的数据格式
            //        success: function (data) {//ajax请求成功后触发的方法
            //            alert('请求成功');
            //        },
            //        error: function (msg) {//ajax请求失败后触发的方法
            //            alert("失败！");
            //            // alert(msg);//弹出错误信息
            //        }
            //    });
            //}
        })();--%>
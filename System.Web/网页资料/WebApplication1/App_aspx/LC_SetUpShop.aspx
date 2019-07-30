<%@ Page Title="" Language="C#" MasterPageFile="~/App_Site/LC_Leitao.Master" AutoEventWireup="true" CodeBehind="LC_SetUpShop.aspx.cs" Inherits="WebApplication1.App_aspx.LC_SetUpShop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../App_Style/bootstrap.min.css" rel="stylesheet" />
    <%--引用日历插件css--%>
    <link href="../App_Style/Calendar_Css/dcalendar.picker.css" rel="stylesheet" />
    <link href="../App_Style/Calendar_Css/zzsc.css" rel="stylesheet" />
    <%--引用bootrsap文件插件css--%>
    <link href="../App_Style/Files_css/fileinput.css" rel="stylesheet" />
    <link href="../App_Style/Files_css/fileinput.min.css" rel="stylesheet" />
    <style>
        [class*="col-md"] {
            /*border: red solid thin;*/
        }
        #body {
            margin-top: 3%;
        }

        #Tep {
            width: 100%;
        }

        #Tep > span {
                color: #ffffff;
                font-size: 150px;
       }

            #Tep > div {
                /*background: rgba(216, 14, 121,.5);*/
                background: rgb(243, 178, 178);
                float: left;
                width: 200px;
                margin-right: 2.3%;
                height: 50px;
                border-top-right-radius: 2em;
                border-bottom-right-radius: 2em;
            }

               #Tep > div > span {
                    color: #ffffff;
                    font-size: 30px;
                    font-weight: bold;
                    float: left;
                }

        .MarginTop {
            margin-bottom: 3%;
        }

        /*步骤一*/
        #content {
        }

        #content_one {
            border: #ffffff solid thin;
            width: 100%;
            height: 285px;
        }

        #UserImage > span {
            transform: scale(3);
            float: left;
            margin: 10% 43%;
            border-radius: 3.5em;
            background: rgb(252, 248, 227);
            color: rgba(34,34,34,.8);
        }

        #fonts {
            width: 45%;
            margin: 30% 22%;
        }

        #TepFrist {
            margin-top: 6%;
        }
        /*步骤三*/
        #content_three {
            width: 100%;
            height: 300px;
            margin-left: -2.5%;
        }

        #SetshopFont {
        }

        #table {
            margin-top: 5%;
            height: 220px;
        }

        #LastStepSeend {
            margin: 0 8%;
        }

        #TepLast {
            margin-left: 49%;
        }

        /*子导航*/
        #NavLeftSon {
            border: red solid thin;
            margin-top: 10%;
            width: 45%;
            height: 280px;
            line-height: 50px;
        }

        .Mybill, .Pro {         
            margin-bottom: 2%;
        }
        /*模态框*/

        /*左侧导航*/
        #SetshopNav {
           
           
            width: 500px;
        }
        /**/
        #SetNav {
         border:rgb(0,0,0) solid thin;
            width: 24.9%;
            float: left;
        }

            #SetNav > li {
                border-bottom: gray solid thin;
                box-shadow: 1px 1px 1px rgb(0,0,0);
                margin-bottom: 10%;
            }

      #SetNav > li > div {
              
                }

     .LeftNavGray > a {
            font-size: 12px;
            color: gray;
        }

     .ico {
            margin-left: 22%;
        }

        #Showdows {
            box-shadow: -2px 3px 2px rgb(0,0,0),
                 2px -3px 2px rgb(0,0,0),
                 2px 3px 2px rgb(0,0,0),
                 2px 3px 2px rgb(0,0,0);
        }
        #SetshopBody,#IndentBBody{
          box-shadow: -2px 2px 2px rgb(0,0,0),
                 2px -2px 2px rgb(0,0,0),
                 2px 2px 2px rgb(0,0,0),
                 2px 2px 2px rgb(0,0,0);
        }
   
/**左侧导航*/
        .Pro {
         width:120px;
         height:30px;
        }
        #LeftNavGray {                   
        }
/**头部导航*/
        #Master_nav>li>a {   
        width:120%;
        text-align:center;
        
        }

    </style>

    <section>    
    <div class="container-fluid" style="border: black solid  thin;">
            <div class="row">
                <div class="col-md-12" id="PriameyBody" style="background: rgb(254,230,243); margin-top: .4%; box-shadow: 2px -3px 2px rgb(217, 8, 118);">
                    <div class="col-md-3 img-responsive col-md-offset-1">
                        <img src="../../App_Image/LogIngTitle.jpg" class=" pull-left" style="z-index: 1" width="150" />
                        <h3>卖家中心</h3>
                    </div>
                </div>
                <div class=" MarginTop">            
                <div class="col-md-12 panel panel-warning">
                    <div class="panel-heading"></div>
                    <div class="col-md-10  col-md-offset-1" id="body">
                        <div class="panel-body">
                            <div class="col-md-2">
                                <div id="SetshopNav">                                                                                                  
                                    <ul class="nav nav-pills nav-stacked" id="SetNav">
                                        <li role="presentation" class="active">
                                            <a href="#">免费开店<span class="ico glyphicon glyphicon-menu-down"></span></a>                                       
                                        </li>
                                        <li role="presentation" id="BtnMybill">
                                            <a href="#" id="personage">个人账单<span class="ico glyphicon glyphicon-menu-down"></span></a>
                                            <div class="LeftNavGray   text-center"  hidden="hidden" id="LeftNavGray">                                                                                           
                                            </div>
                                             <div class="LeftNavGray Mybill  text-center" hidden="hidden">
                                                <a href="#">支出</a>
                                                <a href="#">收入</a>
                                                <a href="#">余额</a>
                                            </div>
                                        </li>

                                        <li role="presentation" id="BtnPro">
                                            <a href="#" id="SetProAdmin" class="Pro">商品管理<span class="ico glyphicon glyphicon-menu-down"></span></a>
                                            <div class="LeftNavGray   text-center"  hidden="hidden" id="SetLeft">                                                                                           
                                            </div>
                                                <ul style="margin:0;padding:0;border:0; " hidden="hidden"  id="ProNvaSon" >
                                                    <li><a href="#" id="TodayIndent">今日订单</a></li>
                                                    <li><a href="#" id="IssuePro">发布商品</a></li>
                                                    <li><a href="#">正在销售</a></li>
                                                </ul>
                                        </li>
                                        <li role="presentation" class="disabled"><a href="#">店铺管理<span class="ico glyphicon glyphicon-menu-down"></span></a></li>
                                        <li role="presentation" class="disabled"><a href="#">交易管理<span class="ico glyphicon glyphicon-menu-down"></span></a></li>
                                        <li role="presentation" class="disabled"><a href="#">物流管理<span class="ico glyphicon glyphicon-menu-down"></span></a></li>
                                    </ul>
                                </div>
                            </div>                                               
                            <%--开店--%>
                            <div class="col-md-8 col-lg-offset-1" id="SetshopBody">
                                <div class="pull-left " id="Tep">
                                    <div class="col-md-2"><span>1</span>个人店铺</div>
                                    <div class="col-md-2"><span>2</span>开店须知</div>
                                    <div class="col-md-2"><span>3</span>申请认证</div>
                                </div>
                                <%--步骤一--%>
                                <div class="col-md-12" id="Content">
                                    <div id='content_one'>
                                        <div id="UserImage"><span class="glyphicon glyphicon-user btn-lg"></span></div>
                                        <ul id="fonts">
                                            <li>通过支付宝个人实名认证的商家创建的店铺, 就是个人店铺。</li>
                                            <li class="text-center">
                                                <button type="button" id="TepFrist" class="btn btn-primary">创建个人账户</button></li>
                                        </ul>
                                    </div>
                                    <ul id='content_two' hidden="hidden">
                                        <li>
                                            <p>
                                                <strong>1、我在淘宝已经开了个店了，我用别人的身份证再开一个店可以吗？</strong><br />
                                                答：不可以。未经淘宝平台同意，将本人淘宝账号提供给他人作开店使用，否则由此导致相关争议、诉讼及因店铺经营中的违法违规行为导致一切人身、财产权益损害，均由本人自行承担全部民事、行政及刑事责任。
                                            </p>
                                        </li>
                                        <li>
                                            <p>
                                                <strong>2、我可以把店铺转租给其他人吗?</strong><br />
                                                答：不可以。未经淘宝平台同意，将本人淘宝账号提供给他人作开店使用，否则由此导致相关争议、诉讼及因店铺经营中的违法违规行为导致一切人身、财产权益损害，均由本人自行承担全部民事、行政及刑事责任。
                                            </p>
                                        </li>
                                        <li>
                                            <p>
                                                <strong>3、开淘宝店要收费吗?</strong><br />
                                                答：淘宝开店是免费的，不收取任何服务费用。
                                            </p>
                                        </li>
                                        <li>
                                            <p>
                                                <strong>4、我已经开过淘宝店，现在想要注销原来的店铺重新开店，可以吗?</strong><br />
                                                答：不可以，淘宝暂时不提供注销店铺的服务。用户一但成功开店就无法再用身份证（营业执照）另开一家淘宝店铺。
                                            </p>
                                        </li>
                                        <li>
                                            <button type='button' id="LastStepFrist" class='btn btn-default pull-left'>上一步</button>
                                            <button type='button' id="TepSeecend" class='btn btn-primary pull-right'>我已经了解,继续开店</button>
                                        </li>
                                    </ul>
                                    <div id="content_three" hidden="hidden">
                                        <div class="col-md-12 table-responsive">
                                            <table class="table  table-hover" id="table">
                                                <tr>
                                                    <th colspan="2" class="text-center h3">绑定收款账户</th>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="form-group">
                                                            <label for="inputEmail" class="col-md-2  text-right control-label">支付账号</label>
                                                            <div class="col-md-10 has-feedback">
                                                                <input type="text" class="form-control" id="PayNumber" placeholder="请输入支付宝账号" />
                                                                <span class="glyphicon glyphicon-remove form-control-feedback" id="NOPayNumber" style="display: none;"></span>
                                                                <span class="sr-only SpanDisplay">(success)</span>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="form-group">
                                                            <label for="inputEmai2" class="col-md-2  text-right control-label">支付密码</label>
                                                            <div class="col-md-10 has-feedback">
                                                                <input type="password" class="form-control" id="PaymentCode" placeholder="请设置支付密码" />
                                                                <span class="glyphicon glyphicon-remove form-control-feedback" id="NOPaymentCode" style="display: none;"></span>
                                                                <span class="sr-only SpanDisplay">(success)</span>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="form-group">
                                                            <label for="inputEmai3" class="col-md-2  text-right control-label">确认密码</label>
                                                            <div class="col-md-10 has-feedback">
                                                                <input type="password" class="form-control" id="SubmitPaymentCode" placeholder="请确认密码" />
                                                                <span class="glyphicon glyphicon-remove form-control-feedback" id="NOSubmitPaymentCode" style="display: none;"></span>
                                                                <span class="sr-only SpanDisplay">(success)</span>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <button type='button' id="LastStepSeend" class='btn btn-default pull-left'>上一步</button>
                                                        <button type="button" id="TepLast" class="btn btn-primary ">提交并确认申请</button><br />
                                                    </td>

                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="App_HomePage/LC_HomePage.aspx" class="pull-right">返回主页</a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                           
                            <%--上传商品--%>
                            <div id="IssueProBody" hidden="hidden">                                                              
                                    <div class="col-md-10" id="Showdows">
                                        <div class="form-group">
                                            <label for="mc" class="col-md-2 control-label">商品名称:</label>
                                            <div class="col-md-4 has-feedback">
                                                <input type="text" id="ProName" class="form-control input-sm" placeholder="请输入商品名称" />
                                                <span class="glyphicon glyphicon-remove form-control-feedback" id="NOProName" style="display: none;"></span>
                                                <span class="sr-only SpanDisplay">(success)</span>
                                            </div>

                                            <label for="kz" class="col-md-2 control-label">库存:</label>
                                            <div class="col-md-4 has-feedback">
                                                <input type="text" id="ProRepertory" placeholder="请输入商品库存量" class="form-control input-sm" />
                                                <span class="glyphicon glyphicon-remove form-control-feedback" id="NOProRepertory" style="display: none;"></span>
                                                <span class="sr-only SpanDisplay">(success)</span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="lb" class="col-md-2 control-label">商品类别:</label>
                                            <div class="col-md-4 ">
                                                <select class="form-control input-sm" data-placeholder="请选择" id="PitchUpOne">
                                                    <option></option>
                                                    <%=OpetionsFather %>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label for="ID" class="col-md-2 control-label">二级类别:</label>
                                                <div class="col-md-4">
                                                    <select class="form-control input-sm" data-placeholder="请选择" id="PitchUpTwo">
                                                    </select>
                                                </div>
                                            </div>


                                            <div class="form-group">
                                                <label for="cbj" class="col-md-2 control-label">成本价:</label>
                                                <div class="col-md-4 has-feedback">
                                                    <input type="text" id="ProCostPrice"  placeholder="请输入商品成本价"  class="form-control input-sm" />
                                                    <span class="glyphicon glyphicon-remove form-control-feedback"   id="NOProCostPrice" style="display: none;"></span>
                                                    <span class="sr-only SpanDisplay">(success)</span>
                                                </div>
                                                <div class="form-group">
                                                    <label for="xsj" class="col-md-2 control-label">销售价:</label>
                                                    <div class="col-md-4 has-feedback">
                                                        <input type="text" id="ProSellPrice"   placeholder="请输入商品销售价"  class="form-control input-sm" />
                                                        <span class="glyphicon glyphicon-remove form-control-feedback"  id="NOProSellPrice"  style="display: none;"></span>
                                                        <span class="sr-only SpanDisplay">(success)</span>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label for="ms" class="col-md-2 control-label">商品描述:</label>
                                                <div class="col-md-4 has-feedback">
                                                    <input type="text" id="ProDescribe" placeholder="请输入商品描述 " class="form-control input-sm" />
                                                    <span class="glyphicon glyphicon-remove form-control-feedback" id="NOProDescribe" style="display: none;"></span>
                                                    <span class="sr-only SpanDisplay">(success)</span>
                                                </div>
                                                <label for="ID" class="col-md-2 pull_left control-label">卖家姓名:</label>
                                                <div class="col-md-4 has-feedback">
                                                    <input type="text" id="SeelProName" placeholder="卖家姓名只设置一次哦" class="form-control input-sm" />
                                                    <span class="glyphicon glyphicon-remove form-control-feedback" id="NOSeelProName" style="display: none;"></span>
                                                    <span class="sr-only SpanDisplay">(success)</span>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="zt" class="col-md-2 control-label">商品状态:</label>
                                                <div class="col-md-4 ">
                                                    <select name="seton" class="form-control input-sm">
                                                        <option>上架</option>
                                                    </select>
                                                </div>
                                                <label for="Time" class="col-md-2 control-label">上架时间:</label>
                                                <div class="col-md-4 zzs c-container has-feedback">
                                                    <input id='mydatepicker2' name="time"   placeholder="请选择上架时间" class="form-control input-sm" type='text' />
                                                    <span class="glyphicon glyphicon-remove form-control-feedback" id="NOmydatepicker2" style="display: none;"></span>
                                                    <span class="sr-only SpanDisplay">(success)</span>
                                                </div>
                                            </div>
                               </div>
                                        <form <%--id="ShowimgUploadFile" --%> class="col-md-12" <%--enctype="multipart/form-data"--%>>                                            
                                            <div class="form-group">
                                                <label for="zst" class="col-md-2 control-label">
                                                    <label id="Talk" data-toggle="popoverOne" data-container="body" data-content="亲，展示图最多1张哦">展示图: </label>
                                                </label>
                                                <div class="col-md-10">
                                                    <input id="ShowImage" type="file" name="shows" multiple="multiple" class="file file-loading input-sm" 
                                                        data-show-caption="true" data-overwrite-initial="true" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="xxt" class="col-md-2 control-label">
                                                    <label id="TalSk" data-toggle="popoverTwo" data-container="body" data-content="亲，详细图最多4张哦">详细图:</label>
                                                </label>
                                                <div class="col-md-12">
                                                    <input id="model_file" name="model_file" class="file-loading file input-sm" data-show-caption="true" data-overwrite-initial="true" type="file"  multiple="multiple" />
                                                </div>                                                
                                            </div>
                                            <div class="form-group">
                                                <div class="col-md-12">
                                                    <button type="button" id="UploadingPro" class="btn btn-danger btn-sm">保存确认上传</button>
                                                </div>
                                            </div>
                                         <%--  <input type="file" name="model_file" id="model_file" multiple class="file-loading" />--%>
                                        </form>
                                    </div>
                          </div>
               
                        
                            <%--今日订单--%>
                            <div class="col-md-10" id="IndentBBody" hidden="hidden">
                                  <div class="col-md-12  table-responsive" >
                                      <table style="width: 100%;" class="table table-hover text-center" id="IndentTable">
                                          <tr>
                                              <th>顾客用户名</th>
                                              <th>商品信息</th>                         
                                              <th>购买数量</th>
                                              <th>价格</th>                                     
                                              <th>收件人姓名</th>
                                              <th>地址</th>
                                              <th>号码</th>
                                              <th>发货</th>
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
     <div class="modal fade" id="myModa2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <%--模态头部--%>
                    <div class="modal-header">
                        <button type="button" id="Rtrues" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">开店申中....</h4>
                    </div>
                    <%--主要内容--%>
                    <div class="modal-body">
                        <p>我们将在一个工作日内进行审核.请耐心等待.....</p>
                    </div>
                    <%--模态脚--%>
                    <div class="modal-footer">
                        <button id="ModalFooter" type="button" class="btn btn-primary" data-dismiss="modal">确定</button>
                    </div>
                </div>
            </div>
        </div>        
    </section>
    <script src="../App_Script/jquery1.11.0.js"></script>
        <%--引用上传文件form插件JS--%>
    <script src="../App_Script/bootstrap.min.js"></script>
    <%--引用日历插件JS--%>
    <script src="../App_Script/Calendar_JS/dcalendar.picker.js"></script>

    <%--引用bootsrap文件插件JS--%>
    <script src="../App_Script/Files_JS/fileinput.js"></script>
    <script src="../App_Script/Files_JS/fileinput_locale_zh.js"></script>

   
 


 
 <script>    
       
     /**************----------Bootstrap文件上传------------***********/
     //详细图   
             var control = $("#model_file");
             var uploadrul = '../App_BackgroundProcedure/IssuePro.ashx';
             var upObj = {
                 language: 'zh', //设置语言
                 uploadUrl: uploadrul, //上传的地址
                 uploadExtraData: { "savepath": "/App_Image/" },//上传至服务器的参数，非常重要
                 allowedFileExtensions: ['jpg', 'png'],//接收的文件后缀
                 showUpload: true, //显示批量上传按钮
                 showCaption: false,//是否显示标题
                 browseClass: "btn btn-primary", //按钮样式
                 dropZoneEnabled: true,//是否显示拖拽区域
                 maxFileSize: 4096,//单位为kb，如果为0表示不限制文件大小
                 minFileCount: 0,
                 maxFileCount: 4,
                 msgSizeTooLarge: " \"{name}\" 大小为({size} KB) 最大文件大小为 {maxSize} KB.请重新上传!",//文件的实际大小有些许偏差
                 enctype: 'multipart/form-data',
                 validateInitialCount: true,
                 previewFileIcon: "<i class='glyphicon glyphicon-king'></i>",
                 msgFilesTooMany: "选择上传的文件数量({n}) 超过允许的最大数值{m}！",
                 allowedPreviewTypes: ['image']//能够预览的文件类型，如果不限制。文件预览时可能很慢
             };
             control.fileinput(upObj);

             //导入文件上传成功之后的事件
             $("#model_file").on("fileuploaded", function (event, data, previewId, index) {
                 alert(data);
             });
             //导入文件上传失败之后的事件
             $('#model_file').on('fileuploaderror', function (event, data, msg) {
               //  var msg = data;
                // alert(event);
             });
     
    
     //展示图 
         var control = $("#ShowImage");
         var uploadrul = '../App_BackgroundProcedure/IssuePro.ashx';
         var upObj = {
             language: 'zh', //设置语言
             uploadUrl: uploadrul, //上传的地址
             uploadExtraData: { "savepath": "/App_Image/" },//上传至服务器的参数，非常重要
             allowedFileExtensions: ['jpg', 'png'],//接收的文件后缀
             showUpload: true, //显示批量上传按钮
             showCaption: false,//是否显示标题
             browseClass: "btn btn-primary", //按钮样式
             dropZoneEnabled: false,//是否显示拖拽区域
             maxFileSize: 4096,//单位为kb，如果为0表示不限制文件大小
             minFileCount: 0,
             maxFileCount: 1,
             msgSizeTooLarge: " \"{name}\" 大小为({size} KB) 最大文件大小为 {maxSize} KB.请重新上传!",//文件的实际大小有些许偏差
             enctype: 'multipart/form-data',
             validateInitialCount: true,
             previewFileIcon: "<i class='glyphicon glyphicon-king'></i>",
             msgFilesTooMany: "选择上传的文件数量({n}) 超过允许的最大数值{m}！",
             allowedPreviewTypes: ['image']//能够预览的文件类型，如果不限制。文件预览时可能很慢
         };
         control.fileinput(upObj);

         //导入文件上传成功之后的事件
         $("#ShowImage").on("fileuploaded", function (event, data, previewId, index) {
             alert("上传成功！");
         });
         //导入文件上传失败之后的事件
         $('#ShowImage').on('fileuploaderror', function (event, data, msg) {
             var msg = data;
             alert(event);
         });   
  
    /**************-------------------------------******************/


          

            /*日历插件*/
            $('#mydatepicker').dcalendarpicker();
            $('#mydatepicker2').dcalendarpicker({
                format: 'yyyy-mm-dd'
            });
            $('#mycalendar').dcalendar();

            /*********************//***********图标的显示/***********//***********//***********//***********/
            var i = 0;
            //商品名称
            $("#ProName").blur(function () {
                if ($(this).val() == "") {
                    IocShowOrHide("#ProName", "show", "has-error", "#NOProName");
                    i = 0;
                } else {
                    i = 1;
                    IocShowOrHide("#ProName", "hide", "has-error", "#NOProName");
                }
            });
            //库存
            $("#ProRepertory").blur(function () {
                if ($(this).val() == "") {
                    IocShowOrHide("#ProRepertory", "show", "has-error", "#NOProRepertory");
                    i = 0;
                } else {
                    i = 1;
                    IocShowOrHide("#ProRepertory", "hide", "has-error", "#NOProRepertory");
                }
            });
            // 成本价   
            $("#SeelProName").blur(function () {
                if ($(this).val() == "") {
                    IocShowOrHide("#SeelProName", "show", "has-error", "#NOSeelProName");
                    i = 0;
                } else {
                    i = 1;
                    IocShowOrHide("#SeelProName", "hide", "has-error", "#NOSeelProName");
                }
            });
            //销售价   
            $("#ProCostPrice").blur(function () {
                if ($(this).val() == "") {
                    IocShowOrHide("#ProCostPrice", "show", "has-error", "#NOProCostPrice");
                    i = 0;
                } else {
                    i = 1;
                    IocShowOrHide("#ProCostPrice", "hide", "has-error", "#NOProCostPrice");
                }
            });
            $("#ProSellPrice").blur(function () {
                if ($(this).val() == "") {
                    IocShowOrHide("#ProSellPrice", "show", "has-error", "#NOProSellPrice");
                    i = 0;
                } else {
                    i = 1;
                    IocShowOrHide("#ProSellPrice", "hide", "has-error", "#NOProSellPrice");
                }
            });
            //商品描述
            $("#ProDescribe").blur(function () {
                if ($(this).val() == "") {
                    IocShowOrHide("#ProDescribe", "show", "has-error", "#NOProDescribe");
                    i = 0;
                } else {
                    i = 1;
                    IocShowOrHide("#ProDescribe", "hide", "has-error", "#NOProDescribe");
                }
            });

            /********************发布商品*************************/
     /*商品类别*/
            var arrt = new Array();
            var SonPro;
            var FileFaters;
            $("#PitchUpOne").change(function () {
                FileFaters = $(this).val();
                $.post(
                           "../App_BackgroundProcedure/IssuePro.ashx",
                           {
                               filenames: FileFaters, Distinguish: "0"
                           },
                           function (data, state) {
                               //alert(data);
                               if (state == "success") {
                                   arrt = data.split('*');
                                   SonPro = "<option></option>";
                                   for (var i = 0; i < arrt.length; i++) {
                                       SonPro += "<option>" + arrt[i] + "</option>";
                                   }
                                   $("#PitchUpTwo").html(SonPro);
                               } else {
                                   alert("失败！");
                               }
                           }
                  );
            });

/*上传所有商品信息*/
            var SonImages = "";
            $("#UploadingPro").bind("click", function () {
                alert("这个数值是:"+$("#ShowImage").val());
                if ($("#ShowImage").val() == "" || $("#model_file").val()=="")
                {
                    alert("请输入完整信息！");                 
                    return false;
                }
                var msg = $("#ProName").val() + "*" + $("#ProRepertory").val() + "*" +
                          $("#ProCostPrice").val() + "*" + $("#ProSellPrice").val() + "*" +
                          $("#ProDescribe").val() + "*" + $("#SeelProName").val() + "*" +
                          FileFaters + "*" + $("#mydatepicker2").val();
                alert(msg);
                $.post(
                  "../App_BackgroundProcedure/IssuePro.ashx",
                  {
                      uploadPRO: msg, Distinguish: "1"
                  },
                  function (data, state) {
                      if (state == "success") {
                         // alert(data);
                          if (data == "SucceesImage") {
                              alert("恭喜！上传商品成功！");
                              $("input:text").val(" ");
                          }
                      } else {
                          alert("失败！");
                      }
                  });


            });

            //提示框
            $("[data-toggle='popover']").popover('hide');
            PopoverShow("#ShowImage", "popoverOne");
            PopoverShow("#MinutesImage", "popoverTwo");



        /***隐藏图标或者显示****/
        /// my: ID
        /// HideOrShow:隐藏或者显示
        /// SuccOrError: 父元素是正确还是错误
        /// ioc:图标是正确还是错误
        function IocShowOrHide(my, HideOrShow, SuccOrError, ioc) {
            if (HideOrShow == "show") {
                $(my).parent().addClass(SuccOrError);
                $(ioc).show();
            } else {
                $(my).parent().removeClass(SuccOrError);
                $(ioc).hide();
            }
        }
        //提示显示方法
        function PopoverShow(poverID, poverName) {
            $(poverID).bind({
                "click": function () {
                    $("[data-toggle='" + poverName + "']").popover('show');
                },
                "change": function () {
                    $("[data-toggle='" + poverName + "']").popover('hide');
                }
            });

        }

     //区分上传文件作用域
        function UploadFile() {         
            $.post(
                     "../App_BackgroundProcedure/IssuePro.ashx",
                     {
                         Distinguish: "2"
                     },
                     function (data, state) {
                         //alert(data);
                         if (state == "success") {

                         } else {
                             alert("失败！");
                         }
                     });
        }
 </script>      


 <script>       
        $(document).ready(function () {

            /***页面一加载的时候我就要判断该用户的权限！*****/
            $.post(
          "../App_BackgroundProcedure/LC_SetUpShop.ashx",
           {
               Shopping: "0"
           },
             function getBack(data, state) {
                 if (state == "success") {
                     //alert(data);
                     if (data == "buy") {
                         $(".Pro").click(function () {
                             $("#SetshopBody").hide();
                             $("#IssueProBody").show();
                             alert("我的可爱的亲,请先申请成为卖家哦！");
                         });
                         $("#WantSetshop").click(function () {
                             $("#IssueProBody").hide();
                             $("#SetshopBody").show();
                         });
                     } else if (data == "sell") {
                         $("#IssuePro").click(function () {
                             $("#SetshopBody").hide();
                             $("#IssueProBody").show();

                         });
                         $("#WantSetshop").click(function () {
                             $("#IssueProBody").hide();
                             $("#SetshopBody").show();
                         });
                     }
                 }
                 else {
                     alert("传值失败！");
                 }
             }
        );

        /**************************权限判断**************************/
            //左边导航
            ///// 商品管理
            $("#SetProAdmin").mouseover(function () {                
                $("#SetLeft").show();          
                $("#SetLeft").mousemove(function () {
                    $("#SetLeft").show();
                })
            }).mouseleave(function () {
                $("#SetLeft").hide();
            });
            //个人账单
            $("#personage").mouseover(function () {
                $("#LeftNavGray").show();
                $("#LeftNavGray").mousemove(function () {
                    $("#LeftNavGray").show();
                })
            }).mouseleave(function () {
                $("#LeftNavGray").hide();
            });

            $("#LeftNavGray").html($(".Mybill").html());
            $("#SetLeft").html($("#ProNvaSon").html());
            /**************************今日订单****/
            $("#TodayIndent").click(function () {
                $("#SetshopBody").hide();
                $("#IndentBBody").show();
                $("#IssueProBody").hide();
                $.post(

                "../App_BackgroundProcedure/MY.ashx",
                 {
                     My: "2"
                 },
                   function getBack(data, state) {
                       if (state == "success") {
                           alert(data);
                           $("#IndentTable").append(data);
                           /**************************确认发货***/
                           $(".Immediately").each(function (index) {
                               $(this).click(function () {

                                   var UPdateProID = $(this).eq(index).parent().attr("class");
                                   $.post(  //已经发货
                                      "../App_BackgroundProcedure/MY.ashx",
                                       {
                                           My: "3", UPdateconsignment: UPdateProID
                                       },
                                         function getBack(data, state) {
                                             if (state == "success") {
                                                 alert(data);
                                                 if (data != "") {
                                                     $(".Immediately").eq(index).parent().parent().hide(500)
                                                 }
                                             }
                                         }
                                        );
                               });
                           });
                       }
                       else {
                           alert("传值失败！");
                       }
                   }
            );
            });
            /*********************商品发布*************/
            $("#IssuePro").click(function () {
                $("#IndentBBody").hide();'0-0000'
                $("#SetshopBody").hide();
                $("#IssueProBody").show();
            });
            
            /*改变权限开始！！！*/
            /*鼠标离开判断是否输入正确*/
            InputBlur("SubmitPaymentCode", "PaymentCode", "passwrod");
            InputBlur("PayNumber","text");
            InputBlur("PaymentCode","text");       
            $("#TepLast").bind({
                "click": function () {
                    if (($("#PayNumber").val() == "" && $("#PaymentCode").val() == "" && $("#SubmitPaymentCode").val() == "") || ($("#PayNumber").val() == "" || $("#PaymentCode").val() == "" || $("#SubmitPaymentCode").val() == "")) {
                            
                        //显示错误
                        PayShow("#PayNumber", "#NOPayNumber");
                        PayShow("#PaymentCode", "#NOPaymentCode");
                        PayShow("#SubmitPaymentCode", "#NOSubmitPaymentCode");
                    }
                    else if ($("#PaymentCode").val() != $("#SubmitPaymentCode").val()) {
                        PayShow("#SubmitPaymentCode", "#NOSubmitPaymentCode");
                    } else {
                        bind($(".NAVname").find("a").text().split(':')[1]+ "*" + $("#PayNumber").val() + "*" + $("#SubmitPaymentCode").val());
                    }
                }
            });
          

            //得到焦点影藏所有
            InputFous("PayNumber");
            InputFous("PaymentCode");
            InputFous("SubmitPaymentCode");



            $("#Tep").find("div:eq(1)").css("background", "rgba(243, 178, 178,.2)");
            $("#Tep").find("div:eq(2)").css("background", "rgba(243, 178, 178,.2)");
            //上一步
            $("#LastStepFrist").bind("click", function () {
                $("#content_one").show();
                $("#content_two").hide();
                $("#content_three").hide();
                $("#Tep").find("div:eq(1)").css("background", "rgba(243, 178, 178,.2)");
            });

            $("#LastStepSeend").bind("click", function () {
                $("#content_one").hide();
                $("#content_two").show();
                $("#content_three").hide();
                $("#Tep").find("div:eq(2)").css("background", "rgba(243, 178, 178,.2)");
            });
            //下一步
            $("#Tep").find("div:eq(0)").css("background", "rgb(243, 178, 178)");
            $("#TepFrist").bind("click", function () {
                ///$("#Content").load("AjaxLoad.aspx #ajax_content");
                $("#content_one").hide();
                $("#content_two").show();
                $("#Tep").find("div:eq(1)").css("background", "rgb(243, 178, 178)");
            });
            $("#TepSeecend").bind("click", function () {
                $("#content_one").hide();
                $("#content_two").hide();
                $("#content_three").show();
                $("#Tep").find("div:eq(2)").css("background", "rgb(243, 178, 178)");
            });




        



            /*重新设定《退出》栏*/
            $(".Eixt").find("span").find("a").attr("href", "#");
            $(".pu_right").bind("click", function () {
                $(this).find("a").attr("href", "LC_LogIng.aspx");
            });


         



        });
     

        //显示错误
        function PayShow(Id, Eroor) {
            $(Id).parent().addClass("has-error");
            $(Eroor).show();
        }
        //得到焦点隐藏所有!
        function InputFous(ID) {
            $("#" + ID).focus(function () {
                PayHidden(this, "#NO" + ID, null);
            });
        };
        //隐藏所有
        function PayHidden(Id, Eroor, Success) {
            $(Id).parent().removeClass("has-error");
            $(Id).parent().removeClass("has-success");
            $(Eroor).hide();
            $(Success).hide();
        }
        //失去焦点后显示所有
        function InputBlur(Id_one, Id_two, Judge) {
            if (Judge == "passwrod") {
                $("#" + Id_one).blur(function () {
                    if ($(this).val() != $("#" + Id_two).val()) {
                        PayShow("#" + Id_one, "#NO" + Id_one);
                    }
                    if ($(this).val() == "") {
                        PayShow("#" + Id_one, "#NO" + Id_one);
                    }
                });
            } else {
                $("#" + Id_one).blur(function () {
                    if ($(this).val() == "") {
                        PayShow("#" + Id_one, "#NO" + Id_one);
                    }
                });
            }

        }

       //当他点击后 设定一个信号！！把用户给管理员审核！！        
      //方法二: 给一般处理程序，存入cookies          
 
        function bind(msg) {
            $.post(
                "../App_BackgroundProcedure/LC_SetUpShop.ashx",
                 {
                     Variate: msg
                 },
                   function getBack(data, state) {
                       if (state == "success") {
                          /// alert(data);
                           //window.location.href = "APP_Administrator/Administrator.aspx";                      
                           alert("申请中.....");
                           window.location.reload();
                       }
                       else {
                           alert("传值失败！");
                       }
                   }
            );
        }


    </script>
</asp:Content>
<%--/*对上传文件框进行分型*/
            /**********HTML5控制文件上传格式
                 accept//上传指定后缀名文件                
                 <input id="fileId1" type="file" accept="image/png,image/gif" name="file" />
multile//上传多文件
                 <input id="fileId2" type="file" multiple="multiple" name="file" />
**********/
            //$("#BtnMybill").bind({
            //    "mouseover": function () {
            //        $("#NavLeftSon").show();
            //        /*左边导航问题？？*/
            //        //$("#NavLeftSon").mouseover(function () {
            //        //    $("#NavLeftSon").show();
            //        //    $(".Mybill").show();
            //        //}).mouseleave(function () {
                      
            //        //    $("#NavLeftSon").hide();
            //        //    $(".Mybill").hide();
            //        //});
            //        //$(".Mybill").mouseenter(function () {
            //        //    $(".Mybill").show();
            //        //}).mouseleave(function () {
            //        //    $(".Mybill").hide();
            //        //})

            //    },
            //    "mouseleave": function () {
            //        $("#NavLeftSon").hide();


            //    }

            //});--%>

<%--     // 模态框向左移动问题！！
            //(function () {
            //    var Modal = {};
            //    //解决Modal弹出时页面左右移动问题
            //    Modal.adjustBody_beforeShow = function () {
            //        var body_scrollHeight = $('body')[0].scrollHeight;
            //        var docHeight = document.documentElement.clientHeight;
            //        if (body_scrollHeight > docHeight) {
            //            $('body').css({
            //                'overflow': 'hidden',
            //                'margin-right': '15px'
            //            });
            //            $('.modal').css({ 'overflow-y': 'scroll' })
            //        } else {
            //            $('body').css({
            //                'overflow': 'auto',
            //                'margin-right': '0'
            //            });
            //            $('.modal').css({ 'overflow-y': 'auto' })
            //        }
            //    }
            //    Modal.adjustBody_afterShow = function () {
            //        var body_scrollHeight = $('body')[0].scrollHeight;
            //        var docHeight = document.documentElement.clientHeight;
            //        if (body_scrollHeight > docHeight) {
            //            $('body').css({
            //                'overflow': 'auto',
            //                'margin-right': '0'
            //            });
            //        } else {
            //            $('body').css({
            //                'overflow': 'auto',
            //                'margin-right': '0'
            //            });
            //        }
            //    }
            //    $('#addAppModal').modal('hide');
            //    $('#addAppModal').on('show.bs.modal', function (event) {
            //        Modal.adjustBody_beforeShow();
            //    });
            //    $('#addAppModal').on('hidden.bs.modal', function (event) {
            //        Modal.adjustBody_afterShow();
            //    });
            //})();--%>

<%--<script>--%>
<%-- //$("#showsss").fileinput({
    //    uploadUrl: seend.aspx,//上传的地址
    //    uploadAsync: false, //默认异步上传
    //    showUpload: false, //是否显示上传按钮,跟随文本框的那个
    //    showRemove: true, //显示移除按钮,跟随文本框的那个
    //    showCaption: true,//是否显示标题,就是那个文本框
    //    showPreview: true, //是否显示预览,不写默认为true
    //    dropZoneEnabled: false,//是否显示拖拽区域，默认不写为true，但是会占用很大区域
    //    minImageWidth: 50, //图片的最小宽度
    //    minImageHeight: 50,//图片的最小高度
    //    //maxImageWidth: 1000,//图片的最大宽度
    //    //maxImageHeight: 1000,//图片的最大高度
    //    //maxFileSize: 0,//单位为kb，如果为0表示不限制文件大小
    //    //minFileCount: 0,
    //    maxFileCount:4, //表示允许同时上传的最大文件个数
    //    //enctype: 'multipart/form-data',
    //    validateInitialCount: true,
    //    previewFileIcon: "<i class='glyphicon glyphicon-king'></i>",
    //    msgFilesTooMany: "选择上传的文件数量({n}) 超过允许的最大数值{m}！",
    //    allowedFileTypes: ['image', 'text'],//配置允许文件上传的类型
    //    allowedPreviewTypes: ['image', 'text'],//配置所有的被预览文件类型
    //    allowedPreviewMimeTypes: ['jpg', 'png', 'gif', 'txt'],//控制被预览的所有mime类型
    //    language: 'zh'
    //});
     /****************************************/     
        // 文件上传方法  【只能单个上传】  
        //function AjaxSubmit() {
        //    alert("上传文件中");
        //    //1: ajaxSubmit()是 在jquery-form.js中的方法,在form中传送数据
        //    //2: 要在input:file中添加name属性
        //    //3:该方法只能够上传文件若是文字还的使用POST
        //    $("#ShowimgUploadFile").ajaxSubmit({
        //        success: function (str) {
        //            alert("后台接收数据是:" + str);
        //        },
        //        data: {
        //            Distinguish: "2",
        //        },
        //        error: function (error) { alert(error); },
        //        url: '../App_BackgroundProcedure/IssuePro.ashx', /*设置post提交到的页面*/
        //        type: "post", /*设置表单以post方法提交*/
        //        dataType: "text" /*设置返回值类型为文本*/
        //    });
        //}
        /***********************************************/

      ///*上传详细图要是否点击了删除,而且还要判断是否重复？？？？*/
            //var i = 0;
            //var SonImages = "";
            //$("#MinutesImage").change(function () {   /// 判断文件大小！！                 
            //    /******************************************/
            //    i++;
            //    filess = $(this).val();
            //    var suffix = filess.substr(filess.indexOf(".") + 1, filess.length - filess.indexOf(".") - 1);
            //    if (filess.indexOf('.') > 0 && (suffix == "jpg" || suffix == "png" || suffix == "gif")) {
            //        //只能上传前四张
            //        if (i < 6) {
            //            // SonImages += filess.split('\\')[2] + "_"; //只要文件名字
            //            //  console.log(SonImages);
            //            // AjaxSubmit();
            //            alert("详细图上传中...." + filess);
            //            $("#ShowimgUploadFile").ajaxSubmit({
            //                success: function (str) {
            //                    alert("后台接收数据是:" + str);
            //                },
            //                data: {
            //                    Distinguish: "2"
            //                },
            //                error: function (error) { alert(error); },
            //                url: '../App_BackgroundProcedure/IssuePro.ashx', /*设置post提交到的页面*/
            //                type: "post", /*设置表单以post方法提交*/
            //                dataType: "text" /*设置返回值类型为文本*/
            //            });
            //        }
            //    }
            //});
    
    
    
    
    --%>

<%--<=script>--%>

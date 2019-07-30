<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LC_CS.aspx.cs" Inherits="WebApplication1.LC_CS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../App_Style/bootstrap.min.css" rel="stylesheet" />
</head>
<body>    
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
                            <div id="IssueProBody"<%-- hidden="hidden"--%>>                                                              
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
                                                   <%-- <%=OpetionsFather %>--%>
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


                                        <form id="ShowimgUploadFile" class="col-md-10" enctype="multipart/form-data">
                                            <div class="form-group">
                                                <label for="zst" class="col-md-2 control-label">
                                                    <label id="Talk" data-toggle="popoverOne" data-container="body" data-content="亲，展示图最多1张哦">展示图: </label>
                                                </label>
                                                <div class="col-md-10">
                                                    <input id="ShowImage" type="file" name="shows" multiple="multiple" class="file input-sm" data-show-remove="true"
                                                        data-show-upload="false" data-show-caption="true" data-overwrite-initial="true" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="xxt" class="col-md-2 control-label">
                                                    <label id="TalSk" data-toggle="popoverTwo" data-container="body" data-content="亲，详细图最多4张哦">详细图:</label>
                                                </label>
                                                <div class="col-md-12">
                                                    <input id="MinutesImage" name="Minutes" class="file input-sm" type="file" data-upload-url="#" multiple="multiple" data-show-remove="true" data-show-upload="false" data-show-caption="true" data-overwrite-initial="true"
                                                        data-preview-file-type="any" data-max-file-count="4" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-md-12">
                                                    <button type="button" id="UploadingPro" class="btn btn-danger btn-sm">保存确认上传</button>
                                                </div>
                                            </div>
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
    <script src="../App_Script/jquery-form.js"></script>  
    <script>

        $(document).ready(function () {
            /********************上传图片详细图**********************/
            var i = 0;
            var SonImages = "";
            $("#MinutesImage").change(function () {   /// 判断文件大小！！                 

                i++;
                filess = $(this).val();
                var suffix = filess.substr(filess.indexOf(".") + 1, filess.length - filess.indexOf(".") - 1);
                if (filess.indexOf('.') > 0 && (suffix == "jpg" || suffix == "png" || suffix == "gif")) {
                    //只能上传前四张
                    if (i < 6) {
                        // SonImages += filess.split('\\')[2] + "_"; //只要文件名字
                        //  console.log(SonImages);
                        // AjaxSubmit();
                        alert("详细图上传中...." + filess);
                        $("#ShowimgUploadFile").ajaxSubmit({
                            success: function (str) {
                                alert("后台接收数据是:" + str);                               
                            },
                            data: {
                                Distinguish: "2"
                            },
                            error: function (error) { alert(error); },
                             url: 'App_BackgroundProcedure/IssuePro.ashx', /*设置post提交到的页面*/                          
                            type: "post", /*设置表单以post方法提交*/
                            dataType: "text" /*设置返回值类型为文本*/
                        });
                    }
                  
                }
            });


        });
    </script>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="App_Style/bootstrap.min.css" rel="stylesheet" />
    <link href="App_Style/Files_css/fileinput.css" rel="stylesheet" />
    <link href="App_Style/Files_css/fileinput.min.css" rel="stylesheet" />
</head>
<body>

        <div class="container-fluid">
            <div class="row">
                <div class="col-md-8  col-md-offset-2">
                    <%--上传商品--%>
                    <div class="col-md-10" id="IssueProBody">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="ID" class="col-md-2 control-label">商品ID:</label>
                                <div class="col-md-4">
                                    <input type="text" class="form-control  input-sm" <%--placeholder="请输入支付宝账号"--%> />
                                    <span class="glyphicon glyphicon-remove form-control-feedback" style="display: none;"></span>
                                    <span class="sr-only SpanDisplay">(success)</span>
                                </div>
                                <div class="form-group">
                                    <label for="mc" class="col-md-2 control-label">商品名称:</label>
                                    <div class="col-md-4">
                                        <input type="text" class="form-control input-sm" <%--placeholder="请输入支付宝账号"--%> />
                                        <span class="glyphicon glyphicon-remove form-control-feedback" style="display: none;"></span>
                                        <span class="sr-only SpanDisplay">(success)</span>
                                    </div>
                                </div>
                            </div>


                            <div class="form-group">
                                <label for="lb" class="col-md-2 control-label">商品类别:</label>
                                <div class="col-md-4">
                                    <select class="form-control input-sm" id="PitchUpOne">
                                        <option></option>
                                        <%=OpetionsFather %>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="ID" class="col-md-2 control-label">二级类别:</label>
                                    <div class="col-md-4">
                                        <select class="form-control input-sm" id="PitchUpTwo">
                                        </select>
                                    </div>
                                </div>

                            </div>


                            <div class="form-group">
                                <label for="cbj" class="col-md-2 control-label">成本价:</label>
                                <div class="col-md-4">
                                    <input type="text" class="form-control input-sm" />
                                    <span class="glyphicon glyphicon-remove form-control-feedback" style="display: none;"></span>
                                    <span class="sr-only SpanDisplay">(success)</span>
                                </div>
                                <div class="form-group">
                                    <label for="xsj" class="col-md-2 control-label">销售价:</label>
                                    <div class="col-md-4">
                                        <input type="text" class="form-control input-sm" />
                                        <span class="glyphicon glyphicon-remove form-control-feedback" style="display: none;"></span>
                                        <span class="sr-only SpanDisplay">(success)</span>
                                    </div>
                                </div>
                            </div>


                            <div class="form-group">
                                <label for="kz" class="col-md-2 control-label">库存:</label>
                                <div class="col-md-4">
                                    <input type="text" class="form-control input-sm" />
                                    <span class="glyphicon glyphicon-remove form-control-feedback" style="display: none;"></span>
                                    <span class="sr-only SpanDisplay">(success)</span>
                                </div>
                                <div class="form-group">
                                    <label for="ms" class="col-md-2 control-label">商品描述:</label>
                                    <div class="col-md-4">
                                        <input type="text" class="form-control input-sm" />
                                        <span class="glyphicon glyphicon-remove form-control-feedback" style="display: none;"></span>
                                        <span class="sr-only SpanDisplay">(success)</span>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="zt" class="col-md-2 control-label">商品状态:</label>
                                <div class="col-md-4">
                                    <select class="form-control input-sm">
                                        <option></option>
                                        <option>上架</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="Time" class="col-md-2 control-label">上架时间:</label>
                                    <div class="col-md-4 zzsc-container">
                                        <input id='mydatepicker2' class="form-control input-sm" type='text' />
                                    </div>
                                </div>
                            </div>                
                <form id="form1" action="Handler3.ashx" method="post" enctype="multipart/form-data">

                            <div class="form-group">
                                <label for="zst" class="col-md-3 control-label">上传商品展示图:</label>
                                <div class="col-md-12">
                                    <input id="file-1" type="file" multiple="multiple" class="file input-sm" data-show-upload="false" data-show-caption="true" data-overwrite-initial="true" data-min-file-count="4"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="xxt" class="col-md-3 control-label">上传商品详细图:</label>
                                <div class="col-md-12">
                                 <input id="showsss" class="file input-sm" type="file" multiple="multiple" data-show-upload="False" data-preview-file-type="any" data-upload-url="Handler3.ashx" data-max-file-count="2"/>
                                </div>
                            </div>
                    </form>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <button type="button" id="UploadingPro" class="btn  btn-primary btn-sm">确认上传</button>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
  
    <script src="App_Script/jquery.min.js"></script>
   <%-- <script src="App_Script/bootstrap.min.js"></script>--%>
    <script src="App_Script/Files_JS/fileinput.js"></script>
    <script src="App_Script/Files_JS/fileinput_locale_zh.js"></script>
    <script src="App_Script/Files_JS/JavaScript1.js"></script>
    <script src="App_Script/jquery-form.js"></script>
</body>
</html>
<script>
    $(document).ready(function () {
        $("#UploadingPro").click(function () {
            alert(0);
            $("#showsss").val(null);
        });
        $("#showsss").change(function () {
            $("#form1").ajaxSubmit({

                success: function (str) {
                    alert("后他数据是:" + str);
                    $(".gorms").html(str);
                },
                error: function (error) { alert(error); },
                url: 'Handler3.ashx', /*设置post提交到的页面*/
                type: "post", /*设置表单以post方法提交*/
                dataType: "text" /*设置返回值类型为文本*/
            });


        })
       
    

        //初始化文件控件
        //   $("#file-1").fileinput({
        //    language: 'zh', //设置语言
        //    uploadUrl: "/FileUpload/Upload", //上传的地址
        //    allowedFileExtensions: ['jpg', 'png', 'gif'],//接收的文件后缀,
        //    maxFileCount: 100,
        //    enctype: 'multipart/form-data',
        //    showUpload: false, //是否显示上传按钮
        //    showCaption: false,//是否显示标题
        //    browseClass: "btn btn-primary", //按钮样式             
        //    previewFileIcon: "<i class='glyphicon glyphicon-king'></i>",
        //    msgFilesTooMany: "选择上传的文件数量({n}) 超过允许的最大数值{m}！",
        //});


        var arrt = new Array();
        var SonPro;
        $("#PitchUpOne").change(function () {
            $.post(
                      "Handler1.ashx",
                      {
                          filenames: $(this).val()
                      },
                      function (data, state) {
                          if (state == "success") {

                              arrt = data.split('*');
                              SonPro = "<option></option>";
                              for (var i = 0; i < arrt.length; i++) {
                                  // alert(arrt[i]);                                     
                                  SonPro += "<option>" + arrt[i] + "</option>";
                              }
                              $("#PitchUpTwo").html(SonPro);                                                                                          
                                      
                          } else {
                              alert("失败！");
                          }
                      }
             );

        });
    });
</script>
<%--//var arr = new Array();
        //var i = 0;
        //$("#ShowImage").change(function () {
        //    arr[i] = $(this).val()            
        //    i++;
        //});

    
        //$("#UPload_Frist").click(function () {
        //    var Stu = "";
        //    for (var i = 0; i < arr.length; i++) {
        //        Stu += arr[i].toString() + "*";
        //        alert("这个路径是:" + Stu);
        //    }
        
           // Bind(Stu.substring(Stu.length-1,1));
   

        //$("#UPload_Frist").click(function () {            
        //    alert("前台控制点击!");
        //    var dfgdfg;
        //    for (var i = 0; i < arr.length; i++) {
        //        alert("该路径是:"+arr[i]);
        //        dfgdfg+="<img src='" + arr[i] + "' width=100 height=100/>";
        //    }
        //    $("#imgshow").html(dfgdfg);
        //})
      //  function BS_Firstbtn()
     //   {
   
            //var FileNmae = $("#ShowImage").val();
            //alert(FileNmae);
            //if (FileNmae != "") {
            //    alert("请选择文件");
            //    return false;
            //} else {
            //    return  true;
            //}
      //  }
        
      

        
       <%-- $("#UPload_Frist").bind("click", function () {
            var FileNmae = $("#ShowImage").val();
            alert(FileNmae);
            if (FileNmae != "") {
                   Bind(FileNmae);
             
                
                    <%--<%=WriteImage()%>;--%> <%--/* 没有效果！！ */ --%>
                <%--    // BindAjax(); /* 报错！*/
            //    }

            //});--%>
<%-- // });

/*AjAX访问后台方法一直报错！*/

    /*   function BindAjax() {
        $.ajax({
            type: "post",
            url: "WebForm1.aspx/WriteImage",
            contentType: "charset=utf-8",
            dataType: "json",
            success: function (data) {
                alert(data.d);
            },
            error: function (error) {
                alert("error");
            }
        });
    }
*/--%>
   

<%--    //方法调转一： 【后台永远获取不到该数值？？？？？？？？】
        $("#btnClick").click(function () {      
        //    alert(0);
        //    var xmlhttp = new XMLHttpRequest();
        //    if (!xmlhttp) {
        //        alert("创建xmlhttp对象异常");
        //        return false;
        //    }
        //    xmlhttp.open("POST", "WebForm1.aspx", true);
        //    xmlhttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        //    xmlhttp.onreadystatechange = function () {

        //        if (xmlhttp.readyState == 4) {

        //            if (xmlhttp.status == 200) {
        //                alert("进入20了")
        //                var str = xmlhttp.responseText; // 通过alert(str)得知 str={"Json":[{"Id":"1","UserName":"张三","Age":"25","Gender":"0"}]}    
        //                //debugger;    
        //                var obj = $.parseJSON(str); //将str这个字符串转换成Json对象     

        //                var name = obj.Json[0].UserName; //obj.Json取到的是[{"Id":"1","UserName":"张三","Age":"25","Gender":"0"}] 这个数组，数组里只有一个值，即：{"Id":"1","UserName":"张三","Age":"25","Gender":"0"}   所以obj.Json[0]的值就是{"Id":"1","UserName":"张三","Age":"25","Gender":"0"} ； 而这个{"Id":"1","UserName":"张三","Age":"25","Gender":"0"} 是一个对象，所以可以通过 .UserName来获得 "张三" 这个值    

        //                var age = obj.Json[0].Age;


        //                document.getElementById("name").innerHTML = name;
        //                document.getElementById("age").innerHTML = age;

        //            }
        //            else {
        //                alert("ajax服务器错误");
        //            }
        //        }

        //    }
        //    xmlhttp.send("id=1");
        });

              //方法调转一： 【后台永远获取不到该数值？？？？？？？？】
        //$("#btnClick").click(function () {
        //    alert(0);
        //    $.ajax({
        //        url: "WebForm1.aspx",
        //        type: "Post",
        //        dataType: "Text",  //请求到服务器返回的数据类型  
        //        data: { "id": "2" },
        //        success: function (data) {
        //            var obj = $.parseJSON(data); //这个数据  
        //            var name = obj.Json[0].UserName;
        //            var age = obj.Json[0].Age;
        //            document.getElementById("name").innerHTML = name;
        //            document.getElementById("age").innerHTML = age;

        //        }
        
        //    });
        //    alert(1);
        //});
    });*/--%>

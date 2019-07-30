<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="App_Style/bootstrap.min.css" rel="stylesheet" />
    <link href="App_Style/Files_css/fileinput.css" rel="stylesheet" />
    <link href="App_Style/Files_css/fileinput.min.css" rel="stylesheet" />
        <script src="App_Script/Files_JS/fileinput.js"></script>
    <script src="App_Script/Files_JS/fileinput_locale_zh.js"></script>
    <script src="App_Script/Files_JS/JavaScript1.js"></script>
    <script src="App_Script/jquery-form.js"></script>
</head>
<body>

    <form>
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">请选择Excel文件</h4>
                    </div>
                    <div class="modal-body">
                        <a href="~/Data/ExcelTemplate/Order.xlsx" class="form-control" style="border: none;">下载导入模板</a>
                        <input type="file" name="txt_file" id="txt_file" multiple class="file-loading" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
<script src="App_Script/jquery.min.js"></script>
<script src="App_Script/bootstrap.min.js"></script>
<script src="App_Script/jquery-form.js"></script>

</html>

 <script type="text/javascript">
     var i = 0;
     $(document).ready(function(){
       
         var arrt = new Array();
         $("#Showbtn").click(function(){
           
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


         });
   
         $("#Dectionbtn").click(function () {
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
         });
     
     });
             //function upload() {
     //  ajaxSubmit()是 在jquery-form.js中的方法,在form中传送数据
     //var arr = new Array();
   //  var i = 0;
     //$("#sdunbmit").click(function () {
     //    alert(0);
     //    $("#form1").ajaxSubmit({

     //        success: function (str) {                 
     //            alert("后他数据是:" + str);
     //            $(".gorms").html(str);              
     //        },
     //        error: function (error) { alert(error); },
     //        url: 'Handler3.ashx', /*设置post提交到的页面*/
     //        type: "post", /*设置表单以post方法提交*/
     //        dataType: "text" /*设置返回值类型为文本*/
     //    });
     
     
     
     
     
  
          
       

             //$(this).resetForm(); // 提交后重置表单
         //}


    



 </script>

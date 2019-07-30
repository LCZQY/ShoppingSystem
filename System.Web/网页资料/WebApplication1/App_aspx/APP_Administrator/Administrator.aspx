<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Administrator.aspx.cs" Inherits="WebApplication1.App_BackgroundProcedure.APP_Administrator.Administrator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../../App_Style/bootstrap.min.css" rel="stylesheet" />
</head>
    <style>
         [class*="col-md"] {
             border: red solid thin;
         }
    </style>
    
<body>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <nav class="nav">
                    导航
                </nav>
            </div>
            <div class="col-md-12">    
                <a href="#" id="DeleteSell">移除卖家</a>         
                    <div class="col-md-2">
                               <ul class="nav nav-pills nav-stacked">
                                <li role="presentation" class="active"><a href="#">今日申请</a></li>        
                                <li role="presentation"><a href="#" id="LookSell">查看卖家</a></li>
                                <li role="presentation"></li>                         
                              </ul>
                        </div>
                <div class="col-md-10" id="VendorBody">
                    <div class="col-md-12">
                        <%=SeelTable %>
                    </div>
                    <div class="col-md-12">
                        <button type="button" id="Pass" class="btn btn-default">确定</button>
                    </div>
                </div>
  
            </div>           
                <div class="col-md-10 table-responsive"  id="LookSeelBody" hidden="hidden">
                 
                </div>         
            <div class="col-md-12">
                Footer
            </div>
        </div>
    </div>
    <script src="../../App_Script/jquery-1.8.3.min.js"></script>
    <script src="../../App_Script/jquery.min.js"></script>
    <script src="../../App_Script/bootstrap.min.js"></script>   
</body>
</html>
 <script>
         var one;
         var two;
         $("#Pass").bind("click", function () {

             /*****本次传送数据并没有考虑多个用户存在！可能会出现问题*****/
             $('#Yes:checked').each(function (indexOne) {
                 one = indexOne;
                 if (indexOne == 0) {
                     //管理员选中后立马上发送到后台，修改数据表中的数据
                     alert("选中！");
                     bind($("#AdminUserName").text(), "YES");
                 }
             });
             //拒绝
             $('#No:checked').each(function (indexTwo) {
                 two = indexTwo;
                 if (indexTwo == 0) {
                     bind($("#AdminUserName").text(), "NO");
                     alert("你已经拒绝了该用户的申请！");
                 }
                 // 判断不能同时选择????
             });
         });
 
         // 查看卖家
         $("#LookSell").click(function () {
           alert($(this).text())
             $.post(
                "../../App_BackgroundProcedure/LC_Administrator.ashx",
                  {
                      Adminstra: "0",
                  },
                    function getBack(data, state) {
                        if (state == "success") {
                            alert(data);
                            $("#VendorBody").hide();
                            $("#LookSeelBody").show();
                            $("#LookSeelBody").html(data);
                            alert("已经发送！");
                          
                            $(".DeleteSell").each(function (index) {
                         
                                $(this).click(function () {
                                
                                    $.post(
                                  "../../App_BackgroundProcedure/LC_Administrator.ashx",
                                    {
                                        Adminstra: "1", Deletes: $(this).attr("type")
                                    },
                                      function getBack(data, state) {
                                          if (state == "success") {
                                               alert(data)

                                               if (data == "DELETE") {
                                                   if (confirm("确定要删除该卖家吗")) {
                                                       $("#LookSeelBody").find("table").find("tr").eq(index + 1).remove();
                                                   }
                                               }
                                          }
                                          else {
                                              alert("传值失败！");
                                          }
                                      }
                               );
                                });
                            });
                            //  window.location.reload();
                        }
                        else {
                            alert("传值失败！");
                        }
                    }
             );
         });                     

     function bind(msg, fuse) {

         $.post(
            "../../App_BackgroundProcedure/LC_SetUpShop.ashx",
              {
                  Variate: msg, Adminstra: "0", Refuse: fuse
              },
                function getBack(data, state) {
                    if (state == "success") {
                        alert(data);
                        window.location.reload();
                    }
                    else {
                        alert("传值失败！");
                    }
                }
         );
     }
 </script>
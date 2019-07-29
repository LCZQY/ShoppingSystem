<%@ Page Title="Change官网-后台-后台主页" Language="C#" MasterPageFile="~/Site.Mobile.Master" AutoEventWireup="true" CodeBehind="ManageIndex.aspx.cs" Inherits="System.Web.Aspx.ManageIndex" %>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <head>
        <link rel="stylesheet" href="../../Content/Shopping/layui.css">
        <style>
            .leftMain .layui-icon {
                margin-right: 5px;
            }
        </style>
        <link id="layuicss-layer" rel="stylesheet" href="../../Content/Shopping/layer.css" media="all">
    </head>

    <body class="layui-layout-body">

        <div class="layui-layout layui-layout-admin">
            <div class="layui-header">
                <div class="layui-logo">Change商城后台管理</div>
                <!-- 头部区域（可配合layui已有的水平导航） -->
                <ul class="layui-nav layui-layout-left">
                    <li class="layui-nav-item">
                        <a href="~">网站首页</a>
                    </li>
                    <span class="layui-nav-bar" style="left: 102px; top: 55px; width: 0px; opacity: 0;"></span>
                </ul>
                <ul class="layui-nav layui-layout-right">
                    <li class="layui-nav-item">
                        <a href="javascript:;">admin					
                            <span class="layui-nav-more"></span></a>
                        <dl class="layui-nav-child">
                            <dd>
                                <a href="##">个人资料</a>
                            </dd>
                        </dl>
                    </li>
                    <li class="layui-nav-item">
                        <a href="##">退出</a>
                    </li>
                    <span class="layui-nav-bar"></span>
                </ul>
            </div>

            <div class="layui-side layui-bg-black">
                <div class="layui-side-scroll">
                    <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
                    <ul class="layui-nav layui-nav-tree leftMain" lay-filter="test">
                        <li class="layui-nav-item layui-nav-itemed">
                            <a class="" href="javascript:;">基本功能<span class="layui-nav-more"></span></a>
                            <dl class="layui-nav-child">
                                <dd class="layui-this">
                                    <a class="layui-unselect" href="##"><i class="layui-icon"></i>用户管理</a>
                                </dd>
                                <dd>
                                    <a href="##"><i class="layui-icon"></i>商品类型</a>
                                </dd>
                                <dd>
                                    <a href="#"><i class="layui-icon"></i>上架商品</a>
                                </dd>
                                <dd>
                                    <a href="#"><i class="layui-icon"></i>订单管理</a>
                                </dd>
                                <dd>
                                    <a href="#"><i class="layui-icon"></i>促销咨询</a>
                                </dd>
                            </dl>
                        </li>
                        <span class="layui-nav-bar"></span>
                    </ul>
                </div>
            </div>

            <div class="layui-body">

                <iframe id="rightMain" src="javascript:;" style="width: 100%; height: 100%;"></iframe>
            </div>
            <div class="layui-footer">
                <!-- 底部固定区域 -->
                <p>&copy; <%:DateTime.Now.Year %> - Change商城</p>
            </div>
        </div>

        <script src="../../Scripts/jquery.js"></script>
        <script src="../../Scripts/Shopping/layui.js"></script>

        <script>
            //JavaScript代码区域
            layui.use(['element', 'layer'], function () {
                var element = layui.element;
                var layer = layui.layer;
                //一些事件监听
                element.on('tab(demo)', function (data) {
                    layer.msg('切换了：' + this.innerHTML);

                });
            });

            //菜单栏内容Url控制
            $(document).ready(function () {
                $('.leftMain a').on("click", function (e) {
                    e.preventDefault();
                    var href = "../ManagePages/index.html";//$(this).attr('href'); 
                    console.log(href,"href");
                    var iframe = $('#rightMain').attr("src", href);
                })
            })
	</script>
    </body>


</asp:Content>

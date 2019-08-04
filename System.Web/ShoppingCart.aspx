<%@ Page Title="Change官网-首页-购物车" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="System.Web.Aspx.ShoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- cart area start -->
    <div class="cart-area mrgn-40">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="entry-title">
                        <h2>我的购物车</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <div class="cart-content">
                        <form action="#">
                            <div class="table-content table-responsive">
                                <table>
                                    <thead>
                                        <tr>
                                            <th class="product-thumbnail">图片</th>
                                            <th class="product-name">商品</th>
                                            <th class="product-price">价格</th>
                                            <th class="product-quantity">数量</th>
                                            <th class="product-subtotal">总价</th>
                                            <th class="product-remove">删除</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="product-thumbnail"><a href="#">
                                                <img src="img/product/10.jpg" alt=""></a></td>
                                            <td class="product-name"><a href="#">北极熊</a></td>
                                            <td class="product-price"><span class="amount">￥165.00</span></td>
                                            <td class="product-quantity">
                                                <input value="1" type="number"></td>
                                            <td class="product-subtotal">￥165.00</td>
                                            <td class="product-remove"><a href="#"><i class="fa fa-times"></i></a></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="row">
                                <div class="col-md-8 col-sm-7 col-xs-12">
                                    <div class="buttons-cart">
                                        <input value="更新购物车" type="submit">
                                        <a href="#">继续购物</a>
                                    </div>                                   
                                </div>
                                <div class="col-md-4 col-sm-5 col-xs-12">
                                    <div class="cart_totals">
                                        <h2>购物车总计</h2>
                                        <table>
                                            <tbody>                                              
                                                <tr class="order-total">
                                                    <th>总共：</th>
                                                    <td>
                                                        <strong><span class="amount">￥215.00</span></strong>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <div class="wc-proceed-to-checkout">
                                            <a href="#">立即支付</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- cart area end -->
    <!-- End footer-area -->
    <div id="back-top"><i class="fa fa-angle-up"></i></div>
</asp:Content>

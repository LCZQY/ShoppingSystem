<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShopList.aspx.cs" Inherits="System.Web.Aspx.ShopList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="shop-area last-list">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-10">
                    <div class="shop-right-area">
                        <%-- <div class="section-title">
                            <h2>women</h2>
                        </div>--%>
                        <div class="shop-tab-pill">                         
                            <ul>
                                <li><a href="#grid" data-toggle="tab"><i class="fa fa-th-large"></i></a></li>
                                <li class="active"><a href="#list" data-toggle="tab"><i class="fa fa-th-list"></i></a></li>
                                <li>
                                    <div class="sort-position">
                                        <label>排序方式 : </label>
                                        <%--<select>
                                            <option value="quantity:desc">In stock</option>
                                            <option value="price:desc">Price: Highest first</option>
                                            <option value="name:asc">Product Name: A to Z</option>
                                            <option value="name:desc">Product Name: Z to A</option>
                                            <option value="reference:asc">Reference: Lowest first</option>
                                            <option value="reference:desc">Reference: Highest first</option>
                                        </select>--%>
                                    </div>
                                </li>
                                <li>
                                    <div class="show-label">
                                        <label>展示 : </label>
                                        <select>
                                            <option selected="selected" value="10">10</option>
                                            <option value="09">09</option>
                                            <option value="08">08</option>
                                            <option value="07">07</option>
                                            <option value="06">06</option>
                                        </select>
                                        <span>个</span>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="tab-content mrgn-40">
                            <div id="list" class="row tab-pane  active">
                                <div class="col-sm-12">
                                    <div class="single-product">
                                        <div class="product-img">
                                            <a href="#">
                                                <img src="img/product/12.jpg" alt="" />
                                                <span class="new-box">new</span>
                                            </a>
                                            <div class="quick-preview">
                                                <a href="#myModal" data-toggle="modal">查看详情</a>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <h5 class="product-name">
                                                <a href="#">手表</a>
                                            </h5>
                                            <div class="product-ratings">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                            </div>
                                            <div class="product-price">
                                                <h2>￥31.20 
                                                </h2>
                                            </div>
                                            <p>[腕表之家 腕表品鉴]在2019年初的日内瓦表展上，爱马仕作为唯一一个参加表展的时尚品牌，推出数款精美时计。爱马仕在专业制表领域已有40多年的历史与经验，它的作品无处不体现着优雅贵族气息。今天腕表之家为各位介绍的这款带有复古情怀的男士腕表，其低调简约的设计和简洁优雅的线条都彰显出了爱马仕腕表经典雅致的风格精髓。</p>
                                            <div class="product-action">
                                                <ul>
                                                    <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>加入购物车</a></li>
                                                    <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>                                                    
                                                </ul>
                                            </div>
                                            <div class="color-list-container mrg-nn3"></div>
                                         <%--   <span class="availability">有现货</span>--%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--分页--%>
                        <div class="bottom-pagination-content clearfix mrgn-40">                      
                            <div class="pagination-button">
                                <ul class="pagination">
                                    <li id="pagination-previous-bottom" class="disabled"><a href="#"><i class="fa fa-angle-left"></i></a></li>
                                    <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
                                    <li><a href="#">2 <span class="sr-only">(current)</span></a></li>
                                    <li id="pagination-next-bottom"><a href="#"><i class="fa fa-angle-right"></i></a></li>
                                </ul>
                            </div>
                            <div class="product-count">页码</div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>


</asp:Content>

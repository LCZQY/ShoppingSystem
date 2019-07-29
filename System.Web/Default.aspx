<%@ Page Title="Changes官网-首页" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="System.Web._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!-- 商品分类开始  -->
    <div class="mainmenu-area find">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="mainmenu-left visible-lg  visible-md">
                        <div class="product-menu-title">
                            <h2>全部商品分类</h2>
                        </div>
                        <div class="product_vmegamenu">
                            <ul>
                                <li>
                                    <a href="#" class="hover-icon">women</a>
                                    <div class="vmegamenu">
                                        <span>
                                            <a href="#" class="vgema-title">Dresses</a>
                                            <a href="#">Sweater</a>
                                            <a href="#">Evening</a>
                                            <a href="#">Day</a>
                                            <a href="#">Sports</a>
                                        </span>
                                        <span>
                                            <a href="#" class="vgema-title">Handbags</a>
                                            <a href="#">Shoulder</a>
                                            <a href="#">Satchels</a>
                                            <a href="#">kids</a>
                                            <a href="#">coats</a>
                                        </span>
                                        <span>
                                            <a href="#" class="vgema-title">shoes</a>
                                            <a href="#">Ankle Boots</a>
                                            <a href="#">Clog sandals </a>
                                            <a href="#">run</a>
                                            <a href="#">Books</a>
                                        </span>
                                        <span>
                                            <a href="#" class="vgema-title">Clothing</a>
                                            <a href="#">Coats  Jackets</a>
                                            <a href="#">Raincoats</a>
                                            <a href="#">Jackets</a>
                                            <a href="#">T-shirts</a>
                                        </span>
                                    </div>
                                </li>
                                <li>
                                    <a href="#" class="hover-icon">men</a>
                                    <div class="vmegamenu">
                                        <span>
                                            <a href="#" class="vgema-title">Clothing</a>
                                            <a href="#">Coats  Jackets</a>
                                            <a href="#">Raincoats</a>
                                            <a href="#">Jackets</a>
                                            <a href="#">T-shirts</a>
                                        </span>
                                        <span>
                                            <a href="#" class="vgema-title">Lingerie</a>
                                            <a href="#">Clog sandals</a>
                                            <a href="#">Lifestyle</a>
                                            <a href="#">Furniture</a>
                                            <a href="#">Bands</a>
                                        </span>
                                        <span>
                                            <a href="#" class="vgema-title">Handbags</a>
                                            <a href="#">Shoulder</a>
                                            <a href="#">Satchels</a>
                                            <a href="#">kids</a>
                                            <a href="#">coats</a>
                                        </span>
                                        <span>
                                            <a href="#" class="vgema-title">Footwear</a>
                                            <a href="#">shelf</a>
                                            <a href="#">Jackets</a>
                                            <a href="#">Shoes</a>
                                            <a href="#">Scarves</a>
                                        </span>
                                    </div>
                                </li>
                                <li>
                                    <a href="#" class="hover-icon">Jewellery</a>
                                    <div class="vmegamenu">
                                        <span>
                                            <a href="#" class="vgema-title">Rings</a>
                                            <a href="#">Gold Ring</a>
                                            <a href="#">platinum ring</a>
                                            <a href="#">Silver Ring</a>
                                            <a href="#">Diamond rings</a>
                                        </span>
                                        <span>
                                            <a href="#" class="vgema-title">Necklaces</a>
                                            <a href="#">Diamond necklaces</a>
                                            <a href="#">Pearl necklaces</a>
                                            <a href="#">Silver necklaces</a>
                                            <a href="#">Statement necklaces</a>
                                        </span>
                                    </div>
                                </li>
                                <li>
                                    <a href="#" class="hover-icon">Equipments</a>
                                    <div class="vmegamenu">
                                        <span>
                                            <a href="#" class="vgema-title">Accessories</a>
                                            <a href="#">headphone</a>
                                            <a href="#">health</a>
                                            <a href="#">camera</a>
                                        </span>
                                        <span>
                                            <a href="#" class="vgema-title">beauty</a>
                                            <a href="#">run</a>
                                            <a href="#">evening</a>
                                            <a href="#">coats</a>
                                        </span>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-9 visible-lg visible-md">
                    <%--     <nav class="mainmenu">
                        <ul>
                            <li>
                                <a href="index.html"></a>
                                <ul>
                                    <li><a href="index.html">Home Version 1</a></li>
                                    <li><a href="index-2.html">Home Version 2</a></li>
                                    <li><a href="index-3.html">Home Version 3</a></li>
                                    <li><a href="index-4.html">Home Version 4</a></li>
                                </ul>
                            </li>
                            <li><a href="blog.html">Blog</a></li>
                            <li><a href="about-us.html">About Us</a></li>
                            <li><a href="contact-us.html">Contact Us</a></li>
                            <li>
                                <a href="#">Pages</a>
                                <ul>
                                    <li><a href="shop-grid.html">Shop Grid</a></li>
                                    <li><a href="shop-grid-right-sidebar.html">Shop Grid Right Sidebar</a></li>
                                    <li><a href="shop-list.html">Shop List</a></li>
                                    <li><a href="shop-list-right-sidebar.html">Shop List Right Sidebar</a></li>
                                    <li><a href="product-details.html">Product Details</a></li>
                                    <li><a href="blog.html">Blog</a></li>
                                    <li><a href="blog-details.html">Single Blog</a></li>
                                    <li><a href="account.html">Account</a></li>
                                    <li><a href="cart.html">Cart</a></li>
                                    <li><a href="check-out.html">Checkout</a></li>
                                    <li><a href="wishlist.html">Wishlist</a></li>
                                    <li><a href="about-us.html">About Us</a></li>
                                    <li><a href="contact-us.html">Contact Us</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>--%>
                </div>
            </div>
        </div>
    </div>
    <!--商品分类结束--!>

    <!--轮播开始-->
    <div class="mobile-menu-area visible-sm visible-xs">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="mobile-menu">
                        <div class="mobile-menu-active">
                            <ul>
                                <li>
                                    <a href="index.html">Home</a>
                                    <ul>
                                        <li><a href="index.html">Home Version 1</a></li>
                                        <li><a href="index-2.html">Home Version 2</a></li>
                                        <li><a href="index-3.html">Home Version 3</a></li>
                                        <li><a href="index-4.html">Home Version 4</a></li>
                                    </ul>
                                </li>
                                <%-- <li><a href="blog.html">Blog</a></li>
                                <li><a href="about-us.html">About Us</a></li>
                                <li><a href="contact-us.html">Contact Us</a></li>--%>
                                <li>
                                    <a href="#">Pages</a>
                                    <ul>
                                        <li><a href="shop-grid.html">Shop Grid</a></li>
                                        <li><a href="shop-grid-right-sidebar.html">Shop Grid Right Sidebar</a></li>
                                        <li><a href="shop-list.html">Shop List</a></li>
                                        <li><a href="shop-list-right-sidebar.html">Shop List Right Sidebar</a></li>
                                        <li><a href="product-details.html">Product Details</a></li>
                                        <li><a href="blog.html">Blog</a></li>
                                        <li><a href="blog-details.html">Single Blog</a></li>
                                        <li><a href="account.html">Account</a></li>
                                        <li><a href="cart.html">Cart</a></li>
                                        <li><a href="check-out.html">Checkout</a></li>
                                        <li><a href="wishlist.html">Wishlist</a></li>
                                        <li><a href="about-us.html">About Us</a></li>
                                        <li><a href="contact-us.html">Contact Us</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="slider-container mrgn-40">
        <div class="container">
            <div class="row">
                <div class="col-md-9 col-md-offset-3">
                    <!-- Slider Image -->
                    <div class="slider">
                        <div id="mainSlider" class="nivoSlider slider-image">
                            <img src="img/slider/1.jpg" alt="main slider" title="#htmlcaption1" />
                            <img src="img/slider/2.jpg" alt="main slider" title="#htmlcaption2" />
                        </div>
                        <!-- Slider Caption 1 -->
                        <div id="htmlcaption1" class="nivo-html-caption slider-caption-1">
                            <div class="slider-progress"></div>
                            <div class="slide1-text">
                                <div class="middle-text desc1">
                                    <div class="cap-title wow zoomInLeft" data-wow-duration="0.9s" data-wow-delay="0s">
                                        <p class="title-1">World fashion</p>
                                    </div>
                                    <div class="cap-title wow zoomInLeft" data-wow-duration="1.2s" data-wow-delay="0.2s">
                                        <p class="title-2">Get up to 50% off</p>
                                    </div>
                                    <div class="cap-title wow zoomInLeft hidden-xs" data-wow-duration="1.3s" data-wow-delay=".5s">
                                        <p class="title-3">
                                            Omething Different Your Favorite Variety Designs Of
                                            <br>
                                            Clothing & Lookbook
                                        </p>
                                    </div>
                                    <div class="cap-readmore wow zoomInLeft" data-wow-duration="1.4s" data-wow-delay=".7s">
                                        <a href="#">Shop now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Slider Caption 2 -->
                        <div id="htmlcaption2" class="nivo-html-caption slider-caption-2">
                            <div class="slider-progress"></div>
                            <div class="slide1-text">
                                <div class="middle-text desc2">
                                    <div class="cap-title wow zoomInLeft" data-wow-duration="0.9s" data-wow-delay="0s">
                                        <p class="title-1">World fashion</p>
                                    </div>
                                    <div class="cap-title wow zoomInLeft" data-wow-duration="1.2s" data-wow-delay="0.2s">
                                        <p class="title-2">Get up to 50% off</p>
                                    </div>
                                    <div class="cap-title wow zoomInLeft hidden-xs" data-wow-duration="1.3s" data-wow-delay=".5s">
                                        <p class="title-3">
                                            Omething Different Your Favorite Variety Designs Of
                                            <br>
                                            Clothing & Lookbook
                                        </p>
                                    </div>
                                    <div class="cap-readmore wow zoomInLeft" data-wow-duration="1.4s" data-wow-delay=".7s">
                                        <a href="#">Shop now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--轮播结束-->

    <!-- 我的收藏开始-->
    <div class="favourite-area mrgn-40">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-title">
                        <h2>我的收藏</h2>
                    </div>
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane active" id="men">
                            <div class="favourite-product">
                                <div class="row">
                                    <div class="favourite-carousel">
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/1.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5 class="product-name">
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                            <del>£ 24.60 </del>
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/3.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                        <span class="sale-box">sale</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5 class="product-name">
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                            <del>£ 24.60 </del>
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/2.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5 class="product-name">
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/4.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5 class="product-name">
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/5.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/6.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/7.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                            <del>£ 24.60 </del>
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/8.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/9.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/10.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/11.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/12.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                            <del>£ 24.60 </del>
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/13.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/14.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane" id="women">
                            <div class="favourite-product">
                                <div class="row">
                                    <div class="favourite-carousel">
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/1.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5 class="product-name">
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                            <del>£ 24.60 </del>
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/3.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                        <span class="sale-box">sale</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5 class="product-name">
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                            <del>£ 24.60 </del>
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/2.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5 class="product-name">
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/4.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5 class="product-name">
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/5.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/6.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/7.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                            <del>£ 24.60 </del>
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/8.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/9.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/10.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/11.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/12.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                            <del>£ 24.60 </del>
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/13.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/14.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane" id="equipments">
                            <div class="favourite-product">
                                <div class="row">
                                    <div class="favourite-carousel">
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/1.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5 class="product-name">
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                            <del>£ 24.60 </del>
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/3.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                        <span class="sale-box">sale</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5 class="product-name">
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                            <del>£ 24.60 </del>
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/2.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5 class="product-name">
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/4.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5 class="product-name">
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/5.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/6.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/7.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                            <del>£ 24.60 </del>
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/8.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/9.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/10.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/11.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/12.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                            <del>£ 24.60 </del>
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/13.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/14.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane" id="watches">
                            <div class="favourite-product">
                                <div class="row">
                                    <div class="favourite-carousel">
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/1.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5 class="product-name">
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                            <del>£ 24.60 </del>
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/3.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                        <span class="sale-box">sale</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5 class="product-name">
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                            <del>£ 24.60 </del>
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/2.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5 class="product-name">
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/4.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5 class="product-name">
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/5.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/6.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/7.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                            <del>£ 24.60 </del>
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/8.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/9.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/10.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/11.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/12.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                            <del>£ 24.60 </del>
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/13.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/14.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane" id="books">
                            <div class="favourite-product">
                                <div class="row">
                                    <div class="favourite-carousel">
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/1.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5 class="product-name">
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                            <del>£ 24.60 </del>
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/3.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                        <span class="sale-box">sale</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5 class="product-name">
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                            <del>£ 24.60 </del>
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/2.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5 class="product-name">
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/4.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5 class="product-name">
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/5.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/6.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/7.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                            <del>£ 24.60 </del>
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/8.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/9.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/10.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/11.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/12.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                            <del>£ 24.60 </del>
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/13.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/14.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane" id="sports">
                            <div class="favourite-product">
                                <div class="row">
                                    <div class="favourite-carousel">
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/1.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5 class="product-name">
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                            <del>£ 24.60 </del>
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/3.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                        <span class="sale-box">sale</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5 class="product-name">
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                            <del>£ 24.60 </del>
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/2.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5 class="product-name">
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/4.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5 class="product-name">
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/5.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/6.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/7.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                            <del>£ 24.60 </del>
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/8.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/9.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/10.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/11.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/12.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                            <del>£ 24.60 </del>
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/13.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/14.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane" id="gifts">
                            <div class="favourite-product">
                                <div class="row">
                                    <div class="favourite-carousel">
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/1.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5 class="product-name">
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                            <del>£ 24.60 </del>
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/3.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                        <span class="sale-box">sale</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5 class="product-name">
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                            <del>£ 24.60 </del>
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/2.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5 class="product-name">
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/4.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5 class="product-name">
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/5.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/6.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/7.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                            <del>£ 24.60 </del>
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/8.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/9.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/10.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/11.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/12.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                            <del>£ 24.60 </del>
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/13.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="img/product/14.jpg" alt="" />
                                                        <span class="new-box">new</span>
                                                    </a>
                                                    <div class="quick-preview">
                                                        <a href="#myModal" data-toggle="modal">Quick view</a>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h5>
                                                        <a href="#">Printed Chiffon Dress</a>
                                                    </h5>
                                                    <div class="product-ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-price">
                                                        <h2>£ 19.68
                                                        </h2>
                                                    </div>
                                                    <div class="product-action">
                                                        <ul>
                                                            <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 我的收藏结束-->


    <!-- 商品展示区开始 -->
    <div class="new-product-area mrgn-40 hm-final">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-4">
                    <div class="fsingle-product-carousel inhi">
                        <div class="single-product">
                            <div class="product-img">
                                <a href="#">
                                    <img src="img/product/3.jpg" alt="" />
                                    <span class="new-box">new</span>
                                </a>
                                <div class="quick-preview">
                                    <a href="#myModal" data-toggle="modal">Quick view</a>
                                </div>
                                <div class="countdown-pro countdown-2">
                                    <div data-countdown="2020/06/01"></div>
                                </div>
                            </div>
                            <div class="product-content">
                                <h5 class="product-name">
                                    <a href="#">Printed Chiffon Dress</a>
                                </h5>
                                <div class="product-ratings">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="product-price">
                                    <h2>£ 19.68
                                        <del>£ 24.60 </del>
                                    </h2>
                                </div>
                                <div class="product-action">
                                    <ul>
                                        <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                        <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="single-product">
                            <div class="product-img">
                                <a href="#">
                                    <img src="img/product/9.jpg" alt="" />
                                    <span class="new-box">new</span>
                                </a>
                                <div class="quick-preview">
                                    <a href="#myModal" data-toggle="modal">Quick view</a>
                                </div>
                                <div class="countdown-pro countdown-2">
                                    <div data-countdown="2020/06/01"></div>
                                </div>
                            </div>
                            <div class="product-content">
                                <h5 class="product-name">
                                    <a href="#">Printed Chiffon Dress</a>
                                </h5>
                                <div class="product-ratings">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="product-price">
                                    <h2>£ 19.68
                                        <del>£ 24.60 </del>
                                    </h2>
                                </div>
                                <div class="product-action">
                                    <ul>
                                        <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                        <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="single-product">
                            <div class="product-img">
                                <a href="#">
                                    <img src="img/product/6.jpg" alt="" />
                                    <span class="new-box">new</span>
                                </a>
                                <div class="quick-preview">
                                    <a href="#myModal" data-toggle="modal">Quick view</a>
                                </div>
                                <div class="countdown-pro countdown-2">
                                    <div data-countdown="2020/06/01"></div>
                                </div>
                            </div>
                            <div class="product-content">
                                <h5 class="product-name">
                                    <a href="#">Printed Chiffon Dress</a>
                                </h5>
                                <div class="product-ratings">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="product-price">
                                    <h2>£ 19.68
                                        <del>£ 24.60 </del>
                                    </h2>
                                </div>
                                <div class="product-action">
                                    <ul>
                                        <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                        <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="single-product">
                            <div class="product-img">
                                <a href="#">
                                    <img src="img/product/1.jpg" alt="" />
                                    <span class="new-box">new</span>
                                </a>
                                <div class="quick-preview">
                                    <a href="#myModal" data-toggle="modal">Quick view</a>
                                </div>
                                <div class="countdown-pro countdown-2">
                                    <div data-countdown="2020/06/01"></div>
                                </div>
                            </div>
                            <div class="product-content">
                                <h5 class="product-name">
                                    <a href="#">Printed Chiffon Dress</a>
                                </h5>
                                <div class="product-ratings">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="product-price">
                                    <h2>£ 19.68
                                        <del>£ 24.60 </del>
                                    </h2>
                                </div>
                                <div class="product-action">
                                    <ul>
                                        <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                        <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-9 col-sm-8">
                    <div class="section-title">
                        <h2>新 上架商铺</h2>
                    </div>
                    <div class="row">
                        <div class="new-product-carousel">
                            <div class="col-md-12">
                                <div class="single-product">
                                    <div class="product-img">
                                        <a href="#">
                                            <img src="img/product/8.jpg" alt="" />
                                            <span class="new-box">new</span>
                                        </a>
                                        <div class="quick-preview">
                                            <a href="#myModal" data-toggle="modal">Quick view</a>
                                        </div>
                                    </div>
                                    <div class="product-content">
                                        <h5 class="product-name">
                                            <a href="#">Printed Chiffon Dress</a>
                                        </h5>
                                        <div class="product-ratings">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                        <div class="product-price">
                                            <h2>£ 19.68
                                                <del>£ 24.60 </del>
                                            </h2>
                                        </div>
                                        <div class="product-action">
                                            <ul>
                                                <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 新商品上架结束 -->

    <%--购买步骤开始--%>
    <div class="purchase-progress mr-purchase mrgn-40">
        <div class="container">
            <div class="section-title">
                <h2>购买进度</h2>
            </div>
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="static-step mb-30">
                        <span class="static-icon">
                            <i class="fa fa-codepen" aria-hidden="true"></i>
                        </span>
                        <div class="static-info">
                            <h4>步骤 1</h4>
                            <p>选择商品</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 mb-30">
                    <div class="static-step">
                        <span class="static-icon">
                            <i class="fa fa-unlock" aria-hidden="true"></i>
                        </span>
                        <div class="static-info">
                            <h4>步骤 2</h4>
                            <p>注册和结账</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="static-step nn-static">
                        <span class="static-icon">
                            <i class="fa fa-check" aria-hidden="true"></i>
                        </span>
                        <div class="static-info">
                            <h4>步骤 3</h4>
                            <p>确认您的帐户</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="static-step mrg-nn nn-static">
                        <span class="static-icon">
                            <i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i>
                        </span>
                        <div class="static-info">
                            <h4>步骤 4</h4>
                            <p>登录和开始下载</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--购买步骤结束--%>

    <%--热门商品开始--%>
    <div class="top-product-area mrgn-40">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="top-product-title">
                        <div class="section-title">
                            <h2>热门商品</h2>
                        </div>
                        <ul class="top-product-tab">
                            <li class="active"><a href="#OnSale" data-toggle="tab">OnSale</a></li>
                            <li><a href="#Bestseller" data-toggle="tab">Bestseller</a></li>
                            <li><a href="#Featured-Products" data-toggle="tab">Featured Products</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3 col-sm-4 hidden-xs">
                    <div class="banner-box">
                        <a href="#">
                            <img src="img/banner/3.jpg" alt="" /></a>
                    </div>
                </div>
                <div class="col-md-9 col-sm-8">
                    <div class="tab-content hm-1-tnm">
                        <div class="tab-pane fade in active" id="OnSale">
                            <div class="row">
                                <div class="top-product-carousel">
                                    <div class="col-md-12">
                                        <div class="single-product">
                                            <div class="product-img">
                                                <a href="#">
                                                    <img src="img/product/3.jpg" alt="" />
                                                    <span class="new-box">new</span>
                                                    <span class="sale-box">new</span>
                                                </a>
                                                <div class="quick-preview">
                                                    <a href="#myModal" data-toggle="modal">Quick view</a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h5>
                                                    <a href="#">Printed Chiffon Dress</a>
                                                </h5>
                                                <div class="product-ratings">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                                <div class="product-price">
                                                    <h2>£ 19.68
                                                    </h2>
                                                </div>
                                                <div class="product-action">
                                                    <ul>
                                                        <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                        <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="Bestseller">
                            <div class="row">
                                <div class="top-product-carousel">
                                    <div class="col-md-12">
                                        <div class="single-product">
                                            <div class="product-img">
                                                <a href="#">
                                                    <img src="img/product/1.jpg" alt="" />
                                                    <span class="new-box">new</span>
                                                </a>
                                                <div class="quick-preview">
                                                    <a href="#myModal" data-toggle="modal">Quick view</a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h5>
                                                    <a href="#">Printed Chiffon Dress</a>
                                                </h5>
                                                <div class="product-ratings">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                                <div class="product-price">
                                                    <h2>£ 19.68
                                                        <del>£ 24.60</del>
                                                    </h2>
                                                </div>
                                                <div class="product-action">
                                                    <ul>
                                                        <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                        <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="single-product">
                                            <div class="product-img">
                                                <a href="#">
                                                    <img src="img/product/14.jpg" alt="" />
                                                    <span class="new-box">new</span>
                                                </a>
                                                <div class="quick-preview">
                                                    <a href="#myModal" data-toggle="modal">Quick view</a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h5>
                                                    <a href="#">Printed Chiffon Dress</a>
                                                </h5>
                                                <div class="product-ratings">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                                <div class="product-price">
                                                    <h2>£ 19.68
                                                    </h2>
                                                </div>
                                                <div class="product-action">
                                                    <ul>
                                                        <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                        <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="single-product">
                                            <div class="product-img">
                                                <a href="#">
                                                    <img src="img/product/11.jpg" alt="" />
                                                    <span class="new-box">new</span>
                                                </a>
                                                <div class="quick-preview">
                                                    <a href="#myModal" data-toggle="modal">Quick view</a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h5>
                                                    <a href="#">Printed Chiffon Dress</a>
                                                </h5>
                                                <div class="product-ratings">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                                <div class="product-price">
                                                    <h2>£ 19.68
                                                    </h2>
                                                </div>
                                                <div class="product-action">
                                                    <ul>
                                                        <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                        <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="single-product">
                                            <div class="product-img">
                                                <a href="#">
                                                    <img src="img/product/12.jpg" alt="" />
                                                    <span class="new-box">new</span>
                                                </a>
                                                <div class="quick-preview">
                                                    <a href="#myModal" data-toggle="modal">Quick view</a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h5>
                                                    <a href="#">Printed Chiffon Dress</a>
                                                </h5>
                                                <div class="product-ratings">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                                <div class="product-price">
                                                    <h2>£ 19.68
                                                    </h2>
                                                </div>
                                                <div class="product-action">
                                                    <ul>
                                                        <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                        <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="single-product">
                                            <div class="product-img">
                                                <a href="#">
                                                    <img src="img/product/4.jpg" alt="" />
                                                    <span class="new-box">new</span>
                                                </a>
                                                <div class="quick-preview">
                                                    <a href="#myModal" data-toggle="modal">Quick view</a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h5>
                                                    <a href="#">Printed Chiffon Dress</a>
                                                </h5>
                                                <div class="product-ratings">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                                <div class="product-price">
                                                    <h2>£ 19.68
                                                    </h2>
                                                </div>
                                                <div class="product-action">
                                                    <ul>
                                                        <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                        <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="single-product">
                                            <div class="product-img">
                                                <a href="#">
                                                    <img src="img/product/12.jpg" alt="" />
                                                    <span class="new-box">new</span>
                                                </a>
                                                <div class="quick-preview">
                                                    <a href="#myModal" data-toggle="modal">Quick view</a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h5>
                                                    <a href="#">Printed Chiffon Dress</a>
                                                </h5>
                                                <div class="product-ratings">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                                <div class="product-price">
                                                    <h2>£ 19.68
                                                    </h2>
                                                </div>
                                                <div class="product-action">
                                                    <ul>
                                                        <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                        <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="single-product">
                                            <div class="product-img">
                                                <a href="#">
                                                    <img src="img/product/10.jpg" alt="" />
                                                    <span class="new-box">new</span>
                                                </a>
                                                <div class="quick-preview">
                                                    <a href="#myModal" data-toggle="modal">Quick view</a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h5>
                                                    <a href="#">Printed Chiffon Dress</a>
                                                </h5>
                                                <div class="product-ratings">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                                <div class="product-price">
                                                    <h2>£ 19.68
                                                    </h2>
                                                </div>
                                                <div class="product-action">
                                                    <ul>
                                                        <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                        <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="single-product">
                                            <div class="product-img">
                                                <a href="#">
                                                    <img src="img/product/8.jpg" alt="" />
                                                    <span class="new-box">new</span>
                                                </a>
                                                <div class="quick-preview">
                                                    <a href="#myModal" data-toggle="modal">Quick view</a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h5>
                                                    <a href="#">Printed Chiffon Dress</a>
                                                </h5>
                                                <div class="product-ratings">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                                <div class="product-price">
                                                    <h2>£ 19.68
                                                        <del>£ 24.60</del>
                                                    </h2>
                                                </div>
                                                <div class="product-action">
                                                    <ul>
                                                        <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                        <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="single-product">
                                            <div class="product-img">
                                                <a href="#">
                                                    <img src="img/product/3.jpg" alt="" />
                                                    <span class="new-box">new</span>
                                                </a>
                                                <div class="quick-preview">
                                                    <a href="#myModal" data-toggle="modal">Quick view</a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h5>
                                                    <a href="#">Printed Chiffon Dress</a>
                                                </h5>
                                                <div class="product-ratings">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                                <div class="product-price">
                                                    <h2>£ 19.68
                                                    </h2>
                                                </div>
                                                <div class="product-action">
                                                    <ul>
                                                        <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                        <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="single-product">
                                            <div class="product-img">
                                                <a href="#">
                                                    <img src="img/product/9.jpg" alt="" />
                                                    <span class="new-box">new</span>
                                                    <span class="sale-box">new</span>
                                                </a>
                                                <div class="quick-preview">
                                                    <a href="#myModal" data-toggle="modal">Quick view</a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h5>
                                                    <a href="#">Printed Chiffon Dress</a>
                                                </h5>
                                                <div class="product-ratings">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                                <div class="product-price">
                                                    <h2>£ 19.68
                                                        <del>£ 36.61</del>
                                                    </h2>
                                                </div>
                                                <div class="product-action">
                                                    <ul>
                                                        <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                        <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="single-product">
                                            <div class="product-img">
                                                <a href="#">
                                                    <img src="img/product/7.jpg" alt="" />
                                                    <span class="new-box">new</span>
                                                </a>
                                                <div class="quick-preview">
                                                    <a href="#myModal" data-toggle="modal">Quick view</a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h5>
                                                    <a href="#">Printed Chiffon Dress</a>
                                                </h5>
                                                <div class="product-ratings">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                                <div class="product-price">
                                                    <h2>£ 19.68
                                                    </h2>
                                                </div>
                                                <div class="product-action">
                                                    <ul>
                                                        <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                        <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="single-product">
                                            <div class="product-img">
                                                <a href="#">
                                                    <img src="img/product/8.jpg" alt="" />
                                                    <span class="new-box">new</span>
                                                </a>
                                                <div class="quick-preview">
                                                    <a href="#myModal" data-toggle="modal">Quick view</a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h5>
                                                    <a href="#">Printed Chiffon Dress</a>
                                                </h5>
                                                <div class="product-ratings">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                                <div class="product-price">
                                                    <h2>£ 19.68
                                                        <del>£ 32.40</del>
                                                    </h2>
                                                </div>
                                                <div class="product-action">
                                                    <ul>
                                                        <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                        <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="single-product">
                                            <div class="product-img">
                                                <a href="#">
                                                    <img src="img/product/7.jpg" alt="" />
                                                    <span class="new-box">new</span>
                                                </a>
                                                <div class="quick-preview">
                                                    <a href="#myModal" data-toggle="modal">Quick view</a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h5>
                                                    <a href="#">Printed Chiffon Dress</a>
                                                </h5>
                                                <div class="product-ratings">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                                <div class="product-price">
                                                    <h2>£ 19.68
                                                        <del>£ 36.61</del>
                                                    </h2>
                                                </div>
                                                <div class="product-action">
                                                    <ul>
                                                        <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                        <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="Featured-Products">
                            <div class="row">
                                <div class="top-product-carousel">
                                    <div class="col-md-12">
                                        <div class="single-product">
                                            <div class="product-img">
                                                <a href="#">
                                                    <img src="img/product/14.jpg" alt="" />
                                                    <span class="new-box">new</span>
                                                </a>
                                                <div class="quick-preview">
                                                    <a href="#myModal" data-toggle="modal">Quick view</a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h5>
                                                    <a href="#">Printed Chiffon Dress</a>
                                                </h5>
                                                <div class="product-ratings">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                                <div class="product-price">
                                                    <h2>£ 19.68
                                                    </h2>
                                                </div>
                                                <div class="product-action">
                                                    <ul>
                                                        <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                        <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="single-product">
                                            <div class="product-img">
                                                <a href="#">
                                                    <img src="img/product/11.jpg" alt="" />
                                                    <span class="new-box">new</span>
                                                </a>
                                                <div class="quick-preview">
                                                    <a href="#myModal" data-toggle="modal">Quick view</a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h5>
                                                    <a href="#">Printed Chiffon Dress</a>
                                                </h5>
                                                <div class="product-ratings">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                                <div class="product-price">
                                                    <h2>£ 19.68
                                                    </h2>
                                                </div>
                                                <div class="product-action">
                                                    <ul>
                                                        <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                        <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="single-product">
                                            <div class="product-img">
                                                <a href="#">
                                                    <img src="img/product/5.jpg" alt="" />
                                                    <span class="new-box">new</span>
                                                </a>
                                                <div class="quick-preview">
                                                    <a href="#myModal" data-toggle="modal">Quick view</a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h5>
                                                    <a href="#">Printed Chiffon Dress</a>
                                                </h5>
                                                <div class="product-ratings">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                                <div class="product-price">
                                                    <h2>£ 19.68
                                                    </h2>
                                                </div>
                                                <div class="product-action">
                                                    <ul>
                                                        <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                        <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="single-product">
                                            <div class="product-img">
                                                <a href="#">
                                                    <img src="img/product/13.jpg" alt="" />
                                                    <span class="new-box">new</span>
                                                </a>
                                                <div class="quick-preview">
                                                    <a href="#myModal" data-toggle="modal">Quick view</a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h5>
                                                    <a href="#">Printed Chiffon Dress</a>
                                                </h5>
                                                <div class="product-ratings">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                                <div class="product-price">
                                                    <h2>£ 19.68
                                                    </h2>
                                                </div>
                                                <div class="product-action">
                                                    <ul>
                                                        <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                        <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="single-product">
                                            <div class="product-img">
                                                <a href="#">
                                                    <img src="img/product/9.jpg" alt="" />
                                                    <span class="new-box">new</span>
                                                </a>
                                                <div class="quick-preview">
                                                    <a href="#myModal" data-toggle="modal">Quick view</a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h5>
                                                    <a href="#">Printed Chiffon Dress</a>
                                                </h5>
                                                <div class="product-ratings">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                                <div class="product-price">
                                                    <h2>£ 19.68

                                                    </h2>
                                                </div>
                                                <div class="product-action">
                                                    <ul>
                                                        <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                        <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="single-product">
                                            <div class="product-img">
                                                <a href="#">
                                                    <img src="img/product/10.jpg" alt="" />
                                                    <span class="new-box">new</span>
                                                </a>
                                                <div class="quick-preview">
                                                    <a href="#myModal" data-toggle="modal">Quick view</a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h5>
                                                    <a href="#">Printed Chiffon Dress</a>
                                                </h5>
                                                <div class="product-ratings">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                                <div class="product-price">
                                                    <h2>£ 19.68
                                                    </h2>
                                                </div>
                                                <div class="product-action">
                                                    <ul>
                                                        <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                        <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="single-product">
                                            <div class="product-img">
                                                <a href="#">
                                                    <img src="img/product/8.jpg" alt="" />
                                                    <span class="new-box">new</span>
                                                </a>
                                                <div class="quick-preview">
                                                    <a href="#myModal" data-toggle="modal">Quick view</a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h5>
                                                    <a href="#">Printed Chiffon Dress</a>
                                                </h5>
                                                <div class="product-ratings">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                                <div class="product-price">
                                                    <h2>£ 19.68
                                                        <del>£ 24.60</del>
                                                    </h2>
                                                </div>
                                                <div class="product-action">
                                                    <ul>
                                                        <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                        <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="single-product">
                                            <div class="product-img">
                                                <a href="#">
                                                    <img src="img/product/7.jpg" alt="" />
                                                    <span class="new-box">new</span>
                                                </a>
                                                <div class="quick-preview">
                                                    <a href="#myModal" data-toggle="modal">Quick view</a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h5>
                                                    <a href="#">Printed Chiffon Dress</a>
                                                </h5>
                                                <div class="product-ratings">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                                <div class="product-price">
                                                    <h2>£ 19.68
                                                    </h2>
                                                </div>
                                                <div class="product-action">
                                                    <ul>
                                                        <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                        <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="single-product">
                                            <div class="product-img">
                                                <a href="#">
                                                    <img src="img/product/6.jpg" alt="" />
                                                    <span class="new-box">new</span>
                                                </a>
                                                <div class="quick-preview">
                                                    <a href="#myModal" data-toggle="modal">Quick view</a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h5>
                                                    <a href="#">Printed Chiffon Dress</a>
                                                </h5>
                                                <div class="product-ratings">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                                <div class="product-price">
                                                    <h2>£ 19.68
                                                        <del>£ 32.40</del>
                                                    </h2>
                                                </div>
                                                <div class="product-action">
                                                    <ul>
                                                        <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                        <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="single-product">
                                            <div class="product-img">
                                                <a href="#">
                                                    <img src="img/product/12.jpg" alt="" />
                                                    <span class="new-box">new</span>
                                                </a>
                                                <div class="quick-preview">
                                                    <a href="#myModal" data-toggle="modal">Quick view</a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h5>
                                                    <a href="#">Printed Chiffon Dress</a>
                                                </h5>
                                                <div class="product-ratings">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                                <div class="product-price">
                                                    <h2>£ 19.68
                                                    </h2>
                                                </div>
                                                <div class="product-action">
                                                    <ul>
                                                        <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                        <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="single-product">
                                            <div class="product-img">
                                                <a href="#">
                                                    <img src="img/product/4.jpg" alt="" />
                                                    <span class="new-box">new</span>
                                                </a>
                                                <div class="quick-preview">
                                                    <a href="#myModal" data-toggle="modal">Quick view</a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h5>
                                                    <a href="#">Printed Chiffon Dress</a>
                                                </h5>
                                                <div class="product-ratings">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                                <div class="product-price">
                                                    <h2>£ 19.68
                                                    </h2>
                                                </div>
                                                <div class="product-action">
                                                    <ul>
                                                        <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                        <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="single-product">
                                            <div class="product-img">
                                                <a href="#">
                                                    <img src="img/product/3.jpg" alt="" />
                                                    <span class="new-box">new</span>
                                                    <span class="sale-box">new</span>
                                                </a>
                                                <div class="quick-preview">
                                                    <a href="#myModal" data-toggle="modal">Quick view</a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h5>
                                                    <a href="#">Printed Chiffon Dress</a>
                                                </h5>
                                                <div class="product-ratings">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                                <div class="product-price">
                                                    <h2>£ 19.68
                                                        <del>£ 36.61 </del>
                                                    </h2>
                                                </div>
                                                <div class="product-action">
                                                    <ul>
                                                        <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                        <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="single-product">
                                            <div class="product-img">
                                                <a href="#">
                                                    <img src="img/product/2.jpg" alt="" />
                                                    <span class="new-box">new</span>
                                                </a>
                                                <div class="quick-preview">
                                                    <a href="#myModal" data-toggle="modal">Quick view</a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h5>
                                                    <a href="#">Printed Chiffon Dress</a>
                                                </h5>
                                                <div class="product-ratings">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                                <div class="product-price">
                                                    <h2>£ 19.68
                                                    </h2>
                                                </div>
                                                <div class="product-action">
                                                    <ul>
                                                        <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                        <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="single-product">
                                            <div class="product-img">
                                                <a href="#">
                                                    <img src="img/product/1.jpg" alt="" />
                                                    <span class="new-box">new</span>
                                                </a>
                                                <div class="quick-preview">
                                                    <a href="#myModal" data-toggle="modal">Quick view</a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h5>
                                                    <a href="#">Printed Chiffon Dress</a>
                                                </h5>
                                                <div class="product-ratings">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                                <div class="product-price">
                                                    <h2>£ 19.68
                                                    </h2>
                                                </div>
                                                <div class="product-action">
                                                    <ul>
                                                        <li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Add to cart</a></li>
                                                        <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-random" aria-hidden="true"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--热门商品结束--%>

    <%--促销咨询开始--%>
    <div class="about-blog-area mrgn-40">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-12">
                    <div class="about">
                        <div class="section-title">
                            <h2>关于</h2>
                        </div>
                        <div class="about-content">
                            <div class="about-logo">
                                <a href="#">
                                    <img src="img/logo.jpg" alt="" /></a>
                            </div>
                            <h2>posthemes</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.</p>
                            <a href="#">Read More.</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-8 col-sm-12">
                    <div class="section-title">
                        <h2>促销咨询</h2>
                    </div>
                    <div class="row">
                        <div class="blog-carousel carousel-indicator">
                            <div class="col-md-12">
                                <div class="latest-blog">
                                    <div class="latest-block-img">
                                        <a href="#">
                                            <img src="img/4.jpg" alt="" /></a>
                                        <div class="smart-date">
                                            <span class="month">April</span>
                                            <span class="year">2016</span>
                                        </div>
                                    </div>
                                    <div class="latest-block-content">
                                        <h4>
                                            <a href="blog-details.html">Answers to your Questions about...</a>
                                        </h4>
                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum...</p>
                                        <a href="blog-details.html">Read More.</a>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--促销咨询结束--%>
</asp:Content>

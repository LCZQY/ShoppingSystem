﻿


///单个商品源码
var productContentHtml = function (options) {

    var div1 = ' <div class="col-md-12"><div class="single-product" >';
    var img = '<div class="product-img" ><a href="#"><img src="' + options.src + '" alt="" /><span class="new-box">new</span></a><div class="quick-preview"><a href="#myModal" data-toggle="modal">查看详情</a></div></div>';
    var title = '<div class="product-content"><h5 class="product-name"><a href="#">' + options.title + '</a></h5>';
    var star = '<div class="product-ratings"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> </div>';
    var price = '<div class="product-price"><h2>￥' + options.price + '<del>￥' + options.marketPrice + ' </del></h2></div>';
    var action = '<div class="product-action"><ul><li class="cart"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a></li><li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li></ul></div></div>';
    var div2 = '</div></div>';
    var html = div1 + img + title + star + price + action + div2;
    return html;
};

//单个促销咨询源码
var newContentHtml = function (options) {

    var div1 = ' <div class="col-md-6"><div class="latest-blog">';
    var img = '<div class="latest-block-img"><a href="#"><img src="img/4.jpg" alt="" /></a><div class="smart-date"><span class="month">' + options.month + '</span><span class="year">' + options.year + '</span></div></div>';
    var content = '<div class="latest-block-content"><h4><a href="blog-details.html">' + options.title + '</a></h4><p>' + options.content + '</p></div>';
    var div2 = '</div></div>';
    var html = div1 + img + content + div2;
    return html;
};


//组合商品列表
var productList = function (obj) {
    var list = JSON.parse(obj);
    console.log(list, "组合商品列表");
    var html = list === null?'暂无商品': ''; 
    $.each(list, function (index, item) {       
        html += productContentHtml({
            src: item.Path,
            title: item.Title,
            price: item.Price,
            marketPrice: item.MarketPrice            
        });
    });
    $("#carousel").append(html);
};


//组合咨询列表
var newList = function (obj) {
    var list = JSON.parse(obj);
    console.log(list, "组合咨询列表");
    var html = '';
    $.each(list, function (index, item) {
        html += productContentHtml({
            src: item.Path,
            title: item.Title,
            price: item.Price,
            marketPrice: item.MarketPrice
        });
    });
    $("#indicator").append(html);
};
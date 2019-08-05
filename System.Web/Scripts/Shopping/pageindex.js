/*注册*/
var action = false;
$("#registration").on("click", function () {
    action = true;
    $(".registration").show();
    $("#exampleModalLabel").text("用户注册");
    $("#submit").text("注册");
});

/*注册或者登陆*/
$("#submit").on("click", function () {
    //注册
    if (action) {
        var name = $("#name").val();
        if (name === "") {
            alert("用户名不能够为空");
            return false;
        }

        var data = { name: name, nick: $("#nick").val(), pwd: $("#pwd").val(), email: $("#email").val() };
        console.log(data, "-----------------------------!!!!!!!!!!!");
        ajax_request({
            url: 'Aspx/ManagePages/userhandler.ashx?action=add',
            date: data,
            callback: function (e) {
                e = JSON.parse(e);
                if (e.code === 0) {
                    localStorage.setItem("index", name);
                    location.reload();
                } else {
                    $("#tipe").text(e.msg);
                }
            }
        });
    }
    //登陆
    if (!action) {
        var names = $("#name").val();
        if (names === "") {
            alert("用户名不能够为空");
            return false;
        }
        var logindata = { name: names, pwd: $("#pwd").val() };
        console.log(logindata, "-----------------------------!!!!!!!!!!!");
        ajax_request({
            url: 'Aspx/ManagePages/userhandler.ashx?action=login',
            date: logindata,
            callback: function (e) {
                e = JSON.parse(e);      
                if (e.code === 0) {
                    localStorage.setItem("index", names);
                    location.reload();
                    
                } else {                
                    $("#tipe").text(e.msg);
                }
            }
        });
    }
});

/*监听模态框关闭事件*/
$(function () {
    $('#exampleModal').on('hidden.bs.modal', function () {
        $(".registration").hide();
        $("#exampleModalLabel").text("用户登陆");
        $("#submit").text("登陆");
    });
});



$('.look').click(function () {
    alert("000");
});

//$(function () {
//    $('#myModal').on('show.bs.modal', function () {
//          //  alert($('a[href="#myModal"]').text());

      
//    });
//});


//字符串转时间
function getDate(strDate) {
    var date = eval('new Date(' + strDate.replace(/\d+(?=-[^-]+$)/,
        function (a) { return parseInt(a, 10) - 1; }).match(/\d+/g) + ')');
    return date;
}


///单个商品源码
var productContentHtml = function (options) {

    var div1 = ' <div class="col-md-12"><div class="single-product" >';
    var img = '<div class="product-img" ><a href="#"><img src="' + options.src + '" alt="" /><span class="new-box">new</span></a><div  class="quick-preview look"><a href="#myModal" data-toggle="modal" name=' + options.id+'>查看详情</a></div></div>';
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

    var div1 = ' <div class="col-md-12"><div class="latest-blog">';
    var img = '<div class="latest-block-img"><a href="#"><img src="img/4.jpg" alt="" /></a><div class="smart-date"><span class="month">' + options.month + '</span><span class="year">' + options.year + '</span></div></div>';
    var content = '<div class="latest-block-content"><h4><a href="blog-details.html">' + options.title + '</a></h4><p>' + options.content + '</p></div>';
    var div2 = '</div></div>';
    var html = div1 + img + content + div2;
    return html;
};

//组合咨询列表
var newList = function (obj) {
    // var list = JSON.parse(obj);
    // console.log(list, "组合咨询列表");
    var html = '';
    $.each(obj, function (index, item) {
        console.log(item.PushTime, "------------");
        html += newContentHtml({
            month: getDate(item.PushTime).month,
            year: item.PushTime.year,
            title: item.Title,
            content: item.Content
        });
    });
    console.log(html, "2");
    $("#indicator").append(html);
};


//组合商品列表
var productList = function (obj) {
    var list = JSON.parse(obj);
    console.log(list, "组合商品列表");
    var html = list === null ? '暂无商品' : '';
    $.each(list, function (index, item) {
        html += productContentHtml({
            src: item.Path,
            title: item.Title,
            price: item.Price,
            marketPrice: item.MarketPrice,
            id: item.ProductId,
        });
    });
    $("#carousel").append(html);
};



//收藏列表
var favoriteList = function (obj) {
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
    $("#favourite").append(html);
};
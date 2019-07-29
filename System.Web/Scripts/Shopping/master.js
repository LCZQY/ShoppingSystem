/*!
 * master.js
 *  
 * 主用于母版页
 */

var layer;
layui.use(['layer', 'form'], function () {
    layer = layui.layer
     
});

/**
 * PSOT ajax 请求方式
 * @param {any} options
 * data: 对象请求体
 * url: 请求路径
 */
var ajax_request = function (options) {

    $.ajax({
        type: "post",
        async: false,
        datatype: "application/json",
        data: options.data,
        url: options.url,
        success: function (data, textStatus) {
            options.callback(data);
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            console.log(textStatus);
            layer.msg("请求失败");
        }
    });
}
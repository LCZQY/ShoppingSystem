/*!
 * master.js
 *  
 * ������ĸ��ҳ
 */

var layer;
layui.use(['layer', 'form'], function () {
    layer = layui.layer
     
});

/**
 * PSOT ajax ����ʽ
 * @param {any} options
 * data: ����������
 * url: ����·��
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
            layer.msg("����ʧ��");
        }
    });
}
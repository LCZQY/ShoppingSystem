/*!
 * master.js
 *  
 * 主用于layer表格的数据交互
 */


var show_layui_table = function (options) {

    layui.use(['table', 'layer', 'form'], function () {
        var table = layui.table,
            layer = layui.layer,
            form = layui.form;
        var $ = layui.$;

        //列表
        table.render({
            url: options.list_url   
            , method: "POST"
            //, where: { page: 0, limit: 10 }
            , elem: '#test'
            , toolbar: '#toolbarDemo'
            , title: options.title
            , location: true
            , cols: [options.data_cols
                //[
                //    { type: 'checkbox', fixed: 'left' }
                //    , { field: 'UserName', title: '用户名', width: 120, edit: 'text' }
                //    , { field: 'Nick', title: '昵称', width: 120, edit: 'text' }
                //    , { field: 'Email', title: '邮箱', width: 120, edit: 'text' }
                //    , {
                //        field: 'updateTime', title: '更新时间', minwidth: 50, sort: true, templet: function (d) {
                //            return layui.util.toDateString(d.updateTime);
                //        }
                //    }
                //    , { fixed: 'right', title: '操作', toolbar: '#barDemo', width: 150 }
                //]
            ]
            , page: true
        });

        //头工具栏事件
        table.on('toolbar(test)', function (obj) {
            var checkStatus = table.checkStatus(obj.config.id);
            switch (obj.event) {
                //case 'getCheckData':
                //    var data = checkStatus.data;
                //    layer.alert(JSON.stringify(data));
                //    break;
                //case 'getCheckLength':
                //    var data = checkStatus.data;
                //    layer.msg('选中了：' + data.length + ' 个');
                //    break;
                //case 'isAll':
                //    layer.msg(checkStatus.isAll ? '全选' : '未全选');
                //    break;
                case 'add':
                    layer.open({
                        title: '增加用户',
                        /*如果是外部的html，type2，内部，type1*/
                        type: 1,
                        btnAlign: 'c',
                        area: ['400px', '340px'],
                        content: $("#add-main").html()
                        //未做的是去监听表单提交，给后台发送ajax请求
                    }
                    );
                    break;
                case
                    'batchDel'
                    :
                    /*发送ajax请求到后台执行批量删除*/
                    break;
                case
                    'flush'
                    :
                    table.reload('test', {
                        url: options.list_url   
                        , method: "GET"
                    });
                    break;
                case
                    'search'
                    :
                    layer.msg("根据用户名查找");
                    var name = $('input[name="search"]').val();
                    table.reload('test', {
                        url: options.search_url ,
                        where: {
                            name: name,
                        },
                        page: {
                            curr: 1
                        }
                    });
                    break;
            };
        });

        //监听单元格编辑，修改
        table.on('edit(test)', function (obj) {
            var value = obj.value //得到修改后的值
                , data = obj.data //得到所在行所有键值
                , field = obj.field; //得到字段
            $.ajax({
                url: options.update_url, 
                type: 'POST',
                dataType: 'json',
                data: data,
                success: function (e) {
                    if (e.code === 0) {
                        layer.msg(e.msg);
                    } else {
                        layer.msg(e.msg);
                    }
                },
                error: function (e) {
                    layer.msg(e);
                }
            })
        });
        //监听行工具事件
        table.on('tool(test)', function (obj) {
            var data = obj.data;
            if (obj.event === 'del') { //删除
                layer.confirm('亲爱的,你要删除我吗？', function (index) {
                    obj.del();
                    layer.close(index);
                    $.ajax({
                        url: options.delete_url,
                        type: "POST",
                        dataType: "json",
                        data: {
                            id: data.UserId
                        },
                        success: function (e) {
                            if (e.code === 0) {
                                layer.msg(e.msg);
                            } else {
                                layer.msg(e.msg);
                            }
                        },
                        error: function (e) {
                            layer.msg(e);
                        }
                    })
                });
            }
        });
        //添加
        form.on('submit(demo1)', function (data) {
            $.ajax({
                url: options.add_url ,
                type: "POST",
                dataType: "json",
                data: data.field,
                success: function (e) {
                    if (e.code === 0) {
                        layer.msg(e.msg);
                        //  location.reload();
                        window.parent.location.reload();//修改成功后刷新父界面
                    } else {
                        layer.msg(e.msg);
                    }
                },
                error: function (e) {
                    layer.msg(e);
                }
            });
            return false;
        });
    });
}
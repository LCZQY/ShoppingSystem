/*!
 * master.js
 *  
 * ������layer�������ݽ���
 */


var show_layui_table = function (options) {

    layui.use(['table', 'layer', 'form'], function () {
        var table = layui.table,
            layer = layui.layer,
            form = layui.form;
        var $ = layui.$;

        //�б�
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
                //    , { field: 'UserName', title: '�û���', width: 120, edit: 'text' }
                //    , { field: 'Nick', title: '�ǳ�', width: 120, edit: 'text' }
                //    , { field: 'Email', title: '����', width: 120, edit: 'text' }
                //    , {
                //        field: 'updateTime', title: '����ʱ��', minwidth: 50, sort: true, templet: function (d) {
                //            return layui.util.toDateString(d.updateTime);
                //        }
                //    }
                //    , { fixed: 'right', title: '����', toolbar: '#barDemo', width: 150 }
                //]
            ]
            , page: true
        });

        //ͷ�������¼�
        table.on('toolbar(test)', function (obj) {
            var checkStatus = table.checkStatus(obj.config.id);
            switch (obj.event) {
                //case 'getCheckData':
                //    var data = checkStatus.data;
                //    layer.alert(JSON.stringify(data));
                //    break;
                //case 'getCheckLength':
                //    var data = checkStatus.data;
                //    layer.msg('ѡ���ˣ�' + data.length + ' ��');
                //    break;
                //case 'isAll':
                //    layer.msg(checkStatus.isAll ? 'ȫѡ' : 'δȫѡ');
                //    break;
                case 'add':
                    layer.open({
                        title: '�����û�',
                        /*������ⲿ��html��type2���ڲ���type1*/
                        type: 1,
                        btnAlign: 'c',
                        area: ['400px', '340px'],
                        content: $("#add-main").html()
                        //δ������ȥ�������ύ������̨����ajax����
                    }
                    );
                    break;
                case
                    'batchDel'
                    :
                    /*����ajax���󵽺�ִ̨������ɾ��*/
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
                    layer.msg("�����û�������");
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

        //������Ԫ��༭���޸�
        table.on('edit(test)', function (obj) {
            var value = obj.value //�õ��޸ĺ��ֵ
                , data = obj.data //�õ����������м�ֵ
                , field = obj.field; //�õ��ֶ�
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
        //�����й����¼�
        table.on('tool(test)', function (obj) {
            var data = obj.data;
            if (obj.event === 'del') { //ɾ��
                layer.confirm('�װ���,��Ҫɾ������', function (index) {
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
        //���
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
                        window.parent.location.reload();//�޸ĳɹ���ˢ�¸�����
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
using System.BLL;
using System.Collections.Generic;
using System.Common;
using System.Linq;
using System.Model;

namespace System.Web.Aspx.ManagePages
{
    /// <summary>
    /// orderhandler 的摘要说明
    /// </summary>
    public class orderhandler : IHttpHandler
    {

        private OrderService _infoService = CacheControl.Get<OrderService>();
        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            var action = context.Request["action"].ToString();
            switch (action)
            {
                case "send":
                    EditOrderStatusRequest(context);
                    break;
                case "list":
                    ListUsersRequest(context);
                    break;
                case "update":
                    //UpdateUsersRequest(context);
                    break;
                case "delete":
                    //DeleteUsersRequest(context);
                    break;
                case "search":
                    SeachUsersRequest(context);
                    break;
                case "removelist":
                    //DeleteListUsersRequest(context);
                    break;
            }
        }

        /// <summary>
        /// 订单详情列表查询
        /// </summary>
        /// <param name="context"></param>
        public void ListUsersRequest(HttpContext context)
        {

            var page = context.Request.Form["page"];
            var index = context.Request.Form["limit"];
            if (string.IsNullOrWhiteSpace(page) && string.IsNullOrWhiteSpace(index))
            {

                var list = _infoService.OrderDetailJoinList().ToList();
                list = list ?? new List<OrdersDetailExtend> { };
                var res = SerializeHelp.ToTableJson(list);
                context.Response.Write(res);

            }
            else
            {
                var list = _infoService.OrderDetailJoinList().ToList();
                list = list ?? new List<OrdersDetailExtend> { };
                var list1 = list.Skip((int.Parse(page) - 1) * int.Parse(index)).Take(int.Parse(index)).ToList();
                var res = SerializeHelp.ToTableJson(list1, list.Count());
                context.Response.Write(res);
            }
        }

        /// <summary>
        /// 编辑订单状态
        /// </summary>
        /// <param name="context"></param>
        public void EditOrderStatusRequest(HttpContext context)
        {
            var response = new ResponseMessage();

            var id = context.Request.Form["id"];
            var list = _infoService.GetList().Where(y => y.OrdersId == id).SingleOrDefault();
            if (list == null)
            {
                response.code = 101;
                response.msg = "发货失败，不存在该订单信息";
                context.Response.Write(SerializeHelp.ToJson(response));
                return;
            }
            list.States = 2;
            //考虑商品库存 ?
            var update = _infoService.Update(list);
            if (update)
            {
                response.code = 0;
                response.msg = "发货成功";
                context.Response.Write(SerializeHelp.ToJson(response));
            }
            response.code = 500;
            response.msg = "发货失败";
            context.Response.Write(SerializeHelp.ToJson(response));
        }



        /// <summary>
        /// 搜索用户
        /// </summary>
        /// <param name="context"></param>
        public void SeachUsersRequest(HttpContext context)
        {
            var id = context.Request["id"];
            var page = context.Request.Form["page"];
            var index = context.Request.Form["limit"];
            if (string.IsNullOrWhiteSpace(page) && string.IsNullOrWhiteSpace(index))
            {

                var list = _infoService.OrderDetailJoinList().Where(y=> y.OrdersId.Contains(id)).ToList();
                list = list ?? new List<OrdersDetailExtend> { };
                var res = SerializeHelp.ToTableJson(list);
                context.Response.Write(res);

            }
            else
            {
                var list = _infoService.OrderDetailJoinList().Where(y => y.OrdersId.Contains(id)).ToList();
                list = list ?? new List<OrdersDetailExtend> { };
                var list1 = list.Skip((int.Parse(page) - 1) * int.Parse(index)).Take(int.Parse(index)).ToList();
                var res = SerializeHelp.ToTableJson(list1, list.Count());
                context.Response.Write(res);
            }
        }

        ///// <summary>
        /////删除用户
        ///// </summary>
        ///// <param name="context"></param>
        //public void DeleteUsersRequest(HttpContext context)
        //{
        //    var response = new ResponseMessage();
        //    try
        //    {
        //        var id = context.Request["id"];
        //        var del = _infoService.Delete(id);

        //        if (del)
        //        {
        //            response.code = 0;
        //            response.msg = "删除成功";
        //            context.Response.Write(SerializeHelp.ToJson(response));
        //        }
        //        response.code = 500;
        //        response.msg = "删除失败";
        //        context.Response.Write(SerializeHelp.ToJson(response));
        //    }
        //    catch (Exception e)
        //    {
        //        response.code = 500;
        //        response.msg = "操作失败，请重试";
        //        context.Response.Write(SerializeHelp.ToJson(response));
        //    }
        //}



        ///// <summary>
        ///// 修改用户
        ///// </summary>
        ///// <param name="context"></param>
        //public void UpdateUsersRequest(HttpContext context)
        //{
        //    var response = new ResponseMessage();
        //    try
        //    {
        //        string userName = context.Request.Form["UserName"];
        //        string userPwd = context.Request.Form["Pwd"];
        //        string userEmail = context.Request.Form["Email"];
        //        string usernick = context.Request.Form["Nick"];
        //        string id = context.Request.Form["UserId"];
        //        string deliveryId = context.Request.Form["DeliveryId"];
        //        Users userInfo = new Users();
        //        userInfo.UserName = userName;
        //        userInfo.Pwd = userPwd;
        //        userInfo.Email = userEmail;
        //        userInfo.Nick = usernick;
        //        userInfo.DeliveryId = deliveryId;
        //        userInfo.UserId = id;

        //        var edi = _infoService.UpdateUserInfo(userInfo);
        //        response.code = edi == true ? 0 : 500;
        //        response.msg = "修改成功";
        //        context.Response.Write(SerializeHelp.ToJson(response));
        //    }
        //    catch (Exception e)
        //    {
        //        response.code = 500;
        //        response.msg = "修改失败";
        //        context.Response.Write(SerializeHelp.ToJson(response));
        //    }

        //}

        ///// <summary>
        ///// 添加
        ///// </summary>
        ///// <param name="context"></param>
        //public void AddUsersRequest(HttpContext context)
        //{
        //    var response = new ResponseMessage();
        //    try
        //    {
        //        string userName = context.Request.Form["name"];
        //        string userPwd = context.Request.Form["pwd"];
        //        string userEmail = context.Request.Form["email"];
        //        string usernick = context.Request.Form["nick"];
        //        Users userInfo = new Users();
        //        userInfo.UserId = Guid.NewGuid().ToString();
        //        userInfo.UserName = userName;
        //        userInfo.Pwd = userPwd;
        //        userInfo.Email = userEmail;
        //        userInfo.Nick = usernick;
        //        userInfo.DeliveryId = "?";
        //        var add = _infoService.AddUserInfo(userInfo);

        //        response.code = add == true ? 0 : 500;
        //        response.msg = "添加成功";
        //        context.Response.Write(SerializeHelp.ToJson(response));
        //    }
        //    catch (Exception e)
        //    {
        //        response.code = 500;
        //        response.msg = "添加失败";
        //        context.Response.Write(SerializeHelp.ToJson(response));
        //    }
        //}


        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}
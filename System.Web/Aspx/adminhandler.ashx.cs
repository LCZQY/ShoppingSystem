using log4net;
using System.BLL;
using System.Collections.Generic;
using System.Common;
using System.Linq;
using System.Model;

namespace System.Web.Aspx
{
    /// <summary>
    /// adminhandler 管理员数据表业务处理
    /// </summary>
    public class adminhandler : IHttpHandler
    {

        private static readonly ILog _log = LogManager.GetLogger(typeof(adminhandler));
        private AdminUserService _userInfoService = CacheControl.Get<AdminUserService>();

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            var action = context.Request["action"].ToString();
            switch (action)
            {
                case "isexist":
                    AdminUserIsExistRequest(context);
                    break;
                case "add":
                    AddAdminUserRequest(context);
                    break;
                case "list":
                    ListAdminUserRequest(context);
                    break;
                case "update":
                    UpdateAdminUserRequest(context);
                    break;
                case "delete":
                    DeleteAdminUserRequest(context);
                    break;
                case "search":
                    SeachAdminUserRequest(context);
                    break;
                case "removelist":
                    DeleteListAdminUserRequest(context);
                    break;

            }
        }



        /// <summary>
        /// 判断该用户是否存在
        /// </summary>
        /// <param name="context"></param>
        public void AdminUserIsExistRequest(HttpContext context)
        {
            var response = new ResponseMessage<string>();
            try
            {
                string userName = context.Request.Form["UserName"];
                string userPwd = context.Request.Form["Pwd"];
                var list = _userInfoService.GetList().Where(y => y.UserName == userName && y.Pwd == userPwd);
                if (list != null)
                {
                    response.code = 0;
                    response.msg = "登陆成功";
                    response.model = list.FirstOrDefault().Role.ToString();
                    context.Response.Write(SerializeHelp.ToJson(response));
                }
                else
                {
                    response.code = 500;
                    response.msg = "用户名或者密码错误";
                    context.Response.Write(SerializeHelp.ToJson(response));
                }
            }
            catch (Exception e)
            {
                _log.Error("判断该用户是否存在报错 56：" + e.Message);
                response.code = 500;
                response.msg = "请求错误，请重试";
                context.Response.Write(SerializeHelp.ToJson(response));
            }
        }




        /// <summary>
        /// 批量删除
        /// </summary>
        /// <param name="context"></param>
        public void DeleteListAdminUserRequest(HttpContext context)
        {
            // ?
        }


        /// <summary>
        /// 搜索用户
        /// </summary>
        /// <param name="context"></param>
        public void SeachAdminUserRequest(HttpContext context)
        {
            var username = context.Request["name"];
            var list = _userInfoService.GetList().Where(y => y.UserName.Contains(username)).ToList();
            var res = SerializeHelp.ToTableJson<AdminUser>(list);
            context.Response.Write(res);
        }

        /// <summary>
        ///删除用户
        /// </summary>
        /// <param name="context"></param>
        public void DeleteAdminUserRequest(HttpContext context)
        {
            var response = new ResponseMessage();
            try
            {
                var id = context.Request["id"];
                var del = _userInfoService.Delete(id);

                response.code = del == true ? 0 : 500;
                response.msg = "删除成功";
                context.Response.Write(SerializeHelp.ToJson(response));


            }
            catch (Exception e)
            {
                response.code = 500;
                response.msg = "操作失败，请重试";
                context.Response.Write(SerializeHelp.ToJson(response));
            }
        }



        /// <summary>
        /// 修改用户
        /// </summary>
        /// <param name="context"></param>
        public void UpdateAdminUserRequest(HttpContext context)
        {
            var response = new ResponseMessage();
            try
            {

                string userName = context.Request.Form["UserName"];
                string userPwd = context.Request.Form["Pwd"];
                string userEmail = context.Request.Form["Role"];
                string suId = context.Request.Form["SuId"];

                AdminUser userInfo = new AdminUser();
                userInfo.UserName = userName;
                userInfo.Pwd = userPwd;
                userInfo.Role = Convert.ToInt32(userEmail);
                userInfo.SuId = suId;


                var edi = _userInfoService.Update(userInfo);
                if (edi)
                {
                    response.code = 0;
                    response.msg = "修改成功";
                    context.Response.Write(SerializeHelp.ToJson(response));
                    return;
                }
                response.code = 500;
                response.msg = "修改失败";
                context.Response.Write(SerializeHelp.ToJson(response));

            }
            catch (Exception e)
            {
                response.code = 500;
                response.msg = "操作失败，请重试";
                context.Response.Write(SerializeHelp.ToJson(response));
            }

        }

        /// <summary>
        /// 添加用户
        /// </summary>
        /// <param name="context"></param>
        public void AddAdminUserRequest(HttpContext context)
        {
            var response = new ResponseMessage();
            try
            {
                string userName = context.Request.Form["UserName"];
                //string userPwd = context.Request.Form["Pwd"];
                string userEmail = context.Request.Form["Role"];
                string suId = context.Request.Form["SuId"];

                AdminUser userInfo = new AdminUser();
                userInfo.UserName = userName;
                userInfo.Pwd = "123456"; //管理员默认密码
                userInfo.Role = Convert.ToInt32(userEmail);
                userInfo.SuId = suId;

                var add = _userInfoService.Add(userInfo);

                if (add)
                {
                    response.code = 0;
                    response.msg = "添加成功";
                    context.Response.Write(SerializeHelp.ToJson(response));
                    return;
                }
                response.code = 500;
                response.msg = "添加失败";
                context.Response.Write(SerializeHelp.ToJson(response));
            }
            catch (Exception e)
            {
                response.code = 500;
                response.msg = "操作失败，请重试";
                context.Response.Write(SerializeHelp.ToJson(response));
            }

        }

        /// <summary>
        /// 用户列表查询
        /// </summary>
        /// <param name="context"></param>
        public void ListAdminUserRequest(HttpContext context)
        {

            var page = context.Request.Form["page"];
            var index = context.Request.Form["limit"];
            if (string.IsNullOrWhiteSpace(page) && string.IsNullOrWhiteSpace(index))
            {
                List<AdminUser> list = _userInfoService.GetList();
                var res = SerializeHelp.ToTableJson<AdminUser>(list);
                context.Response.Write(res);

            }
            else
            {
                var list = _userInfoService.GetList();
                var list1 = list.Skip((int.Parse(page) - 1) * int.Parse(index)).Take(int.Parse(index)).ToList();
                var res = SerializeHelp.ToTableJson<AdminUser>(list1, list.Count());
                context.Response.Write(res);
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}
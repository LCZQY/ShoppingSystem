using Newtonsoft.Json;
using System.BLL;
using System.Collections.Generic;
using System.Common;
using System.Linq;
using System.Model;
namespace System.Web.Aspx.ManagePages
{
    /// <summary>
    /// userhandler 的摘要说明
    /// </summary>
    public class userhandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            var action = context.Request["action"].ToString();
            switch (action)
            {
                case "add":
                    AddUsersRequest(context);
                    break;
                case "list":
                    ListUsersRequest(context);
                    break;
                case "update":
                    UpdateUsersRequest(context);
                    break;
                case "delete":
                    DeleteUsersRequest(context);
                    break;
                case "search":
                    SeachUsersRequest(context);
                    break;
            }
        }

        /// <summary>
        /// 搜索用户
        /// </summary>
        /// <param name="context"></param>
        public void SeachUsersRequest(HttpContext context)
        {


        }

        /// <summary>
        ///删除用户
        /// </summary>
        /// <param name="context"></param>
        public void DeleteUsersRequest(HttpContext context)
        {


        }



        /// <summary>
        /// 修改用户
        /// </summary>
        /// <param name="context"></param>
        public void UpdateUsersRequest(HttpContext context)
        {


        }

        /// <summary>
        /// 添加用户
        /// </summary>
        /// <param name="context"></param>
        public void AddUsersRequest(HttpContext context)
        {



        }

        /// <summary>
        /// 用户列表查询
        /// </summary>
        /// <param name="context"></param>
        public void ListUsersRequest(HttpContext context)
        {
            UserInfoService UserInfoService = CacheControl.Get<UserInfoService>();
            List<Users> list = UserInfoService.GetList();
            var json = new LayerTableJson
            {
                data = list,
                code = 0,
                count = list.Count(),
                msg = "成功"
            };
            var res = JsonConvert.SerializeObject(json);
            context.Response.Write(res);
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
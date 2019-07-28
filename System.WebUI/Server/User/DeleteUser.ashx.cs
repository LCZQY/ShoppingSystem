using System;
using System.Collections.Generic;
using System.Common;
using System.Linq;
using System.Model;
using System.Web;
using System.BLL;
namespace System.WebUI.server.User
{
    /// <summary>
    /// AddUser 的摘要说明
    /// </summary>
    public class DeleteUser : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            UserInfoService UserInfoService = CacheControl.Get<BLL.UserInfoService>();
            string id = context.Request.QueryString["id"];
            int iid;
            if (int.TryParse(id, out iid))
            {
                if (UserInfoService.DeleteUserInfo(iid))
                {
                    context.Response.Redirect("UserInfoList.ashx");
                }
                else
                {
                    context.Response.Redirect("Error.html");
                }
            }
            else
            {
                context.Response.Redirect("Error.html");
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
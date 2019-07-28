using System;
using System.Collections.Generic;
using System.Linq;
using System.Model;
using System.Web;

namespace System.WebUI.server.User
{
    /// <summary>
    /// AddUser 的摘要说明
    /// </summary>
    public class AddUser : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string userName = context.Request.Form["txtName"];
            string userPwd = context.Request.Form["txtPwd"];
            string userEmail = context.Request.Form["txtMail"];
            Users userInfo = new Users();
            userInfo.UserName = userName;
            userInfo.UserPass = userPwd;
            userInfo.Email = userEmail;
            userInfo.RegTime = DateTime.Now;
            BLL.UserInfoService UserInfoService = new BLL.UserInfoService();
            if (UserInfoService.AddUserInfo(userInfo))
            {
                context.Response.Redirect("UserInfoList.ashx");
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
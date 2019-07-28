using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Model;
using System.Web;

namespace System.WebUI.Server.User
{
    /// <summary>
    /// ShowDetail 的摘要说明
    /// </summary>
    public class ShowDetail : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/html";
            //context.Response.Write("Hello World");
            BLL.UserInfoService UserInfoService = Common.CacheControl.Get<BLL.UserInfoService>();
            string id = context.Request.QueryString["id"];
            int iid;
            if (int.TryParse(id, out iid))
            {
                Users instance = UserInfoService.GetDeail(Convert.ToInt32(id));
                //读取模板文件
                string filePath = context.Request.MapPath("ShowDetail.html");
                string fileCotent = File.ReadAllText(filePath);
                fileCotent = fileCotent.Replace("$username", instance.UserName).Replace("$pwd", instance.UserPass).Replace("$email", instance.Email);
                context.Response.Write(fileCotent);
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
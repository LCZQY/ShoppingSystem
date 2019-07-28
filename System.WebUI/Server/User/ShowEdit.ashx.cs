using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Model;
using System.Web;

namespace System.WebUI.server.User
{
    /// <summary>
    /// AddUser 的摘要说明
    /// </summary>
    public class ShowEdit : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/html";         
            BLL.UserInfoService UserInfoService = Common.CacheControl.Get<BLL.UserInfoService>();
            string id = context.Request.QueryString["id"];
            int iid;
            if (int.TryParse(id, out iid))
            {
                Users instance = UserInfoService.GetDeail(Convert.ToInt32(id));
                //读取模板文件@"..//..//Web//User//UserInfoList.html"
                string filePath = context.Request.MapPath(@"..//..//Web//User//ShowEdit.html");
                string fileCotent = File.ReadAllText(filePath);
                fileCotent = fileCotent.Replace("$username", instance.UserName).Replace("$pwd", instance.UserPass).Replace("$email", instance.Email).Replace("$hid_id", id);
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
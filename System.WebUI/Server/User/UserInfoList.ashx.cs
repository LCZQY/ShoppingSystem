using System;
using System.Collections.Generic;
using System.Common;
using System.Linq;
using System.Web;
using System.BLL;
using System.Text;
using System.Model;
using System.IO;

namespace System.WebUI.server.User
{
    /// <summary>
    /// UserInfoList 的摘要说明
    /// </summary>
    public class UserInfoList : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/html";
            UserInfoService UserInfoService = CacheControl.Get<BLL.UserInfoService>();
            List<Users> list = UserInfoService.GetList();
            StringBuilder sb = new StringBuilder();
            foreach (Users userInfo in list)
            {
                sb.AppendFormat("<tr><td>{0}</td><td>{1}</td><td>{2}</td><td>{3}</td><td>{4}</td><td><a href='ShowDetail.ashx?id={0}'>详细</a></td><td><a href='DeleteUser.ashx?id={0}' class='deletes'>删除</a></td><td><a href='ShowEdit.ashx?id={0}' class='edits'>编辑</a></td></tr>", userInfo.Id, userInfo.UserName, userInfo.UserPass, userInfo.Email, userInfo.RegTime);
            }
            //读取模板文件
            string filePath = context.Request.MapPath(@"..//..//Web//User//UserInfoList.html");
            string fileCotent = File.ReadAllText(filePath);
            fileCotent = fileCotent.Replace("@tbody", sb.ToString());
            context.Response.Write(fileCotent);
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
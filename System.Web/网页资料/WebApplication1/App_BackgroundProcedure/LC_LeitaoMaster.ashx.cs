using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1.App_BackgroundProcedure
{
    /// <summary>
    /// Handler3 的摘要说明
    /// </summary>
    public class Handler3 : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            // 退出后如何清除所有Cookies，再次进入
            var LC_clear = context.Request["ClearCookies"];
            if (!string.IsNullOrEmpty(LC_clear))
            {
                //一般处理程序获取Cookies
                HttpCookie cok =context.Request.Cookies["name"];
                context.Response.Write("true");
              // TimeSpan ts = new TimeSpan(-1, 0, 0, 0); // TimeSpan 表示一个时间间隔
               // cok.Expires = DateTime.Now.Add(ts);  // 清除Cookies
                
                //cok.Values.Remove("name");
                //context.Response.AppendCookie(cok);
                // cok.Values["name"]= null;
               // context.Response.Write(cok.Values["name"]);
           
               // context.Response.Cookies.Clear();        
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
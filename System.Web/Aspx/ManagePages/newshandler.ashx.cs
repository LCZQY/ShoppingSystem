using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace System.Web.Aspx.ManagePages
{
    /// <summary>
    /// newshandler 的摘要说明
    /// </summary>
    public class newshandler : IHttpHandler
    {
        // 促销应该何商品挂钩，下个版本可优化

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            context.Response.Write("Hello World");
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
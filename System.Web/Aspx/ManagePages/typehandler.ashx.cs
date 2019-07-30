using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Common;
using System.Linq;
using System.Model;
using System.Web;

namespace System.Web.Aspx.ManagePages
{
    /// <summary>
    /// Handler1 的摘要说明
    /// </summary>
    public class typehandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
           
        }


        public string get()
        {
            return "0";
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
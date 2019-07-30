using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.Services; // 方便前台调用方法！
using WebApplication1.App_aspx.App_HomePage; //引用数据库类
using System.Security.Cryptography;  //MD5加密
using System.Text; // MD5加密 
using System.Web.SessionState; // 创建Session


namespace WebApplication1.App_BackgroundProcedure
{
    /// <summary>
    /// Handler1 的摘要说明
    /// </summary>
    public class Handler1 : IHttpHandler, IReadOnlySessionState  //IReadOnlySessionState 用于创建Session
    {
        SQLDBC sql = new SQLDBC();
        public void ProcessRequest(HttpContext context)
        {                         
            context.Response.ContentType = "text/plain";
            var UserPasswrod = context.Request["LogIng"];
            string[] msg = UserPasswrod.Split('*');

            bool LogUsername = sql.ExistDate("select UserName from LC_USERS  where UserName='" + msg[0] + "' or Phone='"+msg[0]+"'  ");
            if (LogUsername==false)
            {
                context.Response.Write("NOExistUser");
            }
            else
            {
                string passwrod = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(msg[1].ToString(), "MD5");
                bool falge = sql.ExistDate("select UserName from LC_USERS  where Passwrod='" + passwrod + "' and (Phone='" + msg[0] + "' or UserName='" + msg[0] + "') ");
                if (falge == true)
                {
                    //如果该权限是管理员就直接跳转到管理员主页！!

                    string LC_RertrictID = sql.ReturnValue("select RertrictID from LC_USERS where  UserName='" + msg[0].ToString() + "' or Phone='" + msg[0].ToString() + "' ");

                    //买家和卖家
                    if (LC_RertrictID == "buy")
                    {
                        string LC_name = sql.ReturnValue("select UserName from LC_USERS where  UserName='" + msg[0].ToString() + "' or Phone='" + msg[0].ToString() + "' ");
                        // context.Response.Write("该参数是:" + LC_name);
                        //HttpCookie Cookename = new HttpCookie("name");
                        //Cookename.Value = LC_name;
                        //context.Response.AppendCookie(Cookename);
                        AddCookiesValie("name","keys",LC_name,context);
                        context.Response.Write("true");
                    }

                    //管理员
                    if (LC_RertrictID == "management")
                    {
                        context.Response.Write("APP_Administrator/Administrator.aspx");
                    }
                    //admin
                    if (LC_RertrictID == "admin")
                    {

                    }
                }
                else
                {
                    context.Response.Write("false");
                }
                //判断权限

            }
        }

        [WebMethod]
        public static string stin()
        {
            return "201712457";
        }

        //创建COOkies值的方法  
        public void AddCookiesValie(string cookKeyParent, string cooKeySon, string value, HttpContext context)
        {         ///*Cookies要乱码【先编码在解码！！】*/
            HttpCookie ishfsfhg = new HttpCookie(cookKeyParent);
            ishfsfhg.Values.Add(cooKeySon, context.Server.UrlEncode(value));
            context.Response.AppendCookie(ishfsfhg);
        }
        //获取COOkies值的方法
        public string CookiesValues(string cookKey, HttpContext context)
        {
            HttpCookie qwqws = HttpContext.Current.Request.Cookies[cookKey];
            string sfdsre = context.Server.UrlDecode(qwqws.Values[0].ToString().Trim().ToLower());
            // context.Response.Write("展示图片是Cookies的值是:" + sfdsre + "     ");
            return sfdsre;
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
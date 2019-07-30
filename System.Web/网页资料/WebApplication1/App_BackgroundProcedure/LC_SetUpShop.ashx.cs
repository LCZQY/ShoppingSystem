using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.App_aspx.App_HomePage; //引用数据库类
using System.Text;

namespace WebApplication1.App_BackgroundProcedure
{
    /// <summary>
    /// Handler2 的摘要说明
    /// </summary>
    public class Handler2 : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            SQLDBC sql = new SQLDBC();
            //context.Response.Write("用户名是:"+LC_UserName);
            var Adminstrator = "";
            //管理员界面操作数据库[]
            Adminstrator = context.Request["Adminstra"];
         

            var LC_Shoping = context.Request["Shopping"];
            //判断权限
            if (LC_Shoping == "0")
            {
               // var _usernaem = context.Request.Cookies["name"].Values[0];
                  var _usernaem =CookiesValues("name",context);
                string LC_RertrictIDs = sql.ReturnValue("select RestrictID from Vi_RESTRICT where UserName='" + _usernaem + "'");
                if (LC_RertrictIDs == "buy") {
                    context.Response.Write("buy");
                }
                else if (LC_RertrictIDs == "sell"){
                    context.Response.Write("sell");
                }
                else if (LC_RertrictIDs == "management"){
                    context.Response.Write("management");
                }
                else {
                    context.Response.Write("admin");
                }
            }

            var LC_Repulse = context.Request["Refuse"];
            
            // 管理员同意后台操作！
            if (!string.IsNullOrEmpty(LC_Repulse))
            {
                var LC_AdminUserName = context.Request["Variate"]; //是否允许该用户名成为卖家
                if (LC_Repulse == "YES")
                {
                  
                        //context.Response.Write("接受成功！该用户名是:" + LC_AdminUserName);
                        sql.RunProc("update  LC_UPDATE_RESTRICT set ApplyResult=1 where UserName='" + LC_AdminUserName + "' ");
                        //context.Response.Write("您已经是卖家了！");      
                        string BuyPro = CookiesValues("Sell", context);
                        if (!string.IsNullOrEmpty(BuyPro))
                        {
                            sql.RunProc("update LC_USERS set RedliningNuber='" + BuyPro[0] + "', RedNuberPasswrod='" + BuyPro[1] + "' where UserID='" + BuyPro[0] + "'");
                            context.Response.Write("支付数据保存成功！");
                        }                   
                }
                if (LC_Repulse == "NO")
                {
                    sql.RunProc("update  LC_UPDATE_RESTRICT set ApplyResult=2 where UserName='" + LC_AdminUserName + "' ");
                    context.Response.Write("申请失败!");
                }
            }
            else
            {
               // context.Response.Write("你正在提交申请成为卖家！");
                if (Adminstrator != "0")  //申请成为卖家页面
                {
                    try
                    {
                        var LC_UserName = context.Request["Variate"];

                        
                        // 申明一个信号，表示已经提交申请成为卖家,同时把该用户的支付信息添加到用户表中
                        if (LC_UserName != "亲，请登陆")
                        {
                            string[] BuyPro = LC_UserName.Split('*');

                            //存入支付账号和密码到COOkies中
                            AddCookiesValie("Sell", "keys", BuyPro[1] + "*" + BuyPro[2], context);
                                             
                            //该申请的用户只能是买家
                            string sell = sql.ReturnValue("select RertrictID from LC_USERS where UserName='" + BuyPro[0] + "'");
                            if (sell == "buy")
                            {
                                HttpCookie ShopCookie = new HttpCookie("Upshop");
                                ShopCookie.Value = "arrhy";
                                context.Response.AppendCookie(ShopCookie);
                                context.Response.Write("数据保存成功！");
                            }
                            else
                            {
                                context.Response.Write("您已经是卖家了!不能重复提交您的信息哦!");
                                return;
                            }
                        }
                        else
                        {
                            context.Response.Write("请登录！");
                        }
                    }
                    catch { };
                }
            }
        }
        //创建COOkies值的方法  
        public void AddCookiesValie(string cookKeyParent, string cooKeySon, string value, HttpContext context)
        {  ///*Cookies要乱码【先编码在解码！！】*/
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
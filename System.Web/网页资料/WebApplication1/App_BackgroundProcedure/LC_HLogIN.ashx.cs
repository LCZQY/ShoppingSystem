using System;
using System.Collections.Generic;
using System.Security.Cryptography;  //MD5加密
using System.Text; // MD5加密
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.Services; // 方便前台调用方法！

using WebApplication1.App_aspx.App_HomePage;
using System.Runtime.InteropServices;



namespace WebApplication1.BackgroundProcedure
{
    /// <summary>
    /// Handler1 的摘要说明
    /// </summary>
    public class Handler1 : IHttpHandler
    {
        SQLDBC sql = new SQLDBC();
        public string newpasswrod; //MD5密码
        public string RertrictID = "buy"; //--权限ID【默认是买家】
        public bool falge;
        public string inputPhone;       
        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            var intNunmber = context.Request["Number"];

            //对比用户名是否重复

            if (intNunmber == "2")
            {
                var username = context.Request["Variate"];
                // context.Response.Write("号码:" + inputPhone);
                falge = sql.ExistDate("select UserName from  LC_USERS where UserName='" + username + "' ");
                if (falge)
                {
                    context.Response.Write("true");
                }
                else
                {
                    context.Response.Write("false");
                }
            }


            if (intNunmber == "1")
            {          
                //输入完成后就和数据库中的号码比对
                var inputPhone = context.Request["Variate"];
               // context.Response.Write("号码:" + inputPhone);
                falge = sql.ExistDate("select Phone from  LC_USERS where Phone='" + inputPhone + "' ");
                if (falge)
                {
                    context.Response.Write("true");
                }
                else
                {
                    context.Response.Write("false");
                }
            }
            else
                if (intNunmber == "3")
                {
                    var msg = context.Request["Variate"];
                    string[] LC_UserMessage = msg.Split('*');
                    if (LC_UserMessage[0] != "" && LC_UserMessage[1] != "" && LC_UserMessage[2] != "")
                    {
                        context.Response.Write("接受的是:" + msg);
                        //插入用户注册基本信息
                        try
                        {
                            newpasswrod = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(LC_UserMessage[1], "MD5");

                            #region+++
                            //用户ID=精确到毫秒+1000以内的随机数【保证不重复】
                            DateTime now = DateTime.Now;
                            string Msec = now.ToString(@"fff"); //精确到毫秒
                            Random sj = new Random();
                            string UserID = now.ToString() + "/" + Msec + "*" + sj.Next(1000);
                            //context.Response.Write("<script>alert('你的ID是:" + UserID + "','" + Msec + "')</script>");
                            #endregion
                            context.Response.Write("电话！" + LC_UserMessage[0].ToString());
                            //插入用户表数据
                            sql.RunProc("insert into LC_USERS(UserID,Passwrod,UserName,Phone,RertrictID) values('" + UserID + "','" + newpasswrod + "','" + LC_UserMessage[2].ToString() + "','" + LC_UserMessage[0].ToString() + "','" + RertrictID + "')");

                            context.Response.Write("注册成功！");
                            //当他注册成功后！就把权限编程表的数据插入
                            string UpRestrictID = now + "/" + Msec; //权限ID
                            sql.RunProc("insert into LC_UPDATE_RESTRICT(UpdateResirictID,UserName) values('" + UpRestrictID + "','" + LC_UserMessage[2].ToString() + "');");
                            context.Response.Write("变更表更新成功！");
                        }
                        catch (Exception el)
                        {
                            context.Response.Write("出入信息时候发生错误:" + el + " ");
                        }
                    }
                    else
                    {
                        context.Response.Write("<script>alert('为空！')</script>");
                    }
                }
        }
       /* 2使用高精度计时器API
       //用于得到高精度计时器（如果存在这样的计时器）的值。微软对这个API解释就是每秒钟某个计数器增长的数值。
        //如果安装的硬件不支持高精度计时器,函数将返回false需要配合另一个API函数QueryPerformanceFrequency。
        [DllImport("kernel32.dll ")]
        static extern bool QueryPerformanceCounter(ref long lpPerformanceCount);
        [DllImport("kernel32")]
        static extern bool QueryPerformanceFrequency(ref long PerformanceFrequency);
         
        public void 测试2()
        {
            long a = 0;
            QueryPerformanceFrequency(ref a);
            long b = 0, c = 0;
            QueryPerformanceCounter(ref b);
            Thread.Sleep(2719);
            QueryPerformanceCounter(ref c);
            Console.WriteLine((c - b) / (decimal)a);  //单位秒
        }*/
    
        public static string Check()
        {
            int flag = 1;
            if (flag == 1)
            {
                return "1";
            }
            else
            {
                return "0";
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
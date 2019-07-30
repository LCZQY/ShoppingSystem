using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.App_aspx.App_HomePage; //引用数据库类
using System.Text;

namespace WebApplication1.App_BackgroundProcedure
{
    /// <summary>
    /// LC_Administrator 的摘要说明
    /// </summary>
    public class LC_Administrator : IHttpHandler
    {
        
        public SqlDataAdapter LC_AdminisAdater;
        public DataTable LC_AdminisTablel;
        public StringBuilder LC_AdminisString;
        SQLDBC sql = new SQLDBC();
        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            var msg = context.Request["Adminstra"];
            if (msg == "0")
            {
                LC_AdminisAdater = new SqlDataAdapter();
                LC_AdminisTablel = new DataTable();
                LC_AdminisString = new StringBuilder();
                LC_AdminisAdater = sql.CreateDa("select  u.UserName,Phone,RedliningNuber,SUBSTRING(UpdateResirictID,1,16) as Times,DATEDIFF(DAY,cast(SUBSTRING(UpdateResirictID,1,16) as datetime) , GETDATE()) as days  from  LC_USERS as u join LC_UPDATE_RESTRICT as r on r.UserName=u.UserName  and RertrictID='Sell'");
                LC_AdminisAdater.Fill(LC_AdminisTablel);
                LC_AdminisString.Append("<table class='table'>");
                LC_AdminisString.Append("<tr>");
                LC_AdminisString.Append("<th>用户名</th><th>号码</th><th>收款账号</th><th>申请时间</th><th>成为卖家</th>");
                LC_AdminisString.Append("</tr>");
                foreach (DataRow item in LC_AdminisTablel.Rows)
                {
                    LC_AdminisString.Append("<tr><td>" + item[0].ToString() + "</td><td>" + item[1].ToString() + "</td><td>" + item[2].ToString() + "</td><td>" + item[3].ToString() + "</td><td>" + item[4].ToString() + "/天</td><td><a href='#' class='DeleteSell' type='" + item[0].ToString() + "'>删除</a></td></tr>");
                }
                LC_AdminisString.Append("</table>");
                context.Response.Write(LC_AdminisString.ToString());
            }
            else if (msg == "1")
            {
                var _usernames = context.Request["Deletes"];
                sql.RunProc("update LC_USERS set RertrictID='buy'  where UserName='"+_usernames.ToString()+"' ");
                context.Response.Write("DELETE");
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
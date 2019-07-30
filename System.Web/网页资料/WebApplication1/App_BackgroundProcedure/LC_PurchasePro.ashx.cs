using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using WebApplication1.App_aspx.App_HomePage;
using System.Text;

namespace WebApplication1.App_BackgroundProcedure
{
    /// <summary>
    /// Handler4 的摘要说明
    /// </summary>
    public class Handler4 : IHttpHandler
    {

        SQLDBC sql = new SQLDBC();
        public SqlDataAdapter LC_PurAdater;
        public DataTable LC_PurTable;
        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            var LC_Chunk = context.Request["Chunk"];
            if (LC_Chunk == "0")
            {
                var msg = context.Request["Variate"];
                if (!string.IsNullOrEmpty(msg))
                {
                    string Count = sql.ReturnValue("select COUNT(ShoppingID) from LC_SHOPPING_CART"); //购物车数量
                    string LC_Commd = sql.ReturnValue("select CommodityDescribe  from LC_COMMODITY  where CommodityID='" + msg + "'");
                    string LC_ProSellPrice = sql.ReturnValue("select SellPrice  from LC_COMMODITY  where CommodityID='" + msg + "'");
                    //判断该商品ID是否存在
                    if (!string.IsNullOrEmpty(LC_Commd))
                    {
                        LC_PurAdater = new SqlDataAdapter();
                        LC_PurTable = new DataTable();
                        LC_PurAdater = sql.CreateDa("SELECT Paths,ShowImage,Repertory FROM VI_DetailImg WHERE CommodityID='" + msg + "';");
                        LC_PurAdater.Fill(LC_PurTable);
                        string LC_Detailimgs = "";  //展示图
                        string LC_ShowImags = "";  //详细图
                        int LC_Repertory = 0; //库存
                        foreach (DataRow item in LC_PurTable.Rows)
                        {
                            LC_ShowImags = item[1].ToString();
                            LC_Detailimgs += item[0].ToString() + "*";
                            LC_Repertory = int.Parse(item[2].ToString());
                        }
                        //显示评论
                        string LC_EvaluteID = sql.ReturnValue("select EvaluteID from LC_EVALUATE where CommodityID='" + msg + "'");
                        StringBuilder LC_ReviewString = new StringBuilder();
                        if (!string.IsNullOrEmpty(LC_EvaluteID))
                        {
                            SqlDataAdapter LC_ReviewAdater = new SqlDataAdapter();
                            LC_ReviewAdater = sql.CreateDa("select UserName,EvaluateDescribe,COUNT(UserName) from LC_EVALUATE_DETAIL where EvaluteID='" + LC_EvaluteID + "' group by UserName,EvaluateDescribe");
                            DataTable LC_ReviewTable = new DataTable();
                            LC_ReviewAdater.Fill(LC_ReviewTable);
                            LC_ReviewString.Append("<tr><th>评论</th><th>用户名</th></tr>");
                            foreach (DataRow item in LC_ReviewTable.Rows)
                            {
                                LC_ReviewString.Append("<tr>");                   
                                LC_ReviewString.Append("<td>" + item[1] + "</td>");
                                LC_ReviewString.Append("<td>" + item[0] + "</td>");
                                LC_ReviewString.Append("</tr>");
                                LC_ReviewString.Append("*" + item[2] + "");
                            }
                        }
                        else
                        {
                            LC_ReviewString.Append("暂无评论，赶紧抢沙发！");
                        }

                        LC_Detailimgs = LC_ShowImags + "*" + LC_Commd + "*" + LC_ProSellPrice + "*" + LC_Detailimgs.Remove(LC_Detailimgs.Length - 1, 1) + "*" + Count + "*" + LC_ReviewString.ToString()+"*"+LC_Repertory;
                        context.Response.Write(LC_Detailimgs);
                    }
                    else
                    {
                        context.Response.Write("该商品ID不存在！");
                    }

                }
            }
            if (LC_Chunk == "1")
            {
                try
                {
                     //string _Username=context.Request.Cookies["name"].Values[0];
                     string _Username=CookiesValues("name",context);

                    if (!string.IsNullOrEmpty(_Username))
                    {
                        context.Response.Write("True");
                    }
                    else
                    {
                        context.Response.Write("False");
                    }

                }
                catch(Exception el)
                {
                    context.Response.Write("False");
                }
            
            }
           //点击时候我就把这个商品ID储存到项目中  【步骤二】
           //var acx = context.Request["acx"];
           //HttpCookie axcoolkoie = new HttpCookie("proidss");
           //axcoolkoie.Value = acx;
           //context.Response.AppendCookie(axcoolkoie);

       
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
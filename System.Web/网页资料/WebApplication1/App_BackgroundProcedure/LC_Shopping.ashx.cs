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
    /// LC__Shopping 的摘要说明
    /// </summary>
    public class LC__Shopping : IHttpHandler
    {
        SQLDBC sql = new SQLDBC();
        public SqlDataAdapter LC_ShoppAdater;
        //读取购物车表
        public DataTable LC_ShoppTable;
        public StringBuilder LC_ShoppString;
        //读取商品表
        public SqlDataAdapter LC_Commoddater;
        public DataTable LC_CommodTable;

        public StringBuilder LC_commString;
        public void ProcessRequest(HttpContext context)
        {
          
            var LC_Shoping = context.Request["Shopping"];
            var _usernaem = "";
            try
            {
             //    _usernaem = context.Request.Cookies["name"].Values[0].ToString();

                 _usernaem = CookiesValues("name", context);
                 AddCookiesValie("shopping", "keys", _usernaem, context);
            }
            catch
            {
                context.Response.Write("请登录！");
            }          
            if (LC_Shoping == "1")
            {
                var LC_Shop = context.Request["PurShopp"];
                if (!string.IsNullOrEmpty(LC_Shop.ToString()))
                {

                    string[] LC_ShopProid = LC_Shop.Split('*');
                    int sumPrice = int.Parse(LC_ShopProid[1]) * int.Parse(LC_ShopProid[2]); //总价格       
                    AddCookiesValie("shopPirce", "keys", sumPrice.ToString(), context);
                    try
                    {   //如果有尺码这些的话,直接在后面给条件就好
                        string LC_ShowProNunber = sql.ReturnValue("select CommodityID from LC_SHOPPING_CART  where CommodityID='" + LC_ShopProid[0] + "' ");
                        if (!string.IsNullOrEmpty(LC_ShowProNunber))
                        {
                            sql.RunProc("update  LC_SHOPPING_CART  set  AddNumber=AddNumber+" + int.Parse(LC_ShopProid[1]) + " where CommodityID='" + LC_ShopProid[0] + "'");
                        }
                        else
                        {
                            sql.RunProc("insert into LC_SHOPPING_CART values('" + _usernaem + DateTime.Now.ToString() + "','" + _usernaem + "','" + LC_ShopProid[0] + "','" + DateTime.Now.ToString() + "','" + LC_ShopProid[1] + "'," + LC_ShopProid[2] + ")");
                        }
                    }
                    catch (Exception el)
                    {
                        context.Response.Write("购物车数据添加失败！" + el);
                    }
                    // context.Response.Write("购物车表插入成功！");
                }
            }
            else if (LC_Shoping == "2")
            {
                _usernaem = CookiesValues("shopping", context).ToString();
                string LC_Detailimgs = "";
                //购物车表
                LC_ShoppString = new StringBuilder();
                LC_ShoppAdater = new SqlDataAdapter();
                LC_ShoppTable = new DataTable();
                LC_ShoppAdater = sql.CreateDa("SELECT CommodityID,AddNumber,Price,ShoppingID FROM LC_SHOPPING_CART WHERE UserName='" + _usernaem + "';");
                LC_ShoppAdater.Fill(LC_ShoppTable);
                foreach (DataRow item in LC_ShoppTable.Rows)
                {
                     //商品表
                        LC_Commoddater = new SqlDataAdapter();
                        LC_CommodTable = new DataTable();
                        LC_commString = new StringBuilder();
                        LC_Commoddater = sql.CreateDa("SELECT ShowImage,CommodityDescribe FROM LC_COMMODITY WHERE CommodityID='" + item[0] + "';");
                        LC_Commoddater.Fill(LC_CommodTable);

                        int sumPrice = int.Parse(CookiesValues("shopPirce", context));
                        string Showimgs = "";
                        string Describe = "";
                        foreach (DataRow itemConmm in LC_CommodTable.Rows)
                        {
                            Showimgs = itemConmm[0].ToString();
                            Describe = itemConmm[1].ToString();
                        }
                        LC_ShoppString.Append("<tr>");
                        LC_ShoppString.Append("<td class='text-center'>");
                        LC_ShoppString.Append("<input type='checkbox' class='input-sm input-group'  value='" + item[0] + "' /></td>");
                        LC_ShoppString.Append("<td>");
                        LC_ShoppString.Append("<img src='" + Showimgs + "' class='img-responsive' width='50' /></td>");
                        LC_ShoppString.Append("<td>" + Describe + "</td>");

                        LC_ShoppString.Append("<td class='"+item[0]+"'>" + item[2] + "</td>");
                        LC_ShoppString.Append("<td  class='text-center'>");
                        LC_ShoppString.Append("<div class='col-md-5 '>");
                        LC_ShoppString.Append("<button class='btn  btn-default PurSubtract btn-sm pull-left' ><strong>-</strong></button>");
                        LC_ShoppString.Append("<input class='col-md-3 Number input-group text-center input-sm  pull-left'   value='" + item[1] + "' />");
                        LC_ShoppString.Append("<button class='btn PurPuls  btn-default btn-sm' ><strong>+</strong></button>");
                        LC_ShoppString.Append("</div>");
                        LC_ShoppString.Append("</td>");
                        LC_ShoppString.Append("<td><b class='h4' style='color:red;'>"+int.Parse(item[1].ToString())*int.Parse(item[2].ToString())+"</b></td>");
                        LC_ShoppString.Append("<td><a href='#' class='Delete' delete='" + item[3] + "'>删除</a></td>");
                        LC_ShoppString.Append("</tr>");  
                   
                }
                context.Response.Write(LC_ShoppString.ToString());
                    
            }
                //删除
            else if (LC_Shoping == "3")
            {
                var LC_DeletePro=context.Request["deleteProid"];
                sql.RunProc("delete from LC_SHOPPING_CART where ShoppingID='" + LC_DeletePro + "'  ");
                context.Response.Write("Yes");

            }
        }

        // 【如果cookies值超过该最大的照数，就会把超出部分截取掉！！】
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
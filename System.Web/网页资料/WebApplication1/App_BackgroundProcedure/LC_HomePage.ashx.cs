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
    /// LC_HomePage 的摘要说明
    /// </summary>
    public class LC_HomePage : IHttpHandler
    {
        public StringBuilder LC_ShowImagsSquare; //组合标签
        public SqlDataAdapter LC_ShowApter;
        public DataTable LC_ShowTable;
        SQLDBC sql = new SQLDBC();

        public void ProcessRequest(HttpContext context)
        
        {
            context.Response.ContentType = "text/plain";
            var ShowOrHome = context.Request["HomeOrShowPro"];

            if (ShowOrHome == "2")
            {
                try
                {


                    //var _UserName = context.Request["name"];
                    var _UserName = CookiesValues("name",context);
                    if (!string.IsNullOrEmpty(_UserName))
                    {
                        context.Response.Write("True");
                    }
                    else
                    {
                        context.Response.Write("False");
                    }                    
                }
                catch
                {
                    context.Response.Write("False");
                }
            }
            #region             
            if (ShowOrHome == "0")
            {
                var msg = context.Request["HomeSeek"];

                if (!string.IsNullOrEmpty(msg))
                {
                    AddCookiesValie("homeseek", "keys", msg, context);
               
                }
                else
                {
                    msg = CookiesValues("homeseek", context);      
         
                }
               
            //}
            //else
            //{                
                    try
                    {
                      // var msg=CookiesValues("homeseek",context);
                        // 直接给后台搜索条件!!! 即可
                        LC_ShowImagsSquare = new StringBuilder();
                        LC_ShowApter = new SqlDataAdapter();
                        LC_ShowTable = new DataTable();                          
                        LC_ShowApter = sql.CreateDa("select CommodityID,ShowImage,SellPrice,CommodityDescribe from LC_COMMODITY where  CommodityName like '%" + msg + "%' or CommodityCategory like '%" + msg + "%' or CommodityDescribe like '%" + msg + "%'    ");
                        LC_ShowApter.Fill(LC_ShowTable);
                        foreach (DataRow item in LC_ShowTable.Rows)
                        {
                            LC_ShowImagsSquare.Append("<div class='col-md-3 ShowTable'><table class='table table-bordered  ShowBorder'>");
                            LC_ShowImagsSquare.Append("<tr><td><a href='LC_PurchasePro.aspx?LC_ProID=" + item[0] + "'  target='_blank' ><img src='" + item[1] + "' class='img-responsive' /></a></td></tr>");
                            LC_ShowImagsSquare.Append("<tr><td><span class='ShowImagePrice  h3'>" + item[2] + "</span></td></tr>");
                            LC_ShowImagsSquare.Append("<tr><td><a class='ShowImageText' href='LC_PurchasePro.aspx?LC_ProID=" + item[0] + "'>" + item[3] + "</a></td></tr>");
                            LC_ShowImagsSquare.Append("</table></div>");
                        }
                       
                    }
                    catch (Exception el)
                    {
                        context.Response.Write("<script>alert(" + el + ")</script>");
                    }
                    context.Response.Write(LC_ShowImagsSquare.ToString());

            }
            #endregion
            #region             
            if (ShowOrHome == "1")
            {  

                var msg = context.Request["HomeSeek"];
                SqlDataAdapter HomeAdapt = new SqlDataAdapter();
                HomeAdapt = sql.CreateDa("select Nav_SonUrlName,Nav_ParentName from  Nav_Parent  join  Nav_Son ON Nav_Parent.Nav_ParentID= Nav_Son.Nav_ParentID JOIN  Nav_SonUrl on Nav_SonUrl.Nav_SONID=Nav_Son.Nav_SnoID");
                DataTable HomeTable = new DataTable();
                HomeAdapt.Fill(HomeTable);
                string joinString = "";
                StringBuilder LeftNav = new StringBuilder();
                                
                foreach (DataRow item in HomeTable.Rows)
                {
                    LeftNav.Append("<div>");
                    LeftNav.Append("<div class='con_st'>");
                    LeftNav.Append("<ul class='brand_list'>");

                    ////子导航标题
                    //string[] SonTile = item[1].ToString().Split('/');
                    //for (int j = 0; j < SonTile.Length; j++)
                    //{                    
                        //子导航内容
                        string[] one = item[0].ToString().Split('*');
                        for (int i = 0; i < one.Length; i++)
                        {
                         LeftNav.Append("<li class='brand_name'><h3>男装</h3></li>");
                        joinString = one[i].Replace(" ", "/");
                        string[] cheage = joinString.Split('/');
                        LeftNav.Append("<li class='brand_content'>");
                        for (var k = 0; k < cheage.Length; k++)
                        {
                            LeftNav.Append("<span><a href='#'>" + cheage[k] + "</a></span>");
                        }
                        LeftNav.Append("</li>");
                     }
                     
                  //}
                    LeftNav.Append("</ul></div>");
                    LeftNav.Append("</div>");
                }          
                context.Response.Write(LeftNav.ToString());
            }
            #endregion
            if(ShowOrHome=="3")
            {
                var msg = context.Request["HomeSeek"];
                string pros = CookiesValues("homeseek", context);
                string Tsq = "";
                if (msg.IndexOf('*') > -1)
                {
                    string[] ShowPrice = msg.Split('*');
              
                     Tsq="select CommodityID,ShowImage,SellPrice,CommodityDescribe from LC_COMMODITY  where  SellPrice  between " + int.Parse(ShowPrice[0]) + " and  " + int.Parse(ShowPrice[1]) + " and(CommodityName like '%" + pros + "%' or CommodityCategory like '%" + pros + "%' or CommodityDescribe like '%" + pros + "%')";     
                }
                else
                {
                    string OrderBy = "";
                    //倒序
                    if (msg == "HighToLow")
                    {
                        OrderBy = "order by SellPrice desc";
                    }
                    //正序
                    else
                    {
                        OrderBy = "order by SellPrice";
                    }
                    Tsq = "select CommodityID,ShowImage,SellPrice,CommodityDescribe from LC_COMMODITY where  CommodityName like '%" + pros + "%' or CommodityCategory like '%" + pros + "%' or CommodityDescribe like '%" + pros + "%' " + OrderBy + "";
                }
                try
                {
                    LC_ShowImagsSquare = new StringBuilder();
                    LC_ShowApter = new SqlDataAdapter();
                    LC_ShowTable = new DataTable();
                    LC_ShowApter = sql.CreateDa(Tsq);
                    LC_ShowApter.Fill(LC_ShowTable);
                    foreach (DataRow item in LC_ShowTable.Rows)
                    {
                        LC_ShowImagsSquare.Append("<div class='col-md-3 ShowTable'><table class='table table-bordered  ShowBorder'>");
                        LC_ShowImagsSquare.Append("<tr><td><a href='LC_PurchasePro.aspx?LC_ProID=" + item[0] + "'  target='_blank' ><img src='" + item[1] + "' class='img-responsive' /></a></td></tr>");
                        LC_ShowImagsSquare.Append("<tr><td><span class='ShowImagePrice  h3'>" + item[2] + "</span></td></tr>");
                        LC_ShowImagsSquare.Append("<tr><td><a class='ShowImageText' href='LC_PurchasePro.aspx?LC_ProID=" + item[0] + "'>" + item[3] + "</a></td></tr>");
                        LC_ShowImagsSquare.Append("</table></div>");
                    }
                }
                catch (Exception el)
                {
                    context.Response.Write(" ");
                }
                context.Response.Write(LC_ShowImagsSquare.ToString());
        
  }






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
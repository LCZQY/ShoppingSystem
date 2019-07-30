using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using WebApplication1.App_aspx.App_HomePage;

namespace WebApplication1.App_BackgroundProcedure
{
    /// <summary>
    /// MY 的摘要说明
    /// </summary>
    public class MY : IHttpHandler
    {
        SQLDBC sql = new SQLDBC();    
        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            var msg = context.Request["My"];
         
            if (msg == "0")
            {   //判断是几个商品
                StringBuilder MYdelivery = new StringBuilder();

                var LC_MyProid = context.Request["myproOne"];
                var LC_MyNunber = context.Request["myproTwo"];
                //var LC_MyPrice = context.Request["myproThree"];
                
                //&& LC_MyPrice.IndexOf('*') > -1
                if (LC_MyProid.IndexOf('*') > -1 && LC_MyNunber.IndexOf('*') > -1 )
                {
                    string[] ArryCommid = LC_MyProid.Split('*');
                    string[] ArryProNuber = LC_MyNunber.Split('*');
                  ///  string[] ArryPrice = LC_MyPrice.Split('*');
                    
                    for (int i = 0; i < ArryCommid.Length; i++)
                    {

                           //商品描述 
                            string LC_CommodityDescribe = sql.ReturnValue("select CommodityDescribe from  LC_COMMODITY where CommodityID='" + ArryCommid[i] + "'   ");
                           //判断是否是已发货
                            string lc_consignment = sql.ReturnValue("select consignment from LC_BILL where CommodityID='" + ArryCommid[i] + "'");
                            ///商品信息
                            SqlDataAdapter LC_Myadpter = sql.CreateDa("select ShowImage,CommodityDescribe,SellPrice from LC_COMMODITY where CommodityID='" + ArryCommid[i] + "'");                             
                            DataTable LC_MyTable = new DataTable();
                            LC_Myadpter.Fill(LC_MyTable);
                            string LC_Prostring = "";                        
                            foreach (DataRow item in LC_MyTable.Rows)
                            {
                                            
                                LC_Prostring += "<tr>" +
                                                         "<td><img src='" + item[0].ToString() + "' name='" + lc_consignment + "' class='img-responsive pull-left' width='50' /><span>" + LC_CommodityDescribe + "</span></td>" +
                                                         "<td>" + item[2].ToString() + "</td>" +
                                                         "<td>" + ArryProNuber[i] + "</td>" +
                                                         "<td>" + int.Parse(item[2].ToString())*int.Parse(ArryProNuber[i]) + "</td>" +
                                                         "<td><button type='button' id='" + ArryCommid[i] + "'  class='" + lc_consignment + " MyDelivery btn btn-default btn-xs'>确认收货</button></td>" +
                                                         "</tr>";                                                                                    
                            }
                            context.Response.Write(LC_Prostring);
                    }
                }
               //一个商品
                else
                {
                    string lc_consignment = sql.ReturnValue("select consignment from LC_BILL where CommodityID='" + LC_MyProid + "'");
                    ///商品信息
                    SqlDataAdapter LC_Myadpter = sql.CreateDa("select ShowImage,CommodityName,CommodityDescribe,SellPrice from LC_COMMODITY where CommodityID='" + LC_MyProid + "'");
                    DataTable LC_MyTable = new DataTable();
                    LC_Myadpter.Fill(LC_MyTable);
                    string LC_Prostring = "";
                    foreach (DataRow item in LC_MyTable.Rows)
                    {
                        LC_Prostring += "<tr>" +
                                                 "<td><img src='" + item[0].ToString() + "' class='img-responsive pull-left' width='50' /><span>" + item[1].ToString() + "</span></td>" +
                                                 "<td>" + item[3] + "</td>" +
                                                 "<td>" + LC_MyNunber + "</td>" +
                                                 "<td>" + int.Parse(item[3].ToString()) * int.Parse(LC_MyNunber) + "</td>" + ")" +
                                                 "<td ><button type='button' id='" + LC_MyProid + "'  class='" + lc_consignment + " MyDelivery btn btn-default btn-xs'>确认收货</button></td>" +
                                                 "</tr>";
                        // LC_Prostring += item[0] + "*" + item[1] + "*" + item[2] + "*" + item[3];                       
                    }
                    context.Response.Write(LC_Prostring);
                    //判断是否是已发货
                //    string lc_consignment = sql.ReturnValue("select consignment from LC_BILL where CommodityID='" + LC_MyProid + "'");
                //    ///商品信息
                //    SqlDataAdapter LC_Myadpter = sql.CreateDa("select ShowImage,CommodityName,CommodityDescribe,SellPrice from LC_COMMODITY where CommodityID='" + LC_MyProid + "'");
                //    DataTable LC_MyTable = new DataTable();
                //    LC_Myadpter.Fill(LC_MyTable);
                //    string LC_Prostring = "";
                //    foreach (DataRow item in LC_MyTable.Rows)
                //    {
                //        LC_Prostring += item[0] + "*" + item[1] + "*" + item[2] + "*" + item[3];
                //    }
                //    context.Response.Write(LC_Prostring + "*" + lc_consignment);
                }
            }
            else if (msg == "1")
            {
                try
                {
                    var LC_MyProid = context.Request["mypro"];
                    //用户名
                    //var _username = context.Request.Cookies["name"].Values[0].ToString();
                     var _username=CookiesValues("name",context);
                    //评价表ID规则: 用户名+随机数
                    Random sj = new Random();
                    string ran = sj.Next(100, 999).ToString();
                    string LC_Evaluteid = ran + _username;
                    //详细表ID规则:用户名+当前时间
                    string LC_Detailid = _username + DateTime.Now.ToString();
                    //评价内容
                    var LC_discuss = context.Request["Mydiscuss"];
                    sql.RunProc("insert into LC_EVALUATE values('" + LC_Evaluteid + "','" + LC_MyProid + "')");
                    sql.RunProc("insert into LC_EVALUATE_DETAIL values('" + LC_Detailid + "','" + LC_Evaluteid + "','" + _username + "','" + LC_discuss + "')");
                    context.Response.Write("true");
                }
                catch {
                    context.Response.Write("请登录！");
                }
            
            }else if(msg=="2")
            {            

                 string MyTrtd = "";
                 string LC_BillConsiID="";
                 string CommodityID = "";
               /****该商品的信息*****/
                 string LC_CommodityName=sql.ReturnValue("select CommodityName from LC_COMMODITY where CommodityID in(select CommodityID from LC_BILL  where consignment='NO')");
               /***账单表中的内容****/
                SqlDataAdapter LC_billAdpter=new SqlDataAdapter();
                LC_billAdpter = sql.CreateDa("select UserName,ShowImage,ConsigneeID,BuyNumber,BuyPrice,CommodityID from LC_BILL  where consignment='NO'");
                DataTable LC_billDataTable=new DataTable();
                LC_billAdpter.Fill(LC_billDataTable);
                foreach (DataRow item in LC_billDataTable.Rows)
                 {   LC_BillConsiID=item[2].ToString();
                     MyTrtd += "<tr>" +
                         "<td><label>"+item[0]+"</label></td>"+
                         "<td><img src='" + item[1] + "' class='img-responsive pull-left' width='50' /><span>" + LC_CommodityName + "</span></td>" +
                         "<td>" + item[3] + "</td>" +                    
                         "<td>" + item[4] + "</td>" + ")";
                     CommodityID = item[5].ToString();
                     //收件人号码和姓名，地址                     
                     SqlDataAdapter LC_consignAdpter = new SqlDataAdapter();
                     LC_consignAdpter = sql.CreateDa("select ConsigneeName,ConsigneeAdrees,ConsigneePhone  from LC_CONSIGNEE where ConsigneeID='" + LC_BillConsiID + "'");
                     DataTable LC_consignTable = new DataTable();
                     LC_consignAdpter.Fill(LC_consignTable);
                     foreach (DataRow temp in LC_consignTable.Rows)
                     {
                         MyTrtd += "<td>" + temp[0] + "</td>" +
                                 "<td>" + temp[1] + "</td>" +
                                 "<td>" + temp[2] + "</td>" +
                                 "<td class='" + CommodityID + "'><button type='button'    class='btn btn-default Immediately btn-xs'>立即发货</button></td>" +
                                 "</tr>";
                     }
                }         
                context.Response.Write(MyTrtd.ToString());
            }
            else if (msg == "3")
            {
                var LC_setPro = context.Request["UPdateconsignment"];
                sql.RunProc("update LC_BILL  set consignment='YES' where CommodityID='"+LC_setPro+"'");
                context.Response.Write("已经发货........");
            }                         
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
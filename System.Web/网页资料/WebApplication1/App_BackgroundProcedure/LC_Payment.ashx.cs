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
    /// Handler5 的摘要说明
    /// </summary>
    public class Handler5 : IHttpHandler
    {
        
        
        SQLDBC sql = new SQLDBC();
        private string LC_Site;
        private SqlDataAdapter LC_Payadter;
        private DataTable LC_Paytable;
        private StringBuilder LC_PayStringBuilder;
        private string LC_PayUsername;
        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            var LC_category = context.Request["category"];

            if (LC_category == "0") //把数据区里分开
            {
                LC_PayStringBuilder = new StringBuilder();
                LC_Payadter = new SqlDataAdapter();
                LC_Paytable = new DataTable();
                try
                {
                    //用户名
              //      LC_PayUsername = context.Request.Cookies["name"].Values[0].ToString();
                      LC_PayUsername =CookiesValues("name",context).ToString();
                    AddCookiesValie("username", "one", LC_PayUsername, context);
                }
                catch
                {
                    context.Response.Write("请登录！");
                }
                //  context.Response.Write("用户名:" + LC_PayUsername);
                
                if (!string.IsNullOrEmpty(LC_PayUsername))
                {
                    //如果该用户存在收货信息,就直接把地址等信息发给前台
                    if (!string.IsNullOrEmpty(sql.ReturnValue("select ConsigneeName from LC_CONSIGNEE where UserName='" + LC_PayUsername + "'")))
                    {

                        LC_Payadter = new SqlDataAdapter();
                        LC_Payadter = sql.CreateDa("select ConsigneeAdrees,ConsigneePhone,ConsigneeName,DefultAdrees,ConsigneeID from LC_CONSIGNEE where UserName='" + LC_PayUsername + "'");
                        LC_Payadter.Fill(LC_Paytable);

                        foreach (DataRow item in LC_Paytable.Rows)
                        {

                            LC_PayStringBuilder.Append("<tr><td colspan='3' class='col-md-12'><div class='col-md-12'>");
                            LC_PayStringBuilder.Append("<input type='radio' class='radio  input-sm pull-left' name='" + item[4] + "' value='" + item[3] + "'   /> ");
                            LC_PayStringBuilder.Append("<div class='col-md-4 text-left LC_paaddress'>" + item[0] + "</div>");
                            LC_PayStringBuilder.Append("<div class='col-md-2'><label class='LC_payname'>(" + item[2] + "收)</label></div>");
                            LC_PayStringBuilder.Append("<div class='col-md-2'><label class='LC_payUnmber'>" + item[1] + "</label></div>");
                            LC_PayStringBuilder.Append("<div class='col-md-1  pull-right tab-content text-center'><a href='javascript:;' class='h6  DeleteAdrees'>删除</a></div>");
                            LC_PayStringBuilder.Append("</div>");
                            LC_PayStringBuilder.Append("</td></tr>");
                        }
                        LC_PayStringBuilder.Append("<tr><td>");
                        LC_PayStringBuilder.Append("<button  id='ButtonLoad'  class='btn  btn-success  btn-xs' data-toggle='modal' data-target='#myModal'><span class='glyphicon glyphicon-plus'></span>添加新地址 </button></td></tr>");
                        context.Response.Write(LC_PayStringBuilder.ToString() + "*");
                    }
                    //如果不存在地址的话就，让用户添加
                    else
                    {
                        LC_PayStringBuilder.Append("<tr><td>");
                        LC_PayStringBuilder.Append("<button  id='ButtonLoad'  class='btn  btn-success btn-xs' data-toggle='modal' data-target='#myModal'>添加新地址</button></td></tr>");
                        context.Response.Write(LC_PayStringBuilder.ToString() + "*");
                    }

                    var msg = context.Request["Pay"]; //商品ID  ;   
                    /********************
                       如果说msg当中存在‘*’就是加入购物车后购买的，不存在就是立即购买的！！！【会报错】
                    **********************/
                    try
                    {    //这个是加入【购物车】之后购买的！               
                        int indexof = msg.IndexOf('*');
                        if (msg.IndexOf('*') > -1)
                        {
                            //商品ID
                            string[] LC_msg = msg.Split('*');
                            //商品数量
                            string[] unber = context.Request["Payber"].Split('*');
                            for (int i = 0; i < LC_msg.Length - 1; i++)
                            {

                                ///商品信息
                                SqlDataAdapter LC_Pro = sql.CreateDa("select ShowImage,CommodityName,SellPrice,CommodityDescribe from LC_COMMODITY where CommodityID='" + LC_msg[i] + "'");
                                DataTable LCproTable = new DataTable();
                                LC_Pro.Fill(LCproTable);
                                StringBuilder LC_Prostring = new StringBuilder();

                                string pric = "";
                                foreach (DataRow item in LCproTable.Rows)
                                {
                                    LC_Prostring.Append("<tr>");
                                    LC_Prostring.Append("<td class='text-center'><img src='" + item[0] + "' class='img-responsive pull-left' width='50' /><span>" + item[3] + "</span></td>");
                                    LC_Prostring.Append("<td class='text-center'>" + item[2] + "</td>");
                                    LC_Prostring.Append("<td class='text-center'>" + unber[i] + "</td>");
                                    pric = item[2].ToString();
                                }
                                LC_Prostring.Append("<td  class='text-center LC_sum'>" + int.Parse(pric.ToString()) * int.Parse(unber[i]) + "</td>");
                                LC_Prostring.Append("</tr>");
                                //商品！
                                context.Response.Write(LC_Prostring.ToString());
                            }
                        }
                        else
                        {
                            // 这个是直接购买的！！！

                            ///商品信息
                            SqlDataAdapter LC_Pro = sql.CreateDa("select ShowImage,CommodityName,SellPrice,CommodityDescribe from LC_COMMODITY where CommodityID='" + msg + "'");
                            DataTable LCproTable = new DataTable();
                            LC_Pro.Fill(LCproTable);
                            StringBuilder LC_Prostring = new StringBuilder();
                            string unber = context.Request["Payber"];
                            string pric = "";
                            foreach (DataRow item in LCproTable.Rows)
                            {
                                LC_Prostring.Append("<tr>");
                                LC_Prostring.Append("<td><img src='" + item[0] + "' class='img-responsive pull-left' width='50' /><span >" + item[3] + "</span></td>");
                                LC_Prostring.Append("<td>" + item[2] + "</td>");
                                LC_Prostring.Append("<td>" + unber + "</td>");
                                pric = item[2].ToString();
                            }
                            LC_Prostring.Append("<td class='LC_sum'>" + int.Parse(pric.ToString()) * int.Parse(unber) + "</td>");
                            LC_Prostring.Append("</tr>");
                            //商品！
                            context.Response.Write(LC_Prostring.ToString());
                        }
                    }
                    catch (Exception el)
                    {
                        context.Response.Write("字符截取错误:" + el);
                    }

                }
                else
                {
                    context.Response.Write("请登录！");

                }
            }
            else if (LC_category == "1")
            {
                //收货人地址信息
                var LC_Aderss = context.Request["CONSIGNEE"];
                LC_PayUsername = CookiesValues("username", context);
                if (!string.IsNullOrEmpty(LC_Aderss))
                {
                    string[] AdreeMsg = LC_Aderss.Split('*');
                    //收件人ID
                    string LC_ConsigneeID = AdreeMsg[1] + DateTime.Now.ToString();
                    sql.RunProc("insert into LC_CONSIGNEE values('" + LC_ConsigneeID + "','" + LC_PayUsername + "','" + AdreeMsg[1] + "','" + AdreeMsg[0] + "','" + AdreeMsg[2] + "','" + AdreeMsg[3] + "')");
                    context.Response.Write("成功！");

                }
            } //支付宝绑定
            else if (LC_category == "2")
            {

                LC_PayUsername = CookiesValues("username", context);
                string LC_RedliningNubers = sql.ReturnValue("select RedliningNuber from LC_USERS where UserName='" + LC_PayUsername + "'");
                if (!string.IsNullOrEmpty(LC_RedliningNubers))
                {
                    context.Response.Write(LC_RedliningNubers);
                }
                else
                {
                    context.Response.Write("NULL");
                }
            }
            else if (LC_category == "3")//添加支付宝信息
            {
                LC_PayUsername = CookiesValues("username", context);
                var LC_buybuy = context.Request["baybay"].Split('*');
                sql.RunProc("update  LC_USERS set RedliningNuber='" + LC_buybuy[0] + "',RedNuberPasswrod=" + LC_buybuy[1] + " where UserName='" + LC_PayUsername + "' ");
                context.Response.Write("修改成功！");

            }
            else if (LC_category == "4")  //对比密码，ss返回余额
            {
                LC_PayUsername = CookiesValues("username", context);
                var LC_Passwrod = context.Request["paypasswrod"].ToString();
                string Sqlpasswrod = sql.ReturnValue("select RedNuberPasswrod from LC_USERS where UserName='" + LC_PayUsername + "' ");
                if (LC_Passwrod == Sqlpasswrod)
                {
                    string Balance = sql.ReturnValue("select Balance from LC_USERS where UserName='" + LC_PayUsername + "' ");
                    context.Response.Write(int.Parse(Balance));
                }
                else
                {
                    context.Response.Write("Eroor");
                }
            }
            else if (LC_category == "5") // 减掉支出
            { 


                LC_PayUsername = CookiesValues("username", context);
                var LC_Consume = context.Request["consume"];
                sql.RunProc("update  LC_USERS set Balance=" + decimal.Parse(LC_Consume) + " where UserName='" + LC_PayUsername + "' ");
                context.Response.Write("账户余额修改成功！");  

            }
              //修改余额
            else if (LC_category == "6") // 减掉支出
            {
                LC_PayUsername = CookiesValues("username", context);
                var LC_Balance = context.Request["consume"];
                sql.RunProc("update  LC_USERS set Balance=" + LC_Balance+ " where UserName='" + LC_PayUsername + "' ");
                context.Response.Write("修改成功！");
            }
            else if (LC_category == "7") 
            {  
                
                LC_PayUsername = CookiesValues("username", context); // 用户名
                //商品ID:
                var LC_CommID = context.Request["CommID"];
                //数量
                var LC_ProNuber = context.Request["ProNuber"];
                //价格
               // var LC_Price = context.Request["Price"];                        
                /***在修改账户余额的时候就应该把账单表的数据添加完成！在卖家的《今日订单中》直接查找这些数据即可点击发货就把该商品id传到我的类淘中显示我要收货
                 如果是卖家该用户的账户余额应该增加相印的金额！！！！
                /********应该先找到该商品的商家，然后买家支付多少该商家就盈利多少！！！********/
                if (LC_CommID.IndexOf('*') > -1 && LC_ProNuber.IndexOf('*') > -1 )
                {       //  
                    string[] ArryCommid = LC_CommID.Substring(0, LC_CommID.Length - 1).Split('*');
                    string[] ArryProNuber = LC_ProNuber.Substring(0, LC_ProNuber.Length - 1).Split('*');
                  //  string[] ArryPrice = LC_Price.Substring(0, LC_Price.Length - 1).Split('*');
                    Random sj = new Random();
     
                    for (int i = 0; i < ArryCommid.Length; i++)
                    {
                        //插入用户的账单！ 到时候直接查询权限就可以知道是收入还是支出
                        //商品价格
                        int pricrBill = int.Parse(sql.ReturnValue("select SellPrice from LC_COMMODITY where CommodityID='" + ArryCommid[i] + "'"));
                        //图片ID
                        string LC_BillImgs = sql.ReturnValue("select ShowImage from LC_COMMODITY where CommodityID='" + ArryCommid[i] + "'");
                        //收件人ID
                        string LC_BillConsigneeID = sql.ReturnValue("select ConsigneeID from LC_CONSIGNEE where UserName='" + LC_PayUsername + "'");
                        //账单ID规则:时间精确到秒                      
                        sql.RunProc("insert into LC_BILL values('" + DateTime.Now.ToString("yyyyMMddhhmmss") + sj.Next(1000).ToString() + "','" + LC_BillImgs + "','" + ArryCommid[i] + "','" + LC_PayUsername + "','" + DateTime.Now.ToString() + "'," + ArryProNuber[i] + "," + pricrBill * int.Parse(ArryProNuber[i]) + ",'" + LC_BillConsigneeID + "','NO')");                                             
                    }
                    context.Response.Write("多个数据账单表插入成功!");                                                                                
                }
                else
                {                                    
                        //单个商品
                       int pricrBill = int.Parse(sql.ReturnValue("select SellPrice from LC_COMMODITY where CommodityID='" + LC_CommID + "'"));
                        //图片ID
                        string LC_BillImgs = sql.ReturnValue("select ShowImage from LC_COMMODITY where CommodityID='" + LC_CommID + "'");
                        //收件人ID
                        string LC_BillConsigneeID = sql.ReturnValue("select ConsigneeID from LC_CONSIGNEE where UserName='" + LC_PayUsername + "'");
                        //账单ID规则:时间精确到秒
                        //插入用户的账单！ 到时候直接查询权限就可以知道是收入还是支出
               
                        sql.RunProc("insert into LC_BILL values('" + DateTime.Now.ToString("yyyyMMddhhmmss") + "','" + LC_BillImgs + "','" + LC_CommID + "','" + LC_PayUsername + "','" + DateTime.Now.ToString() + "'," + LC_ProNuber + "," + pricrBill + ",'" + LC_BillConsigneeID + "','NO')");
                        context.Response.Write("账单表插入成功!");
                        
                        //找到该商品对应的用户名 [收件人ID为空]  [用过卖家姓名找到该卖家的用户名]   
                       // string LC_SeellUsername = sql.ReturnValue("select UserName from LC_COMMODITY where CommodityID='" + ProidOrunber_Arry[0] + "'");
                        //sql.RunProc("insert into LC_BILL(ShowImage,CommodityID,UserName,PaymentTime,BuyNumber,BuyPrice) values('" + LC_BillImgs + "','" + ProidOrunber_Arry[0] + "','" + LC_SeellUsername + "'," + DateTime.Now.ToString() + "," + int.Parse(ProidOrunber_Arry[1]) + "," + pricrBill + ")");

                        //修改卖家的账户余额
                        //sql.RunProc("update  LC_USERS set Balance=Balance+" + pricrBill + " where UserName='" + LC_SeellUsername + "' ");
                        //context.Response.Write("卖家的账户余额修改成功！");
                              
                
                }
            }
            else if (LC_category == "8")  //修改用户的默认地址
            {
                // 先修改原来的默认地址，在添加新的默认地址
               string LC_ConsigneenID=sql.ReturnValue("select ConsigneeID from LC_CONSIGNEE where DefultAdrees='1'");
               sql.RunProc("update LC_CONSIGNEE set DefultAdrees='0' where ConsigneeID='" + LC_ConsigneenID + "'");
               var msg = context.Request["Addressid"];
                //新增默认地址
              sql.RunProc("update LC_CONSIGNEE set DefultAdrees='1' where ConsigneeID='" + msg + "'");
              context.Response.Write("Ture");                        
            }
            else if (LC_category == "9")  //删除用户地址
            {
                var msg = context.Request["Addressid"];
                sql.RunProc("delete from LC_CONSIGNEE  where ConsigneeID='" + msg + "'");              
                context.Response.Write("Ture");
            }
        }

        ///生成商品账单
        //private string UsrProAdrees(string pro, HttpContext context)
        //{
        //    SqlDataAdapter LC_Pro = sql.CreateDa("select ShowImage,CommodityName,SellPrice,CommodityDescribe from LC_COMMODITY where CommodityID='" + pro + "'");

        //    DataTable LCproTable = new DataTable();
        //    LC_Pro.Fill(LCproTable);
        //    StringBuilder LC_Prostring = new StringBuilder();
        //    int unbe = 0;
        //    try
        //    {
        //        unbe = int.Parse(context.Request["Payber"]);
        //    }
        //    catch
        //    {
        //        context.Response.Write("数据转化失败！");
        //    }
        //    string pric = "";
        //    foreach (DataRow item in LCproTable.Rows)
        //    {

        //        LC_Prostring.Append("<tr>");
        //        LC_Prostring.Append("<td><img src='" + item[0] + "' class='img-responsive pull-left' width='50' /><span>" + item[3] + "</span></td>");
        //        LC_Prostring.Append("<td>" + item[2] + "</td>");
        //        LC_Prostring.Append("<td>" + unbe + "</td>");
        //        pric = item[2].ToString();

        //    }
        //    if (!string.IsNullOrEmpty(pric))
        //    {
        //        LC_Prostring.Append("<td id='LC_sum'>" + int.Parse(pric.ToString()) * unbe + "</td>");
        //        LC_Prostring.Append("</tr>");
        //    }
        //    //商品！
        //    // context.Response.Write(LC_Prostring.ToString());                                
        //    return LC_Prostring.ToString();
        //}



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
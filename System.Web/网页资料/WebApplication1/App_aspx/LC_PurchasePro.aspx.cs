using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using WebApplication1.App_aspx.App_HomePage;
using System.Text;
using System.Web.Services;

namespace WebApplication1.App_aspx
{
    public partial class LC__PurchasePro : System.Web.UI.Page
    {
        public string price;
         
        public string PurTitleNav; //商品导航    
        public StringBuilder LC_PurTtileNav; //组合标签
        public SqlDataAdapter LC_PurApter;
        public DataTable LC_PurTable;
        SQLDBC sql = new SQLDBC();                     
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {            
                LC_PurTtileNav = new StringBuilder();
                LC_PurApter = new SqlDataAdapter();
                LC_PurTable = new DataTable();
                try
                {                
                    LC_PurApter = sql.CreateDa("select CommodityCategory  from LC_COMMODITY_CATEGORY where  MinuteID=''");
                    LC_PurApter.Fill(LC_PurTable);
                    LC_PurTtileNav.Append("<div class='col-md-1'><a href='#'>首页</a></div>");
                    foreach (DataRow item in LC_PurTable.Rows)
                    {
                        LC_PurTtileNav.Append("<div class='col-md-1'><a href='#'>" + item[0].ToString() + "</a></div>");
                    }
                    PurTitleNav = LC_PurTtileNav.ToString();
                }
                catch (Exception el)
                {
                    Response.Write("<script>alert(" + el + ")</script>");
                }
            }
        }


        //[WebMethod]  //获取到该方法组合标签返回到前台！！【步骤三】
        //public static string datavlaues()
        //{
        //    string LCpur="";
        //    SQLDBC sql = new SQLDBC();
        //    SqlDataAdapter LC_PurAdater = new SqlDataAdapter();
        //    DataTable LC_PurTable = new DataTable();
        //    string LC_Detailimgs = "";
        //    string LC_ShowImags = "";
        //    string LC_Repertory = "";
        //    /********************************/
        //    HttpCookie dfdf = HttpContext.Current.Request.Cookies["proidss"];
        //    string fg = dfdf.Values[0].ToString();
        //    /******/
        //    if (!string.IsNullOrEmpty(fg))
        //    {
        //        string LC_Commd = sql.ReturnValue("select CommodityDescribe  from LC_COMMODITY  where CommodityID='" + fg + "'");
        //        string LC_ProSellPrice = sql.ReturnValue("select SellPrice  from LC_COMMODITY  where CommodityID='" + fg + "'");
        //        //判断该商品ID是否存在
        //        if (!string.IsNullOrEmpty(LC_Commd))
        //        {
        //            LC_PurAdater = sql.CreateDa("SELECT Paths,ShowImage,Repertory FROM VI_DetailImg WHERE CommodityID='" + fg + "';");
        //            LC_PurAdater.Fill(LC_PurTable);               
                    
        //            foreach (DataRow item in LC_PurTable.Rows)
        //            {
        //                LC_ShowImags = item[1].ToString();
        //                LC_Detailimgs += item[0].ToString() + "*";
        //                LC_Repertory = item[2].ToString();
        //            }
        //            LC_Detailimgs = LC_ShowImags + "*" + LC_Commd + "*" + LC_ProSellPrice + "*" +LC_Repertory+"*"+ LC_Detailimgs.Remove(LC_Detailimgs.Length - 1, 1);
        //            LCpur =LC_Detailimgs;
        //        }
        //        else
        //        {
        //            LCpur = "该商品不存在";
        //        }
        //    }
        //    else
        //    {
        //        LCpur = "该Cookies值为空,请检查是否创建该COOkies";
        //    }
        //    return LCpur;

          
        //}
    }
}
//protected void Page_PreInit(object sender, EventArgs e)
//        {
//            Response.Write("<script>alert('我是第一次处理本页')</script>");        
//        }
//        protected void Page_PreRender(object sender, EventArgs e)
//        {

//            if (!string.IsNullOrEmpty(hidden1.Value))
//            {
//                Response.Write("<script>alert('商品id：" + hidden1.Value + "')</script>");
//            }
//            else
//            {
//                Response.Write("<script>alert('商品ID为空！')</script>");
//            }                       
//        }
//        //卸载之时获取 
//        protected void  Page_Unload(object sender, EventArgs e)
//        {
//           // Response.Write("<script>alert('卸载之时获取！')</script>");        
//        }
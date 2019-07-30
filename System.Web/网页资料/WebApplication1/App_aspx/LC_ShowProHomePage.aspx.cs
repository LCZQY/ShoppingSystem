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


namespace WebApplication1.App_aspx
{
     public partial class LC_ShowProHomePage : System.Web.UI.Page
    {
    //public string DisplaySquare; //显示图片
    //public StringBuilder LC_ShowImagsSquare; //组合标签
    //public SqlDataAdapter LC_ShowApter;
    //public DataTable LC_ShowTable;
    //SQLDBC sql = new SQLDBC();
     protected void Page_Load(object sender, EventArgs e)
    {
    //       //if (!IsPostBack)
    //{
    //    try
    //    {              
    //        // 直接给后台搜索条件!!! 即可
    //        LC_ShowImagsSquare = new StringBuilder();
    //        LC_ShowApter = new SqlDataAdapter();
    //        LC_ShowTable = new DataTable();
    //        LC_ShowApter = sql.CreateDa("select CommodityID,ShowImage,SellPrice,CommodityDescribe from LC_COMMODITY");
    //        LC_ShowApter.Fill(LC_ShowTable);

    //        LC_ShowImagsSquare.Append("<!--商品展示开始-->");
    //        foreach (DataRow item in LC_ShowTable.Rows)
    //        {
    //            LC_ShowImagsSquare.Append("<div class='col-md-3 ShowTable'><table class='table table-bordered  ShowBorder'>");
    //            LC_ShowImagsSquare.Append("<tr><td><a href='LC_PurchasePro.aspx?LC_ProID=" + item[0] + "'  target='_blank' ><img src='" + item[1] + "' class='img-responsive' /></a></td></tr>");
    //            LC_ShowImagsSquare.Append("<tr><td><span class='ShowImagePrice  h3'>" + item[2] + "</span></td></tr>");
    //            LC_ShowImagsSquare.Append("<tr><td><a class='ShowImageText' href='LC_PurchasePro.aspx?LC_ProID=" + item[0] + "'>" + item[3] + "</a></td></tr>");
    //            LC_ShowImagsSquare.Append("</table></div>");
    //        }
    //        DisplaySquare = LC_ShowImagsSquare.ToString();
    //    }
    //    catch (Exception el)
    //    {
    //        Response.Write("<script>alert(" + el + ")</script>");
    //    }




    //}
     }
   }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using WebApplication1.App_aspx.App_HomePage;
using System.Web.SessionState; //使用Sestion

namespace WebApplication1
{
    /// <summary>
    /// Handler1 的摘要说明
    /// </summary>
    public class Handler1 : IHttpHandler, IReadOnlySessionState
    {
      
        SQLDBC sql = new SQLDBC();
        private string OpetionsSon; //商品二级类别
        private SqlDataAdapter LC_Sonadter;
        private DataTable LC_Sontable;

        /* 商品表的字段*/
       private string LC_CommodityID; //商品ID
       private string LC_MerchantName; //卖家姓名
       private string LC_CommodityName;//商品名
       private string LC_CommodityCategory; //商品类别     
       private string LC_ShowImage;  //展示图          
       private string LC_DetailImageID;//详细图ID      
       private decimal LC_CostPrice; //成本价
       private decimal LC_SellPrice;//销售价
       private string LC_Repertory; //库存
       private string LC_CommodityDescribe; //商品描述
       private DateTime LC_UploadingTime; //上架时间
       private string LC_CommodityState; //商品描述            
       private string _username; //用户名
       
        public void ProcessRequest(HttpContext context)
       {
        
            //一般程序都是从头开始执行！！变量的存储会在程序重新运行的时候清空！！！！！
               context.Response.ContentType = "text/plain";              
                   //_username = context.Request.Cookies["name"].Values[0].ToString();              
               _username = CookiesValues("name",context).ToString();
               if (_username == "0")
               {
                   context.Response.Write("请登录！");
               }
               ///详细图片ID 
               string DetailImageID = (int)(char)_username[0] + DateTime.Now.ToShortDateString(); // 详细图片ID命名规则: 扩展名前的字符！

               AddCookiesValie("LC_Detail", "deteailID", DetailImageID, context);   
               //判断属性该个人用户的文件是否存在
               if (Directory.Exists(context.Server.MapPath("~/App_Image/SellerProImage/" + _username + "")) == false)
               {
                   //如果不存在就创建file文件夹
                   Directory.CreateDirectory(context.Server.MapPath("~/App_Image/SellerProImage/" + _username + ""));
                   //Directory.Delete(Server.MapPath("~/upimg/hufu"), true);//删除文件夹以及文件夹中的子目录，文件    
               }
               else
              {
                   string json = "成功！";
                   try
                   {
                   
                       
                       HttpRequest request = System.Web.HttpContext.Current.Request;
                       HttpFileCollection FileCollect = request.Files;
                       HttpPostedFile file;
                       try
                       {
                           file = context.Request.Files["shows"];
                           file = context.Request.Files["shows"];
                           string imgPath = "App_Image/SellerProImage/" + _username + "/" + file.FileName;
                           file.SaveAs(context.Server.MapPath("~/") + imgPath);
                           //展示图
                           string ShowImage = "../" + imgPath;
                           AddCookiesValie("LC_Show", "imgss", ShowImage, context);
                             
                       }
                       catch
                       {             
                           file = context.Request.Files["model_file"];
                           string imgPath = "App_Image/SellerProImage/" + _username + "/" + file.FileName;
                           file.SaveAs(context.Server.MapPath("~/") + imgPath);                       
                           /**
                            优化提示:在本处找不到一个可以储存长字符的全局变量如果可以的话直接把所有的详细图片的ID存放在其中！
                                     就不必直接插入数据库这样不易于修改！
                            **/
                           //解读详细id
                           LC_DetailImageID = CookiesValues("LC_Detail", context).ToString();                          
                           sql.RunProc("insert into LC_IMAGE values('" + LC_DetailImageID + "','../App_Image/SellerProImage/" + _username + "/" + file.FileName + "')");                                              
                       }                                                    
                   }
                   catch (Exception ex)
                   {
                       //失败时返回的参数必须加 error键
                       json = "{\"error\":\"" + ex.Message + "\"}";
                   }
                                 
               }                          
               var qufen = context.Request["Distinguish"];
               if (qufen == "0")
               {
                   /*商品分类*/
                   var msg = context.Request["filenames"];
                 ///  context.Response.Write("分类是:"+msg+"  ");
                   //怎么用一个sql查询找到该用户选择的类别????????????????????
                   try
                   {
                       LC_Sonadter = sql.CreateDa("select CommodityCategory from LC_COMMODITY_CATEGORY where MinuteID='" + msg + "'");
                       LC_Sontable = new DataTable();
                       LC_Sonadter.Fill(LC_Sontable);
                       foreach (DataRow item in LC_Sontable.Rows)
                       {
                          context.Response.Write(item[0].ToString() + "*");
                                              
                       }
                       string commodity = sql.ReturnValue("select CommodityCategory  from LC_COMMODITY_CATEGORY where  CategoryID='" + msg + "' ");
                       if (!string.IsNullOrEmpty(commodity))
                       { //商品类别   
                           AddCookiesValie("LC_Commodity", "commdo", commodity, context);
                       }
                       else
                       {
                           context.Response.Write("请选择商品类别！！");                       
                       }
                   }
                   catch (Exception el)
                   {
                       context.Response.Write(el);
                   }                 
               }              
               else if (qufen=="1")
               {
                   #region
                   var Pro = context.Request["uploadPRO"];                
                   string[] information = Pro.Split('*');
                   //商品类别
                   LC_CommodityCategory = CookiesValues("LC_Commodity", context).ToString();
                   //详细图ID               
                   LC_DetailImageID = CookiesValues("LC_Detail", context).ToString();
                   //展示图
                   LC_ShowImage = CookiesValues("LC_Show", context).ToString();
                   //卖家姓名
                   LC_MerchantName = information[5].ToString();
                   try
                   {
                       //商品ID规则:该用户的用户名的前两个字的ULCD编码 +当前时间精确到毫秒
                       string LC_NowTime = DateTime.Now.ToString("yyyyMMddhhmmss");
                       if (_username.ToString().Length > 2)
                       {
                           for (int i = 0; i < 2; i++)
                           {
                               char chars = (char)_username.ToString()[i];
                               int names = (int)chars;
                               LC_NowTime = names.ToString() + LC_NowTime;
                           }
                       }
                       LC_CommodityID = LC_NowTime;
                   }
                   catch
                   {
                       context.Response.Write("请登录！");
                   }
                   //商品名
                   LC_CommodityName = information[0].ToString();
                   try
                   {
                       //成本价&销售价
                       LC_CostPrice = decimal.Parse(information[2]);
                       LC_SellPrice = decimal.Parse(information[3]);
                   }
                   catch
                   {
                       context.Response.Write("价格数据转化失败！");
                   }
                   //库存
                   LC_Repertory = information[1].ToString();
                   //商品描述
                   LC_CommodityDescribe = information[4].ToString();
                   //上架时间
                   LC_UploadingTime = DateTime.Parse(information[7]);
                   //商品状态
                   LC_CommodityState = "上架";
                   #endregion

                   /********************** 添加数据到表************************/
                   // context.Response.Write("商品ID: " + LC_CommodityID + "卖家姓名 " + LC_MerchantName + "商品名 " + LC_CommodityName +
                   //     "商品类别 " + LC_CommodityCategory + "展示图 " + LC_ShowImage + "详细图ID " + LC_DetailImageID + "成本价 " + LC_CostPrice
                   //       + " 销售价 " + LC_SellPrice + "库存 " + LC_Repertory + "商品描述 " + LC_CommodityDescribe + "上架时间 " + LC_UploadingTime);
                   try
                   {
                       //商品表
                       sql.RunProc("insert  into LC_COMMODITY values('" + LC_CommodityID + "','" + LC_MerchantName + "','" + LC_CommodityName + "','" + LC_CommodityCategory + "','" + LC_ShowImage + "','" + LC_DetailImageID + "'," + LC_CostPrice + "," + LC_SellPrice + ",'" + LC_Repertory + "','" + LC_CommodityDescribe + "','" + LC_UploadingTime + "','" + LC_CommodityState + "')");
                       //   context.Response.Write("商品表插入成功！");
                       //商品表添加成功后才可以添加图片表!
                       //try
                       //{
                       //    //图片表
                       //    //string[] LC_sonImagPath = information[8].Split('_');
                       //    //for (int i = 0; i < LC_sonImagPath.Length; i++)
                       //    //{
                       //    //    if (!string.IsNullOrEmpty(LC_sonImagPath[i]))
                       //    //    {
                       //    //        //sql.RunProc("insert into LC_IMAGE values('" + LC_DetailImageID + "','../App_Image/SellerProImage/" + _username + "/" + LC_sonImagPath[i].ToString() + "')");
                       //    //    }
                       //    //}
                       //    //context.Response.Write("详细图片插入成功！");
                       //}
                       //catch (Exception el)
                       //{
                       //    context.Response.Write("添加数据到图片表错误:  " + el);
                       //}
                   }
                   catch (Exception el)
                   {
                       context.Response.Write("添加数据到商品表错误:  " + el);
                   }
                   context.Response.Write("SucceesImage");                 
               }             
        }

        //创建COOkies值的方法  
        public void AddCookiesValie(string cookKeyParent,string cooKeySon,string value,HttpContext context)
        {         ///*Cookies要乱码【先编码在解码！！】*/
            HttpCookie ishfsfhg = new HttpCookie(cookKeyParent);
            ishfsfhg.Values.Add(cooKeySon, context.Server.UrlEncode(value));
            context.Response.AppendCookie(ishfsfhg);
        }
        //获取COOkies值的方法
        public string CookiesValues(string cookKey,HttpContext context)
        {
            HttpCookie qwqws = HttpContext.Current.Request.Cookies[cookKey];
            string sfdsre = "";
            try
            {
                sfdsre = context.Server.UrlDecode(qwqws.Values[0].ToString().Trim().ToLower());
            }catch
            {
                sfdsre = "0";
            }
           // context.Response.Write("展示图片是Cookies的值是:" + sfdsre + "     ");
            return sfdsre;
        }
         // 上传商品！！！                                  
                   //HttpRequest request = System.Web.HttpContext.Current.Request;
                   //HttpFileCollection FileCollect = request.Files;
                   //HttpPostedFile FileSave = FileCollect["model_file"];
                   //string imgPath = "App_Image/SellerProImage/" + _username + "/" + FileSave.FileName;     //通过此对象获取文件名     
                   //FileSave.SaveAs(context.Server.MapPath("~/") + imgPath);
                   //context.Response.Write("保存成功！");
                   //if (FileCollect.Count > 0)       
                   //{ 
                   //}
        //HttpPostedFile FileSave = FileCollect["model_file"];
        //string imgPath = "App_Image/SellerProImage/" + _username + "/" + FileSave.FileName;     //通过此对象获取文件名     
        //FileSave.SaveAs(context.Server.MapPath("~/") + imgPath);



        //foreach (string str in FileCollect)
        //{
        //    try
        //    {
        //        if (str == "shows")
        //        {
        //            HttpPostedFile FileSave = FileCollect[str];  //用key获取单个文件对象HttpPostedFile
        //            string imgPath = "App_Image/SellerProImage/" + _username + "/" + FileSave.FileName;     //通过此对象获取文件名                                         //展示图
        //            //详细图片ID
        //            string DetailImageID = FileSave.FileName.Split('.')[0];
        //            AddCookiesValie("LC_Detail", "deteailID", DetailImageID, context);
        //            //展示图
        //            string ShowImage = "../" + imgPath;
        //            FileSave.SaveAs(context.Server.MapPath("~/") + imgPath);
        //            AddCookiesValie("LC_Show", "imgss", ShowImage, context);
        //        }
        //        else
        //        {
        //            HttpPostedFile FileSave = FileCollect[str];
        //            string imgPath = "App_Image/SellerProImage/" + _username + "/" + FileSave.FileName;
        //            FileSave.SaveAs(context.Server.MapPath("~/") + imgPath);
        //            //context.Response.Write("保存成功!");
        //        }
        //    }
        //    catch
        //    {
        //        context.Response.Write("请登录!");
        //    }
        //}
        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}
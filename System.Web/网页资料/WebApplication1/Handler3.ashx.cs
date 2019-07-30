using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace WebApplication1
{
    /// <summary>
    /// Handler3 的摘要说明
    /// </summary>
    public class Handler3 : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";

            /**************************************************/
            //判断文件的存在
            //string imgName = DateTime.Now.ToString("yyyyMMddhhmmss");//直接精确到毫秒
            //if (Directory.Exists(context.Server.MapPath("~/" + imgName + "")) == false)//如果不存在就创建file文件夹   
            //{

            //    Directory.CreateDirectory(context.Server.MapPath("~/" + imgName + ""));

            //}         //Directory.Delete(Server.MapPath("~/upimg/hufu"), true);//删除文件夹以及文件夹中的子目录，文件        
            //判断文件的存在       
            //if (File.Exists(context.Server.MapPath("~/upimg/Data.html")))
            //{
            //    context.Response.Write("Yes");             //存在文件       
            //}
            //else
            //{
            //    context.Response.Write("No");             //不存在文件            
            //    File.Create(context.Server.MapPath("~/upimg/Data.html"));//创建该文件      
            //}        

            /**************************************************/
            //HttpPostedFile file = context.Request.Files[0];
            //String fileName = System.IO.Path.GetFileName(file.FileName);
            //file.SaveAs(context.Server.MapPath("~/") + fileName);
            //context.Response.Write("OK");

         

            HttpRequest request = System.Web.HttpContext.Current.Request;
            HttpFileCollection FileCollect = request.Files;
            string img = "";
            List<string> seeion=new List<string>{};
            if (FileCollect.Count > 0)          //如果集合的数量大于0
            {

                foreach (string str in FileCollect)
                {
                    HttpPostedFile FileSave = FileCollect[str];  //用key获取单个文件对象HttpPostedFile
                    string imgPath = "App_Image/" + FileSave.FileName;     //通过此对象获取文件名             
                    FileSave.SaveAs(context.Server.MapPath("~/") + imgPath);
                    //    context.Response.Write("<img src='" + imgPath + "' width=100 height=100/>");

                    img = "<img  src='" + imgPath + "' style=' float:left; border:Red solid thin;' width=100; height=120 />";

                   //HttpCookie coo = new HttpCookie("imgsss");
                   //coo.Values.Add(str.ToString(), img);
                   //context.Response.AppendCookie(coo);
                   seeion.Add(img);
                }

                    for (int i = 0; i < seeion.Count; i++)
			        {
                        context.Response.Write(seeion[i]);			 
			        }
                //  string dffd = context.Request.Cookies["imgsss"].Values[0];    
         
            //    foreach (string  item in context.Request.Cookies.AllKeys)
            //    {
            //        HttpCookie ForCookies = context.Request.Cookies[item];
            //        context.Response.Write(ForCookies.Values[item.ToString()]);    
            //        // 为什么该cookies的键值为空？？？？
            //        //foreach (string  keys in ForCookies.Values.Keys)
            //        //{
                       
            //        //}
            //    }
            }
        }

                //for (int i = 0; i < context .Request.Cookies["imgsss"].Values.Count; i++)
                //{
                //    context.Response.Write(context.Request.Cookies["imgsss"].Values[i]);
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
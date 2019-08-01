using System;
using System.Collections.Generic;
using System.Common;
using System.IO;
using System.Linq;
using System.Web;

namespace System.Web.Aspx.ManagePages
{
    /// <summary>
    /// groundinghandler 的摘要说明
    /// </summary>
    public class groundinghandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            var action = context.Request["action"].ToString();
            switch (action)
            {
                //case "add":
                //    AddCategoryRequest(context);
                //    break;
                //case "list":
                //    ListCategoryRequest(context);
                //    break;
                //case "update":
                //    UpdateCategoryRequest(context);
                //    break;
                //case "delete":
                //    DeleteCategoryRequest(context);
                //    break;
                //case "search":
                //    SeachCategoryRequest(context);
                //    break;
                //case "removelist":
                //    DeleteListCategoryRequest(context);
                //    break;
                case "upload":
                    UploadImg(context);
                    break;

            }

        }

        public void UploadImg(HttpContext context)
        {
            //string Parm1, string Parm2
            if (context.Request.Files.Count > 0)
            {
                //p1,p2没什么用，只是为了证明前端中额外参数data{parm1,parm2}成功传到后台了
                //string p1 = Parm1;
                //string p2 = Parm2;
                //获取后缀名
                string ext = Path.GetExtension(context.Request.Files[0].FileName);
                //获取/upload/文件夹的物理路径
                string mapPath = context.Server.MapPath(context.Request.ApplicationPath);
                //通过上传时间来创建文件夹，每天的放在一个文件夹中
                string dir = mapPath + "img/" + DateTime.Now.ToString("yyyy-MM-dd");
                DirectoryInfo dirInfo = Directory.CreateDirectory(dir);
                //在服务器存储文件，文件名为一个GUID
                string fullPath = dir + "/" + Guid.NewGuid().ToString() + ext;
                context.Request.Files[0].SaveAs(fullPath);
                //获取图片的相对路径
                string imgSrc = fullPath.Replace(mapPath, "/");
                var res = new { msg = "ok", code = 0, src = imgSrc };
                 
                context.Response.Write(SerializeHelp.ToJson(res));

            }
            else
            {
                var res = new { msg = "no", code = 500, src = "" };                
                context.Response.Write(res);
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
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;

namespace System.Common
{
    /// <summary>
    /// 返回体JSON转化字符串帮助类
    /// </summary>
    public static class SerializeHelp
    {

        /// <summary>
        /// 组合lay表格数据
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="list"></param>
        /// <returns></returns>
        public static string ToTableJson<T>(List<T> list, int count = 0)
        {
            var json = new LayerTableJson
            {
                data = list,
                code = 0,
                count = count == 0 ? list.Count() : count,
                msg = "成功"
            };
            var res = JsonConvert.SerializeObject(json);
            return res;
        }

        /// <summary>
        /// 组合lay表格数据
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="list"></param>
        /// <returns></returns>
        public static string ToTableJson<T>(List<T> list,string msg)
        {
            var json = new LayerTableJson
            {
                data = list,
                code = 0,
                count = list.Count(),
                msg = msg
            };
            var res = JsonConvert.SerializeObject(json);
            return res;
        }

        /// <summary>
        ///  对象转json字符串
        /// </summary>
        /// <param name="code"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
        public static string ToJson<T>(T obj)
        {            
            var res = JsonConvert.SerializeObject(obj);
            return res;
        }

        /// <summary>
        /// 文件上传
        /// </summary>
        /// <param name="context"></param>
        /// <returns></returns>
        public static string UploadFile(HttpContext context)
        {
            if (context.Request.Files.Count > 0)
            {
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
                return imgSrc;
            }
            else
            {
                return "";
            }
        }



    }
}

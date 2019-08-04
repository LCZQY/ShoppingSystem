using Shopping.BLL;
using Shopping.Common;
using Shopping.Model;
using System.Collections.Generic;
using System.Linq;

namespace System.Web.Aspx.ManagePages
{
    /// <summary>
    /// newshandler 的摘要说明
    /// </summary>
    public class newshandler : IHttpHandler
    {
        //！ 促销应该和商品挂钩，下个版本可优化

        private NewsService _InfoService = CacheControl.Get<NewsService>();
        private PhotoService _photoInfoService = CacheControl.Get<PhotoService>();
        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            var action = context.Request["action"].ToString();
            switch (action)
            {
                case "add":
                    AddNewsRequest(context);
                    break;
                case "list":
                    ListNewsRequest(context);
                    break;
                case "update":
                    UpdateNewsRequest(context);
                    break;
                case "delete":
                    DeleteNewsRequest(context);
                    break;
                case "search":
                    SeachNewsRequest(context);
                    break;
                case "removelist":
                    DeleteListNewsRequest(context);
                    break;
                case "upload":
                    UploadImg(context);
                    break;
            }

        }

        /// <summary>
        /// 批量删除
        /// </summary>
        /// <param name="context"></param>
        public void DeleteListNewsRequest(HttpContext context)
        {
            // ?
        }


        /// <summary>
        /// 搜索
        /// </summary>
        /// <param name="context"></param>
        public void SeachNewsRequest(HttpContext context)
        {
            var title = context.Request["name"];
            var page = context.Request.Form["page"];
            var index = context.Request.Form["limit"];
            if (string.IsNullOrWhiteSpace(page) && string.IsNullOrWhiteSpace(index))
            {
                var list = _InfoService.GetList().Where(y => y.Title.Contains(title)).ToList();
                var res = SerializeHelp.ToTableJson(list);
                context.Response.Write(res);
            }
            else
            {
                var list = _InfoService.GetList().Where(y => y.Title.Contains(title)).ToList();
                var list1 = list.Skip((int.Parse(page) - 1) * int.Parse(index)).Take(int.Parse(index)).ToList();
                var res = SerializeHelp.ToTableJson(list1, list.Count());
                context.Response.Write(res);

            }
        }

        /// <summary>
        ///删除
        /// </summary>
        /// <param name="context"></param>
        public void DeleteNewsRequest(HttpContext context)
        {
            var response = new ResponseMessage();
            try
            {
                var id = context.Request["id"];
                var del = _InfoService.Delete(id);
                if (del)
                {
                    response.code = 0;
                    response.msg = "删除成功";
                    context.Response.Write(SerializeHelp.ToJson(response));

                }
                response.code = 500;
                response.msg = "删除失败";
                context.Response.Write(SerializeHelp.ToJson(response));
            }
            catch (Exception e)
            {

                response.code = 500;
                response.msg = "删除失败";
                context.Response.Write(SerializeHelp.ToJson(response));
            }
        }



        /// <summary>
        /// 修改
        /// </summary>
        /// <param name="context"></param>
        public void UpdateNewsRequest(HttpContext context)
        {
            var response = new ResponseMessage();
            try
            {
                string id = context.Request.Form["NewsId"];
                string title = context.Request.Form["Title"];
                string nTypes = context.Request.Form["NTypes"];
                string content = context.Request.Form["Content"];
                var pushTime = Convert.ToDateTime(context.Request.Form["PushTime"]);
                var path = context.Request.Form["PhotoId"];
                var states = Convert.ToInt32(context.Request.Form["States"]);
                News News = new News()
                {
                    NewsId = id,
                    Title = title,
                    NTypes = nTypes,
                    Content = content,
                    PhotoUrl = path,
                    States = states,
                    PushTime = pushTime
                };
                var edi = _InfoService.Update(News);
                response.code = edi == true ? 0 : 500;
                response.msg = "修改成功";
                context.Response.Write(SerializeHelp.ToJson(response));
            }
            catch (Exception e)
            {
                response.code = 500;
                response.msg = "修改失败";
                context.Response.Write(SerializeHelp.ToJson(response));
            }

        }

        /// <summary>
        /// 添加
        /// </summary>
        /// <param name="context"></param>
        public void AddNewsRequest(HttpContext context)
        {
            var response = new ResponseMessage();
            try
            {
                string id = context.Request.Form["NewsId"];
                string title = context.Request.Form["Title"];
                string nTypes = context.Request.Form["NTypes"];
                string content = context.Request.Form["Content"];
                //    var pushTime = Convert.ToDateTime(context.Request.Form["PushTime"]);

                var states = Convert.ToInt32(context.Request.Form["States"]);

                var path = context.Request.Form["PhotoUrl"];
                News News = new News()
                {
                    NewsId = Guid.NewGuid().ToString(),
                    Title = title,
                    NTypes = nTypes,
                    Content = content,
                    PhotoUrl = path,
                    States = states,
                    PushTime = DateTime.Now
                };
             
                var add = _InfoService.Add(News);

                response.code = add == true ? 0 : 500;
                response.msg = "添加成功";
                context.Response.Write(SerializeHelp.ToJson(response));
            }
            catch (Exception e)
            {
                string error = e.Message;
      
                response.code = 500;
                response.msg = "添加失败";
                context.Response.Write(SerializeHelp.ToJson(response));
            }

        }

        /// <summary>
        /// 查询
        /// </summary>
        /// <param name="context"></param>
        public void ListNewsRequest(HttpContext context)
        {

            var page = context.Request.Form["page"];
            var index = context.Request.Form["limit"];
            if (string.IsNullOrWhiteSpace(page) && string.IsNullOrWhiteSpace(index))
            {
                var list = _InfoService.GetList()?.ToList();
                list = list ?? new List<News> { };
                var res = SerializeHelp.ToTableJson(list);
                context.Response.Write(res);
            }
            else
            {
                var list = _InfoService.GetList()?.ToList() ?? null;
                list = list ?? new List<News> { };
                var list1 = list?.Skip((int.Parse(page) - 1) * int.Parse(index)).Take(int.Parse(index)).ToList();
                var res = SerializeHelp.ToTableJson(list1, list == null ? 0 : list.Count());
                context.Response.Write(res);

            }
        }




        /// <summary>
        ///  文件上传
        /// </summary>
        /// <param name="context"></param>
        public void UploadImg(HttpContext context)
        {

            if (context.Request.Files.Count > 0)
            {
                var imgSrc = SerializeHelp.UploadFile(context);
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
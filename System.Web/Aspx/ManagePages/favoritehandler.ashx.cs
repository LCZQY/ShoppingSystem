using Shopping.BLL;
using Shopping.Common;
using Shopping.Model;
using System.Collections.Generic;
using System.Linq;
namespace System.Web.Aspx.ManagePages
{

    /// <summary>
    /// favoritehandler 的摘要说明
    /// </summary>
    public class favoritehandler : IHttpHandler
    {

        private FavoriteService _InfoService = CacheControl.Get<FavoriteService>();

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            var action = context.Request["action"].ToString();
            switch (action)
            {
                case "add":
                    AddFavoriteRequest(context);
                    break;
                case "list":
                    ListFavoriteRequest(context);
                    break;
                case "update":
                    UpdateFavoriteRequest(context);
                    break;
                case "delete":
                    DeleteFavoriteRequest(context);
                    break;
                case "search":
                    SeachFavoriteRequest(context);
                    break;
                case "removelist":
                    DeleteListFavoriteRequest(context);
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
        public void DeleteListFavoriteRequest(HttpContext context)
        {
            // ?
        }


        /// <summary>
        /// 搜索
        /// </summary>
        /// <param name="context"></param>
        public void SeachFavoriteRequest(HttpContext context)
        {
            //var title = context.Request["name"];
            //var page = context.Request.Form["page"];
            //var index = context.Request.Form["limit"];
            //if (string.IsNullOrWhiteSpace(page) && string.IsNullOrWhiteSpace(index))
            //{
            //    var list = _InfoService.GetList().Where(y => y.Title.Contains(title)).ToList();
            //    var res = SerializeHelp.ToTableJson(list);
            //    context.Response.Write(res);
            //}
            //else
            //{
            //    var list = _InfoService.GetList().Where(y => y.Title.Contains(title)).ToList();
            //    var list1 = list.Skip((int.Parse(page) - 1) * int.Parse(index)).Take(int.Parse(index)).ToList();
            //    var res = SerializeHelp.ToTableJson(list1, list.Count());
            //    context.Response.Write(res);
            //}
        }

        /// <summary>
        ///删除
        /// </summary>
        /// <param name="context"></param>
        public void DeleteFavoriteRequest(HttpContext context)
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
        public void UpdateFavoriteRequest(HttpContext context)
        {
            var response = new ResponseMessage();
            try
            {
                string id = context.Request.Form["FavoriteId"];
                string productId = context.Request.Form["ProductId"];
                string userId = context.Request.Form["UserId"];

                Favorite Favorite = new Favorite()
                {
                    FavoriteId = id,
                    ProductId = productId,
                    UserId = userId
                };
                var edi = _InfoService.Update(Favorite);
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
        public void AddFavoriteRequest(HttpContext context)
        {
            var response = new ResponseMessage();
            try
            {
                string id = context.Request.Form["FavoriteId"];
                string productId = context.Request.Form["ProductId"];
                string userId = context.Request.Form["UserId"];

                Favorite Favorite = new Favorite()
                {
                    FavoriteId = id,
                    ProductId = productId,
                    UserId = userId
                };

                var add = _InfoService.Add(Favorite);

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
        public void ListFavoriteRequest(HttpContext context)
        {
            var page = context.Request.Form["page"];
            var index = context.Request.Form["limit"];
            if (string.IsNullOrWhiteSpace(page) && string.IsNullOrWhiteSpace(index))
            {
                var list = _InfoService.GetList()?.ToList();
                list = list ?? new List<Favorite> { };
                var res = SerializeHelp.ToTableJson(list);
                context.Response.Write(res);
            }
            else
            {
                var list = _InfoService.GetList()?.ToList() ?? null;
                list = list ?? new List<Favorite> { };
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
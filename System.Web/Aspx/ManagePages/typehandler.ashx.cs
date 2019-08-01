using Newtonsoft.Json;
using System;
using System.BLL;
using System.Collections.Generic;
using System.Common;
using System.Linq;
using System.Model;
using System.Web;

namespace System.Web.Aspx.ManagePages
{
    /// <summary>
    /// Handler1 的摘要说明
    /// </summary>
    public class typehandler : IHttpHandler
    {

        private CategoryService _InfoService = CacheControl.Get<CategoryService>();
        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            var action = context.Request["action"].ToString();
            switch (action)
            {
                case "add":
                    AddCategoryRequest(context);
                    break;
                case "list":
                    ListCategoryRequest(context);
                    break;
                case "update":
                    UpdateCategoryRequest(context);
                    break;
                case "delete":
                    DeleteCategoryRequest(context);
                    break;
                case "search":
                    SeachCategoryRequest(context);
                    break;
                case "removelist":
                    DeleteListCategoryRequest(context);
                    break;
                case "tree":
                    CreateTreeRequest(context);
                    break;

            }
        }

        /// <summary>
        /// 组织树状结构
        /// </summary>
        /// <param name="context"></param>
        public void CreateTreeRequest(HttpContext context)
        {

            var list = _InfoService.CreateTreeJson();
            context.Response.Write(SerializeHelp.ToJson(list));

        }




        /// <summary>
        /// 批量删除
        /// </summary>
        /// <param name="context"></param>
        public void DeleteListCategoryRequest(HttpContext context)
        {
            // ?
        }


        /// <summary>
        /// 搜索用户
        /// </summary>
        /// <param name="context"></param>
        public void SeachCategoryRequest(HttpContext context)
        {
            //var username = context.Request["name"];
            //var list = _InfoService.GetList().Where(y => y.UserName.Contains(username)).ToList();
            //var res = SerializeHelp.ToTableJson<Category>(list);
            //context.Response.Write(res);
        }

        /// <summary>
        ///删除用户
        /// </summary>
        /// <param name="context"></param>
        public void DeleteCategoryRequest(HttpContext context)
        {
            var response = new ResponseMessage();
            try
            {
                var id = context.Request["id"];
                var del = _InfoService.Delete(id);
                response.code = del == true ? 0 : 500;
                response.msg = "删除成功";
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
        /// 修改用户
        /// </summary>
        /// <param name="context"></param>
        public void UpdateCategoryRequest(HttpContext context)
        {
            var response = new ResponseMessage();
            try
            {

                string name = context.Request.Form["CateName"];
                string parentId = context.Request.Form["ParentId"];
                string type = context.Request.Form["type"];
                Category category = new Category();
                if (type == "1") //顶级
                {
                    category.ParentId = "0";
                }
                else
                {
                    category.ParentId = parentId;
                }
                category.CateId = Guid.NewGuid().ToString();
                category.CateName = name;
                var edi = _InfoService.Update(category);
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
        /// 添加用户
        /// </summary>
        /// <param name="context"></param>
        public void AddCategoryRequest(HttpContext context)
        {
            var response = new ResponseMessage();
            try
            {
                string name = context.Request.Form["cateName"];
                string parentId = context.Request.Form["parentId"];
                string type = context.Request.Form["type"];
                Category category = new Category();
                if (type == "1") //顶级
                {
                    category.ParentId = "0";
                }
                else
                {
                    category.ParentId = parentId;
                }
                category.CateId = Guid.NewGuid().ToString();
                category.CateName = name;

                var add = _InfoService.Add(category);

                response.code = add == true ? 0 : 500;
                response.msg = "添加成功";
                context.Response.Write(SerializeHelp.ToJson(response));
            }
            catch (Exception e)
            {
                response.code = 500;
                response.msg = "添加失败";
                context.Response.Write(SerializeHelp.ToJson(response));
            }

        }

        /// <summary>
        /// 获取顶级商品类型
        /// </summary>
        /// <param name="context"></param>
        public void ListCategoryRequest(HttpContext context)
        {

            var page = context.Request.Form["page"];
            var index = context.Request.Form["limit"];
            //var parentid = context.Request.Form["parentid"];
            if (string.IsNullOrWhiteSpace(page) && string.IsNullOrWhiteSpace(index))
            {
                var list = _InfoService.GetList().Where(y => y.ParentId == "0").ToList();
                var res = SerializeHelp.ToTableJson(list);
                context.Response.Write(res);

            }
            else
            {
                var list = _InfoService.GetList().Where(y => y.ParentId == "0").ToList(); ;
                var list1 = list.Skip((int.Parse(page) - 1) * int.Parse(index)).Take(int.Parse(index)).ToList();
                var res = SerializeHelp.ToTableJson(list1, list.Count());
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
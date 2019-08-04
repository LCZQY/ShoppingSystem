using Newtonsoft.Json;
using System;
using ShoppingSystem.BLL;
using System.Collections.Generic;
using ShoppingSystem.Common;
using System.Linq;
using ShoppingSystem.Model;
using System.Web;

namespace System.Web.Aspx.ManagePages
{
    /// <summary>
    /// Handler1 的摘要说明
    /// </summary>
    public class typehandler : IHttpHandler
    {

        private CategoryService _infoService = CacheControl.Get<CategoryService>();

        private ProductService _infoProductService = CacheControl.Get<ProductService>();

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
                case "type": //商品类型对应的商品
                    TypeProductRequest(context);
                    break;


            }
        }



            /// <summary>
            /// 商品类型对应的商品
            /// </summary>
            /// <param name="context"></param>
            public void TypeProductRequest(HttpContext context)
        {
            var typename = context.Request["Name"];
            var id = context.Request["CateId"];
            var page = context.Request.Form["page"];
            var index = context.Request.Form["limit"];
            if (string.IsNullOrWhiteSpace(page) && string.IsNullOrWhiteSpace(index))
            {
                var list = _infoProductService.GetList().Where(y => y.CateId == id)?.ToList();             
                foreach (var y in list)
                {
                    y.CateId = typename;
                }
                list = list ?? new List<Product> { };
                var res = SerializeHelp.ToTableJson(list);
                context.Response.Write(res);
            }
            else
            {
                var list = _infoProductService.GetList().Where(y => y.CateId == id)?.ToList();

                list = list ?? new List<Product> { };
                var list1 = list.Skip((int.Parse(page) - 1) * int.Parse(index)).Take(int.Parse(index)).ToList();
                var res = SerializeHelp.ToTableJson(list1, list.Count());
                context.Response.Write(res);
            }


        }





        /// <summary>
        /// 组织树状结构
        /// </summary>
        /// <param name="context"></param>
        public void CreateTreeRequest(HttpContext context)
        {

            var list = _infoService.CreateTreeJson();
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
            //var list = _infoService.GetList().Where(y => y.UserName.Contains(username)).ToList();
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
                var del = _infoService.Delete(id);
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
        /// 修改
        /// </summary>
        /// <param name="context"></param>
        public void UpdateCategoryRequest(HttpContext context)
        {
            var response = new ResponseMessage();
            try
            {
                string id = context.Request.Form["id"];
                string name = context.Request.Form["CateName"];
                var model = _infoService.GetList().Where(y => y.CateId == id).SingleOrDefault();
                Category category = new Category();
                category.CateId = id;
                category.CateName = name;
                category.ParentId = model.ParentId;
                var edi = _infoService.Update(category);
                if (edi)
                {
                    response.code = 0;
                    response.msg = "修改成功";
                    context.Response.Write(SerializeHelp.ToJson(response));
                }
                response.code = 500;
                response.msg = "修改失败";
                context.Response.Write(SerializeHelp.ToJson(response));

            }
            catch (Exception e)
            {
                string error = e.Message;
                response.code = 500;
                response.msg = "请重试";
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

                var add = _infoService.Add(category);
                if (add)
                {
                    response.code = 0;
                    response.msg = "添加成功";
                    context.Response.Write(SerializeHelp.ToJson(response));
                }
                else
                {
                    response.code = 500;
                    response.msg = "添加失败";
                    context.Response.Write(SerializeHelp.ToJson(response));
                }

            }
            catch (Exception e)
            {
                response.code = 500;
                response.msg = "请重试";
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
                var list = _infoService.GetList().Where(y => y.ParentId == "0").ToList();
    
                var res = SerializeHelp.ToTableJson(list);
                context.Response.Write(res);

            }
            else
            {
                var list = _infoService.GetList().Where(y => y.ParentId == "0").ToList(); ;
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
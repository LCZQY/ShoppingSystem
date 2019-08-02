using System.Collections.Generic;
using System.Common;
using System.DAL;
using System.Linq;
using System.Model;

/// <summary>
/// 逻辑处理层
/// </summary>
namespace System.BLL
{
    /// <summary>
    /// 类型表
    /// </summary>
    public class CategoryService : IBaseServer<Category>
    {
        private CategoryDal _infoDal = CacheControl.Get<CategoryDal>();


        /// <summary>
        ///  父级菜单
        /// </summary>
        /// <param name="parentId"></param>
        /// <returns></returns>
        public List<LayerTreeJson> CreateTreeJson(string parentId = "0")
        {
            var jsontree = new List<LayerTreeJson>();
            IEnumerable<Category> data = GetList();
            data = data.Where(y => y.ParentId == parentId);
            foreach (var item in data)
            {
                jsontree.Add(new LayerTreeJson
                {
                    id = item.CateId,
                    title = item.CateName,
                    children = CreateTreeJson(item.CateId)
                });
            }
            return jsontree;
        }


        /// <summary>
        ///  递归子级菜单
        /// </summary>
        /// <param name="parentId"></param>
        /// <returns></returns>
        public List<LayerTreeJson> CreateTreeJson1(string sonid = "0")
        {
            var jsontree = new List<LayerTreeJson>();
            IEnumerable<Category> data = GetList();
            data = data.Where(y => y.ParentId == sonid);
            foreach (var item in data)
            {
                jsontree.Add(new LayerTreeJson
                {
                    id = item.CateId,
                    title = item.CateName,
                    children = CreateTreeJson(item.CateId)
                });
            }
            return jsontree;
        }


        public bool Add(Category model)
        {
            return _infoDal.Addcategory(model) > 0;
        }

        public bool Delete(string id)
        {
            return _infoDal.Deletecategory(id) > 0;
        }

        public Category GetDeail(int id)
        {
            return _infoDal.GetDeail(id);
        }

        public List<Category> GetList()
        {
            return _infoDal.GetList();
        }

        public List<Category> GetList(int page, int index)
        {
            return _infoDal.GetList(page, index);
        }

        public bool Update(Category model)
        {
            return _infoDal.Updatecategory(model) > 0;
        }
    }
}

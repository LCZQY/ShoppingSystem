using System.Collections.Generic;
using ShoppingSystem.DAL;
using ShoppingSystem.Model;

/// <summary>
/// 逻辑处理层
/// </summary>
namespace ShoppingSystem.BLL
{


    public class PhotoService : IBaseServer<Photo>
    {
        private PhotoDal _infoDal = ShoppingSystem.Common.CacheControl.Get<PhotoDal>();


        public bool Add(Photo model)
        {
            return _infoDal.AddPhoto(model) > 0;
        }

        public bool Delete(string id)
        {
            return _infoDal.DeletePhoto(id) > 0;
        }

        public Photo GetDeail(int id)
        {
            return _infoDal.GetDeail(id);
        }

        public List<Photo> GetList()
        {
            return _infoDal.GetList();
        }

        public List<Photo> GetList(int page, int index)
        {
            return _infoDal.GetList(page, index);
        }

        public bool Update(Photo model)
        {
            return _infoDal.UpdatePhoto(model) > 0;
        }
    }
}

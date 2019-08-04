using System.Collections.Generic;
using ShoppingSystem.DAL;
using ShoppingSystem.Model;

/// <summary>
/// 逻辑处理层
/// </summary>
namespace ShoppingSystem.BLL
{
    /// <summary>
    ///  管理员表
    /// </summary>
    public class AdminUserService : IBaseServer<AdminUser>
    {
        private AdminUserDal _infoDal = ShoppingSystem.Common.CacheControl.Get<AdminUserDal>();




        public bool Add(AdminUser model)
        {
            return _infoDal.AddAdminUser(model) > 0;
        }

        public bool Delete(string id)
        {
            return _infoDal.DeleteAdminUser(id) > 0;
        }

        public AdminUser GetDeail(int id)
        {
            return _infoDal.GetDeail(id);
        }

        public List<AdminUser> GetList()
        {
            return _infoDal.GetList();
        }

        public List<AdminUser> GetList(int page, int index)
        {
            return _infoDal.GetList(page, index);
        }

        public bool Update(AdminUser model)
        {
            return _infoDal.UpdateAdminUser(model) > 0;
        }
    }
}

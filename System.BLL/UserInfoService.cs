using System;
using System.Collections.Generic;
using System.Linq;
using System.Model;
using System.Text;
using System.Threading.Tasks;
using System.DAL;
using System.Common;

/// <summary>
/// 逻辑处理层
/// </summary>
namespace System.BLL
{
    /// <summary>
    ///用户表
    /// </summary>
    public class UserInfoService 
    {
        UserInfoDal UserInfoDal = System.Common.CacheControl.Get<UserInfoDal>();

      
        /// <summary>
        /// 返回数据列表
        /// </summary>
        /// <returns></returns>
        public List<Users> GetList()
        {
            return UserInfoDal.GetList();
        }

        /// <summary>
        /// 返回数据列表
        /// </summary>
        /// <returns></returns>
        public List<Users> GetList(int page,int index)
        {
            return UserInfoDal.GetList(page, index);
        }
        /// <summary>
        /// 返回用户信息 一条
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public Users GetDeail(int id)
        {
            return UserInfoDal.GetDeail(id);
        }

        /// <summary>
        /// 添加数据
        /// </summary>
        /// <param name="userInfo"></param>
        /// <returns></returns>
        public bool AddUserInfo(Users userInfo)
        {
            return UserInfoDal.AddUsers(userInfo) > 0;
        }

        /// <summary>
        /// 更新数据
        /// </summary>
        /// <param name="userInfo"></param>
        /// <returns></returns>
        public bool UpdateUserInfo(Users userInfo)
        {
            return UserInfoDal.UpdateUsers(userInfo) > 0;
        }

        /// <summary>
        /// 删除数据
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public bool DeleteUserInfo(string id)
        {
            return UserInfoDal.DeleteUsers(id) > 0;
        }
    }
}

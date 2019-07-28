using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace System.Common
{
    public interface IServerBase
    {

        /// <summary>
        /// 返回数据列表
        /// </summary>
        /// <returns></returns>
        Task<List<T>> GetList();


        /// <summary>
        /// 返回用户信息 一条
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        Task<T> GetDeail(int id);

        /// <summary>
        /// 添加数据
        /// </summary>
        /// <param name="userInfo"></param>
        /// <returns></returns>
        Task<bool> AddUserInfo(T model);


        /// <summary>
        /// 更新数据
        /// </summary>
        /// <param name="userInfo"></param>
        /// <returns></returns>
        Task<bool> UpdateUserInfo(T model);


        /// <summary>
        /// 删除数据
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        Task<bool> DeleteUserInfo(int id);


    }
}

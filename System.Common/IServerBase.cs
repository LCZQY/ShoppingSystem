﻿using System.Collections.Generic;
using System.Model;
using System.Threading.Tasks;

namespace System.Common
{
    /// <summary>
    /// 数据库操作定义z
    /// </summary>
    /// <typeparam name="T"></typeparam>
    public interface IServerBase<T> where T :class
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
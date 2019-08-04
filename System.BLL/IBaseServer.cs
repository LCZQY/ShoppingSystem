using System.Collections.Generic;

namespace ShoppingSystem.BLL
{
    /// <summary>
    ///  数据库基本操作
    /// </summary>
    /// <typeparam name="T"></typeparam>
    public interface IBaseServer<T> where T : class
    {
        /// <summary>
        /// 获取列表
        /// </summary>
        /// <returns></returns>
        List<T> GetList();



        /// <summary>
        /// 分页获取列表
        /// </summary>
        /// <returns></returns>
        List<T> GetList(int page, int index);

        /// <summary>
        /// 获取一条信息
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        T GetDeail(int id);


        /// <summary>
        /// 添加
        /// </summary>
        /// <param name="Users"></param>
        /// <returns></returns>
        bool Add(T model);


        /// <summary>
        /// 更新
        /// </summary>
        /// <param name="Users"></param>
        /// <returns></returns>
        bool Update(T model);


        /// <summary>
        /// 删除
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        bool Delete(string id);


    }
}

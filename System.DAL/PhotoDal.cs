using MySql.Data.MySqlClient;
using System.Collections.Generic;
using Shopping.Common;
using System.Data;
using Shopping.Model;
using System;

/// <summary>
/// 数据处理层
/// </summary>
namespace Shopping.DAL
{

    /// <summary>
    /// 商品图片表
    /// </summary>
    public class PhotoDal
    {
        /// <summary>
        /// 获取列表
        /// </summary>
        /// <returns></returns>
        public List<Photo> GetList()
        {
            string sql = CreateSqlString.SelectSqlString(new Photo { });
            DataTable da = SqlHelper.GetDataTable(sql, CommandType.Text);
            List<Photo> list = null;
            if (da.Rows.Count > 0)
            {
                list = new List<Photo>();
                Photo Photo = null;
                foreach (DataRow row in da.Rows)
                {
                    Photo = new Photo();
                    LoadEntity(Photo, row);
                    list.Add(Photo);
                }
            }
            return list;
        }


        /// <summary>
        /// 分页获取列表
        /// </summary>
        /// <returns></returns>
        public List<Photo> GetList(int page, int index)
        {

            string sql = $"{CreateSqlString.SelectSqlString(new Photo { }) }limit  {((page - 1) * index)}, {index}";
            DataTable da = SqlHelper.GetDataTable(sql, CommandType.Text);
            List<Photo> list = null;
            if (da.Rows.Count > 0)
            {
                list = new List<Photo>();
                Photo Photo = null;
                foreach (DataRow row in da.Rows)
                {
                    Photo = new Photo();
                    LoadEntity(Photo, row);
                    list.Add(Photo);
                }
            }
            return list;
        }

        /// <summary>
        /// 获取一条用户信息 By ID
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public Photo GetDeail(int id)
        {
            string sql = $"{ CreateSqlString.SelectSqlString(new Photo { })} WHERE PhotoId =@PhotoId ";
            MySqlParameter[] pars ={
                                      new MySqlParameter("@PhotoId",SqlDbType.Int)
                                  };
            pars[0].Value = id;
            DataTable dt = SqlHelper.GetDataTable(sql, CommandType.Text, pars);
            Photo instance = null;
            if (dt.Rows.Count > 0)
            {
                instance = new Photo();
                LoadEntity(instance, dt.Rows[0]);
            }
            return instance;
        }

        /// <summary>
        /// 添加信息
        /// </summary>
        /// <param name="Photo"></param>
        /// <returns></returns>
        public int AddPhoto(Photo Photo)
        {
            string sql = CreateSqlString.InsertSqlString(Photo);
            var pars = CreateSqlString.SqlParameterArray(Photo);
            return SqlHelper.ExecuteNonquery(sql, CommandType.Text, pars);
        }

        /// <summary>
        /// 更新用户信息
        /// </summary>
        /// <param name="Photo"></param>
        /// <returns></returns>
        public int UpdatePhoto(Photo Photo)
        {
            string sql = $"{ CreateSqlString.UpdateSqlString(Photo)    } WHERE PhotoId =@PhotoId";
            var pars = CreateSqlString.SqlParameterArray(Photo);
            return SqlHelper.ExecuteNonquery(sql, CommandType.Text, pars);
        }

        /// <summary>
        /// 删除用户信息
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public int DeletePhoto(string id)
        {
            try
            {
                string sql = $"{ CreateSqlString.DeleteSqlString(new Photo { }) }  WHERE PhotoId = @PhotoId";
                MySqlParameter[] pars ={
                                      new MySqlParameter("@PhotoId",MySqlDbType.VarChar,36)
                                  };
                pars[0].Value = id;
                return SqlHelper.ExecuteNonquery(sql, CommandType.Text, pars);

            }
            catch
            {
                throw;
            }
        }

        /// <summary>
        ///  初始化实体
        /// </summary>
        /// <param name="Photo"></param>
        /// <param name="row"></param>
        /// <param name="row"></param>
        private void LoadEntity(Photo Photo, DataRow row)
        {
            Photo.PhotoId = row["PhotoId"] != DBNull.Value ? row["PhotoId"].ToString() : string.Empty;

            Photo.ProductId = row["ProductId"] != DBNull.Value ? row["ProductId"].ToString() : string.Empty;

            Photo.PhotoUrl = row["PhotoUrl"] != DBNull.Value ? row["PhotoUrl"].ToString() : string.Empty;

        }



    }
}

using MySql.Data.MySqlClient;
using System.Collections.Generic;
using System.Data;
using Shopping.Model;

using Shopping.Common;
using System;
/// <summary>
/// 数据处理层
/// </summary>
namespace Shopping.DAL
{

    /// <summary>
    /// 收藏
    /// </summary>
    public class FavoriteDal
    {
        /// <summary>
        /// 获取列表
        /// </summary>
        /// <returns></returns>
        public List<Favorite> GetList()
        {
            string sql = CreateSqlString.SelectSqlString(new Favorite { });
            DataTable da = SqlHelper.GetDataTable(sql, CommandType.Text);
            List<Favorite> list = null;
            if (da.Rows.Count > 0)
            {
                list = new List<Favorite>();
                Favorite Favorite = null;
                foreach (DataRow row in da.Rows)
                {
                    Favorite = new Favorite();
                    LoadEntity(Favorite, row);
                    list.Add(Favorite);
                }
            }
            return list;
        }


        /// <summary>
        /// 分页获取列表
        /// </summary>
        /// <returns></returns>
        public List<Favorite> GetList(int page, int index)
        {

            string sql = $"{CreateSqlString.SelectSqlString(new Favorite { }) }limit  {((page - 1) * index)}, {index}";
            DataTable da = SqlHelper.GetDataTable(sql, CommandType.Text);
            List<Favorite> list = null;
            if (da.Rows.Count > 0)
            {
                list = new List<Favorite>();
                Favorite Favorite = null;
                foreach (DataRow row in da.Rows)
                {
                    Favorite = new Favorite();
                    LoadEntity(Favorite, row);
                    list.Add(Favorite);
                }
            }
            return list;
        }

        /// <summary>
        /// 获取一条用户信息 By ID
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public Favorite GetDeail(int id)
        {
            string sql = $"{ CreateSqlString.SelectSqlString(new Favorite { })} WHERE FavoriteId =@FavoriteId ";
            MySqlParameter[] pars ={
                                      new MySqlParameter("@FavoriteId",SqlDbType.Int)
                                  };
            pars[0].Value = id;
            DataTable dt = SqlHelper.GetDataTable(sql, CommandType.Text, pars);
            Favorite instance = null;
            if (dt.Rows.Count > 0)
            {
                instance = new Favorite();
                LoadEntity(instance, dt.Rows[0]);
            }
            return instance;
        }

        /// <summary>
        /// 添加信息
        /// </summary>
        /// <param name="Favorite"></param>
        /// <returns></returns>
        public int AddFavorite(Favorite Favorite)
        {
            string sql = CreateSqlString.InsertSqlString(Favorite);
            var pars = CreateSqlString.SqlParameterArray(Favorite);
            return SqlHelper.ExecuteNonquery(sql, CommandType.Text, pars);
        }

        /// <summary>
        /// 更新信息
        /// </summary>
        /// <param name="Favorite"></param>
        /// <returns></returns>
        public int UpdateFavorite(Favorite Favorite)
        {
            string sql = $"{ CreateSqlString.UpdateSqlString(Favorite)    } WHERE FavoriteId =@FavoriteId";
            var pars = CreateSqlString.SqlParameterArray(Favorite);
            return SqlHelper.ExecuteNonquery(sql, CommandType.Text, pars);
        }

        /// <summary>
        /// 删除信息
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public int DeleteFavorite(string id)
        {
            try
            {
                string sql = $"{ CreateSqlString.DeleteSqlString(new Favorite { }) }  WHERE SuId = @FavoriteId";
                MySqlParameter[] pars ={
                                      new MySqlParameter("@FavoriteId",MySqlDbType.VarChar,36)
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
        /// <param name="Favorite"></param>
        /// <param name="row"></param>
        /// <param name="row"></param>
        private void LoadEntity(Favorite Favorite, DataRow row)
        {

            Favorite.FavoriteId = row["FavoriteId"] != DBNull.Value ? row["FavoriteId"].ToString() : string.Empty;
            Favorite.ProductId = row["ProductId"] != DBNull.Value ? row["ProductId"].ToString() : string.Empty;
            Favorite.UserId = row["UserId"] != DBNull.Value ? row["UserId"].ToString() : string.Empty;
        

        }



    }
}

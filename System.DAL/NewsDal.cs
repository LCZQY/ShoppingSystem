using MySql.Data.MySqlClient;
using System.Collections.Generic;
using System.Data;
using System.Model;

using System.Common;
/// <summary>
/// 数据处理层
/// </summary>
namespace System.DAL
{

    /// <summary>
    /// 商品促销咨询表
    /// </summary>
    public class NewsDal
    {
        /// <summary>
        /// 获取列表
        /// </summary>
        /// <returns></returns>
        public List<News> GetList()
        {
            string sql = CreateSqlString.SelectSqlString(new News { });
            DataTable da = SqlHelper.GetDataTable(sql, CommandType.Text);
            List<News> list = null;
            if (da.Rows.Count > 0)
            {
                list = new List<News>();
                News News = null;
                foreach (DataRow row in da.Rows)
                {
                    News = new News();
                    LoadEntity(News, row);
                    list.Add(News);
                }
            }
            return list;
        }


        /// <summary>
        /// 分页获取列表
        /// </summary>
        /// <returns></returns>
        public List<News> GetList(int page, int index)
        {

            string sql = $"{CreateSqlString.SelectSqlString(new News { }) }limit  {((page - 1) * index)}, {index}";
            DataTable da = SqlHelper.GetDataTable(sql, CommandType.Text);
            List<News> list = null;
            if (da.Rows.Count > 0)
            {
                list = new List<News>();
                News News = null;
                foreach (DataRow row in da.Rows)
                {
                    News = new News();
                    LoadEntity(News, row);
                    list.Add(News);
                }
            }
            return list;
        }

        /// <summary>
        /// 获取一条用户信息 By ID
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public News GetDeail(int id)
        {
            string sql = $"{ CreateSqlString.SelectSqlString(new News { })} WHERE NewsId =@NewsId ";
            MySqlParameter[] pars ={
                                      new MySqlParameter("@NewsId",SqlDbType.Int)
                                  };
            pars[0].Value = id;
            DataTable dt = SqlHelper.GetDataTable(sql, CommandType.Text, pars);
            News instance = null;
            if (dt.Rows.Count > 0)
            {
                instance = new News();
                LoadEntity(instance, dt.Rows[0]);
            }
            return instance;
        }

        /// <summary>
        /// 添加信息
        /// </summary>
        /// <param name="News"></param>
        /// <returns></returns>
        public int AddNews(News News)
        {
            string sql = CreateSqlString.InsertSqlString(News);
            var pars = CreateSqlString.SqlParameterArray(News);
            return SqlHelper.ExecuteNonquery(sql, CommandType.Text, pars);
        }

        /// <summary>
        /// 更新用户信息
        /// </summary>
        /// <param name="News"></param>
        /// <returns></returns>
        public int UpdateNews(News News)
        {
            string sql = $"{ CreateSqlString.UpdateSqlString(News)    } WHERE NewsId =@NewsId";
            var pars = CreateSqlString.SqlParameterArray(News);
            return SqlHelper.ExecuteNonquery(sql, CommandType.Text, pars);
        }

        /// <summary>
        /// 删除用户信息
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public int DeleteNews(string id)
        {
            try
            {
                string sql = $"{ CreateSqlString.DeleteSqlString(new News { }) }  WHERE NewsId = @NewsId";
                MySqlParameter[] pars ={
                                      new MySqlParameter("@NewsId",MySqlDbType.VarChar,36)
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
        /// <param name="News"></param>
        /// <param name="row"></param>
        /// <param name="row"></param>
        private void LoadEntity(News News, DataRow row)
        {

            News.NewsId = row["NewsId"] != DBNull.Value ? row["NewsId"].ToString() : string.Empty;
            News.NTypes = row["NTypes"] != DBNull.Value ? row["NTypes"].ToString() : string.Empty;
            News.PhotoUrl = row["PhotoUrl"] != DBNull.Value ? row["PhotoUrl"].ToString() : string.Empty;
            News.PushTime = Convert.ToDateTime(row["PostTime"] != DBNull.Value ? row["PostTime"].ToString() : string.Empty);
            News.States = (Convert.ToInt32(row["States"] != DBNull.Value ? row["States"].ToString() : string.Empty)) == 1 ? NewsEnum.Hot : NewsEnum.Top;
            News.Content = row["Content"] != DBNull.Value ? row["Content"].ToString() : string.Empty;
        }



    }
}

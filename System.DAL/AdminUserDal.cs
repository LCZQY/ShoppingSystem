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
    /// 管理员列表
    /// </summary>
    public class AdminUserDal
    {
        /// <summary>
        /// 获取列表
        /// </summary>
        /// <returns></returns>
        public List<AdminUser> GetList()
        {
            string sql = CreateSqlString.SelectSqlString(new AdminUser { });
            DataTable da = SqlHelper.GetDataTable(sql, CommandType.Text);
            List<AdminUser> list = null;
            if (da.Rows.Count > 0)
            {
                list = new List<AdminUser>();
                AdminUser AdminUser = null;
                foreach (DataRow row in da.Rows)
                {
                    AdminUser = new AdminUser();
                    LoadEntity(AdminUser, row);
                    list.Add(AdminUser);
                }
            }
            return list;
        }


        /// <summary>
        /// 分页获取列表
        /// </summary>
        /// <returns></returns>
        public List<AdminUser> GetList(int page, int index)
        {

            string sql = $"{CreateSqlString.SelectSqlString(new AdminUser { }) }limit  {((page - 1) * index)}, {index}";
            DataTable da = SqlHelper.GetDataTable(sql, CommandType.Text);
            List<AdminUser> list = null;
            if (da.Rows.Count > 0)
            {
                list = new List<AdminUser>();
                AdminUser AdminUser = null;
                foreach (DataRow row in da.Rows)
                {
                    AdminUser = new AdminUser();
                    LoadEntity(AdminUser, row);
                    list.Add(AdminUser);
                }
            }
            return list;
        }

        /// <summary>
        /// 获取一条用户信息 By ID
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public AdminUser GetDeail(int id)
        {
            string sql = $"{ CreateSqlString.SelectSqlString(new AdminUser { })} WHERE SuId =@SuId ";
            MySqlParameter[] pars ={
                                      new MySqlParameter("@SuId",SqlDbType.Int)
                                  };
            pars[0].Value = id;
            DataTable dt = SqlHelper.GetDataTable(sql, CommandType.Text, pars);
            AdminUser instance = null;
            if (dt.Rows.Count > 0)
            {
                instance = new AdminUser();
                LoadEntity(instance, dt.Rows[0]);
            }
            return instance;
        }

        /// <summary>
        /// 添加信息
        /// </summary>
        /// <param name="AdminUser"></param>
        /// <returns></returns>
        public int AddAdminUser(AdminUser AdminUser)
        {
            string sql = CreateSqlString.InsertSqlString(AdminUser);
            var pars = CreateSqlString.SqlParameterArray(AdminUser);
            return SqlHelper.ExecuteNonquery(sql, CommandType.Text, pars);
        }

        /// <summary>
        /// 更新用户信息
        /// </summary>
        /// <param name="AdminUser"></param>
        /// <returns></returns>
        public int UpdateAdminUser(AdminUser AdminUser)
        {
            string sql = $"{ CreateSqlString.UpdateSqlString(AdminUser)    } WHERE SuId =@SuId";
            var pars = CreateSqlString.SqlParameterArray(AdminUser);
            return SqlHelper.ExecuteNonquery(sql, CommandType.Text, pars);
        }

        /// <summary>
        /// 删除用户信息
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public int DeleteAdminUser(string id)
        {
            try
            {
                string sql = $"{ CreateSqlString.DeleteSqlString(new AdminUser { }) }  WHERE SuId = @SuId";
                MySqlParameter[] pars ={
                                      new MySqlParameter("@SuId",MySqlDbType.VarChar,36)
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
        /// <param name="AdminUser"></param>
        /// <param name="row"></param>
        /// <param name="row"></param>
        private void LoadEntity(AdminUser AdminUser, DataRow row)
        {

            AdminUser.SuId = row["SuId"] != DBNull.Value ? row["SuId"].ToString() : string.Empty;
            AdminUser.Pwd = row["Pwd"] != DBNull.Value ? row["Pwd"].ToString() : string.Empty;
            AdminUser.UserName = row["UserName"] != DBNull.Value ? row["UserName"].ToString() : string.Empty;
            AdminUser.Role = Convert.ToInt32(row["Role"] != DBNull.Value ? row["Role"].ToString() : string.Empty);

        }



    }
}

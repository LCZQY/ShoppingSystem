using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace System.DAL
{
    public class SqlHelper
    {
        private static string connStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        public static DataTable GetDataTable(string sql, CommandType type, params MySqlParameter[] pars)
        {
            using (MySqlConnection conn = new MySqlConnection(connStr))
            {
                using (MySqlDataAdapter apter = new MySqlDataAdapter(sql, conn))
                {
                    if (pars != null)
                    {
                        apter.SelectCommand.Parameters.AddRange(pars);
                    }
                    apter.SelectCommand.CommandType = type;
                    DataTable da = new DataTable();
                    apter.Fill(da);
                    return da;
                }
            }
        }

        /// <summary>
        /// 操作数据库
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="type"></param>
        /// <param name="pars"></param>
        /// <returns></returns>
        public static int ExecuteNonquery(string sql, CommandType type, params MySqlParameter[] pars)
        {
            using (MySqlConnection conn = new MySqlConnection(connStr))
            {
                using (MySqlCommand cmd = new MySqlCommand(sql, conn))
                {
                    if (pars != null)
                    {
                        cmd.Parameters.AddRange(pars);
                    }
                    cmd.CommandType = type;
                    conn.Open();
                    return cmd.ExecuteNonQuery();
                }
            }
        }


        /// <summary>
        /// 查询结果集里的第一个单元格的值（单个值）-- 泛型版本
        /// </summary>
        /// <typeparam name="T">类型参数</typeparam>
        /// <param name="strSelectCmd"></param>
        /// <param name="paras"></param>
        /// <returns></returns>
        public static T ExcuteScalar<T>(string strSelectCmd, params SqlParameter[] paras)
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                SqlCommand cmd = new SqlCommand(strSelectCmd, conn);
                cmd.Parameters.AddRange(paras);
                conn.Open();
                object o = cmd.ExecuteScalar();
                return (T)Convert.ChangeType(o, typeof(T));
            }
        }

    }
}

using MySql.Data.MySqlClient;
using System.Collections.Generic;
using System.Common;
using System.Data;
using System.Model;

/// <summary>
/// 数据处理层
/// </summary>
namespace System.DAL
{

   
    public class OrdersDal
    {
        /// <summary>
        /// 获取列表
        /// </summary>
        /// <returns></returns>
        public List<Orders> GetList()
        {
            string sql = CreateSqlString.SelectSqlString(new Orders { });
            DataTable da = SqlHelper.GetDataTable(sql, CommandType.Text);
            List<Orders> list = null;
            if (da.Rows.Count > 0)
            {
                list = new List<Orders>();
                Orders Orders = null;
                foreach (DataRow row in da.Rows)
                {
                    Orders = new Orders();
                    LoadEntity(Orders, row);
                    list.Add(Orders);
                }
            }
            return list;
        }


        /// <summary>
        /// 分页获取列表
        /// </summary>
        /// <returns></returns>
        public List<Orders> GetList(int page, int index)
        {

            string sql = $"{CreateSqlString.SelectSqlString(new Orders { }) }limit  {((page - 1) * index)}, {index}";
            DataTable da = SqlHelper.GetDataTable(sql, CommandType.Text);
            List<Orders> list = null;
            if (da.Rows.Count > 0)
            {
                list = new List<Orders>();
                Orders Orders = null;
                foreach (DataRow row in da.Rows)
                {
                    Orders = new Orders();
                    LoadEntity(Orders, row);
                    list.Add(Orders);
                }
            }
            return list;
        }

        /// <summary>
        /// 获取一条用户信息 By ID
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public Orders GetDeail(int id)
        {
            string sql = $"{ CreateSqlString.SelectSqlString(new Orders { })} WHERE OrdersId =@OrdersId ";
            MySqlParameter[] pars ={
                                      new MySqlParameter("@OrdersId",SqlDbType.Int)
                                  };
            pars[0].Value = id;
            DataTable dt = SqlHelper.GetDataTable(sql, CommandType.Text, pars);
            Orders instance = null;
            if (dt.Rows.Count > 0)
            {
                instance = new Orders();
                LoadEntity(instance, dt.Rows[0]);
            }
            return instance;
        }

        /// <summary>
        /// 添加信息
        /// </summary>
        /// <param name="Orders"></param>
        /// <returns></returns>
        public int AddOrders(Orders Orders)
        {
            string sql = CreateSqlString.InsertSqlString(Orders);
            var pars = CreateSqlString.SqlParameterArray(Orders);
            return SqlHelper.ExecuteNonquery(sql, CommandType.Text, pars);
        }

        /// <summary>
        /// 更新用户信息
        /// </summary>
        /// <param name="Orders"></param>
        /// <returns></returns>
        public int UpdateOrders(Orders Orders)
        {
            string sql = $"{ CreateSqlString.UpdateSqlString(Orders)    } WHERE OrdersId =@OrdersId";
            var pars = CreateSqlString.SqlParameterArray(Orders);
            return SqlHelper.ExecuteNonquery(sql, CommandType.Text, pars);
        }

        /// <summary>
        /// 删除用户信息
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public int DeleteOrders(string id)
        {
            try
            {
                string sql = $"{ CreateSqlString.DeleteSqlString(new Orders { }) }  WHERE OrdersId = @OrdersId";
                MySqlParameter[] pars ={
                                      new MySqlParameter("@OrdersId",MySqlDbType.VarChar,36)
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
        /// <param name="Orders"></param>
        /// <param name="row"></param>
        /// <param name="row"></param>
        private void LoadEntity(Orders Orders, DataRow row)
        {
            Orders.OrdersId = row["OrdersId"] != DBNull.Value ? row["OrdersId"].ToString() : string.Empty;
            Orders.DeliveryDate = Convert.ToDateTime(row["DeliveryDate"] != DBNull.Value ? row["DeliveryDate"].ToString() : string.Empty);
            Orders.Orderdate = Convert.ToDateTime(row["Orderdate"] != DBNull.Value ? row["Orderdate"].ToString() : string.Empty);
            Orders.UserId = row["UserId"] != DBNull.Value ? row["UserId"].ToString() : string.Empty;
            Orders.Total = Convert.ToDecimal(row["Total"] != DBNull.Value ? row["Total"].ToString() : string.Empty);
            Orders.DeliveryId = row["DeliveryId"] != DBNull.Value ? row["DeliveryId"].ToString() : string.Empty;
            Orders.States = Convert.ToInt32(row["States"] != DBNull.Value ? row["States"].ToString() : string.Empty);
            Orders.Remark = row["Remark"] != DBNull.Value ? row["Remark"].ToString() : string.Empty;
        }



    }
}

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

    /// <summary>
    /// 订单表表
    /// </summary>
    public class OrdersDetailDetailDal
    {
        /// <summary>
        /// 获取列表
        /// </summary>
        /// <returns></returns>
        public List<OrdersDetail> GetList()
        {
            string sql = CreateSqlString.SelectSqlString(new OrdersDetail { });
            DataTable da = SqlHelper.GetDataTable(sql, CommandType.Text);
            List<OrdersDetail> list = null;
            if (da.Rows.Count > 0)
            {
                list = new List<OrdersDetail>();
                OrdersDetail OrdersDetail = null;
                foreach (DataRow row in da.Rows)
                {
                    OrdersDetail = new OrdersDetail();
                    LoadEntity(OrdersDetail, row);
                    list.Add(OrdersDetail);
                }
            }
            return list;
        }


        /// <summary>
        /// 分页获取列表
        /// </summary>
        /// <returns></returns>
        public List<OrdersDetail> GetList(int page, int index)
        {

            string sql = $"{CreateSqlString.SelectSqlString(new OrdersDetail { }) }limit  {((page - 1) * index)}, {index}";
            DataTable da = SqlHelper.GetDataTable(sql, CommandType.Text);
            List<OrdersDetail> list = null;
            if (da.Rows.Count > 0)
            {
                list = new List<OrdersDetail>();
                OrdersDetail OrdersDetail = null;
                foreach (DataRow row in da.Rows)
                {
                    OrdersDetail = new OrdersDetail();
                    LoadEntity(OrdersDetail, row);
                    list.Add(OrdersDetail);
                }
            }
            return list;
        }

        /// <summary>
        /// 获取一条用户信息 By ID
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public OrdersDetail GetDeail(int id)
        {
            string sql = $"{ CreateSqlString.SelectSqlString(new OrdersDetail { })} WHERE DetailId =@DetailId ";
            MySqlParameter[] pars ={
                                      new MySqlParameter("@DetailId",SqlDbType.Int)
                                  };
            pars[0].Value = id;
            DataTable dt = SqlHelper.GetDataTable(sql, CommandType.Text, pars);
            OrdersDetail instance = null;
            if (dt.Rows.Count > 0)
            {
                instance = new OrdersDetail();
                LoadEntity(instance, dt.Rows[0]);
            }
            return instance;
        }

        /// <summary>
        /// 添加信息
        /// </summary>
        /// <param name="OrdersDetail"></param>
        /// <returns></returns>
        public int AddOrdersDetail(OrdersDetail OrdersDetail)
        {
            string sql = CreateSqlString.InsertSqlString(OrdersDetail);
            var pars = CreateSqlString.SqlParameterArray(OrdersDetail);
            return SqlHelper.ExecuteNonquery(sql, CommandType.Text, pars);
        }

        /// <summary>
        /// 更新用户信息
        /// </summary>
        /// <param name="OrdersDetail"></param>
        /// <returns></returns>
        public int UpdateOrdersDetail(OrdersDetail OrdersDetail)
        {
            string sql = $"{ CreateSqlString.UpdateSqlString(OrdersDetail)    } WHERE DetailId =@DetailId";
            var pars = CreateSqlString.SqlParameterArray(OrdersDetail);
            return SqlHelper.ExecuteNonquery(sql, CommandType.Text, pars);
        }

        /// <summary>
        /// 删除用户信息
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public int DeleteOrdersDetail(string id)
        {
            try
            {
                string sql = $"{ CreateSqlString.DeleteSqlString(new OrdersDetail { }) }  WHERE DetailId = @DetailId";
                MySqlParameter[] pars ={
                                      new MySqlParameter("@DetailId",MySqlDbType.VarChar,36)
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
        /// <param name="OrdersDetail"></param>
        /// <param name="row"></param>
        /// <param name="row"></param>
        private void LoadEntity(OrdersDetail OrdersDetail, DataRow row)
        {
            OrdersDetail.DetailId = row["DetailId"] != DBNull.Value ? row["DetailId"].ToString() : string.Empty;
            OrdersDetail.ProductId = row["ProductId"] != DBNull.Value ? row["ProductId"].ToString() : string.Empty;
            OrdersDetail.Quantity = Convert.ToInt32(row["Quantity"] != DBNull.Value ? row["Quantity"].ToString() : string.Empty);
            OrdersDetail.OrdersID = row["OrdersID"] != DBNull.Value ? row["OrdersID"].ToString() : string.Empty;
            var state = Convert.ToInt32(row["States"] != DBNull.Value ? row["States"].ToString() : string.Empty);
            switch (state)
            {
                case 0:
                    OrdersDetail.States = OrdersStatesEnum.Normal;
                    break;
                case 1:
                    OrdersDetail.States = OrdersStatesEnum.Return;
                    break;
                case 2:
                    OrdersDetail.States = OrdersStatesEnum.ReturnIng;
                    break;

            }
           
         
        }



    }
}

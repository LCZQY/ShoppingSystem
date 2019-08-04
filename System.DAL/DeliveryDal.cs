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


    public class DeliveryDal
    {
        /// <summary>
        /// 获取列表
        /// </summary>
        /// <returns></returns>
        public List<Delivery> GetList()
        {
            string sql = CreateSqlString.SelectSqlString(new Delivery { });
            DataTable da = SqlHelper.GetDataTable(sql, CommandType.Text);
            List<Delivery> list = null;
            if (da.Rows.Count > 0)
            {
                list = new List<Delivery>();
                Delivery Delivery = null;
                foreach (DataRow row in da.Rows)
                {
                    Delivery = new Delivery();
                    LoadEntity(Delivery, row);
                    list.Add(Delivery);
                }
            }
            return list;
        }


        /// <summary>
        /// 分页获取列表
        /// </summary>
        /// <returns></returns>
        public List<Delivery> GetList(int page, int index)
        {

            string sql = $"{CreateSqlString.SelectSqlString(new Delivery { }) }limit  {((page - 1) * index)}, {index}";
            DataTable da = SqlHelper.GetDataTable(sql, CommandType.Text);
            List<Delivery> list = null;
            if (da.Rows.Count > 0)
            {
                list = new List<Delivery>();
                Delivery Delivery = null;
                foreach (DataRow row in da.Rows)
                {
                    Delivery = new Delivery();
                    LoadEntity(Delivery, row);
                    list.Add(Delivery);
                }
            }
            return list;
        }

        /// <summary>
        /// 获取一条用户信息 By ID
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public Delivery GetDeail(int id)
        {
            string sql = $"{ CreateSqlString.SelectSqlString(new Delivery { })} WHERE DeliveryId =@DeliveryId ";
            MySqlParameter[] pars ={
                                      new MySqlParameter("@DeliveryId",SqlDbType.Int)
                                  };
            pars[0].Value = id;
            DataTable dt = SqlHelper.GetDataTable(sql, CommandType.Text, pars);
            Delivery instance = null;
            if (dt.Rows.Count > 0)
            {
                instance = new Delivery();
                LoadEntity(instance, dt.Rows[0]);
            }
            return instance;
        }

        /// <summary>
        /// 添加信息
        /// </summary>
        /// <param name="Delivery"></param>
        /// <returns></returns>
        public int AddDelivery(Delivery Delivery)
        {
            string sql = CreateSqlString.InsertSqlString(Delivery);
            var pars = CreateSqlString.SqlParameterArray(Delivery);
            return SqlHelper.ExecuteNonquery(sql, CommandType.Text, pars);
        }

        /// <summary>
        /// 更新用户信息
        /// </summary>
        /// <param name="Delivery"></param>
        /// <returns></returns>
        public int UpdateDelivery(Delivery Delivery)
        {
            string sql = $"{ CreateSqlString.UpdateSqlString(Delivery)    } WHERE DeliveryId =@DeliveryId";
            var pars = CreateSqlString.SqlParameterArray(Delivery);
            return SqlHelper.ExecuteNonquery(sql, CommandType.Text, pars);
        }

        /// <summary>
        /// 删除用户信息
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public int DeleteDelivery(string id)
        {
            try
            {
                string sql = $"{ CreateSqlString.DeleteSqlString(new Delivery { }) }  WHERE DeliveryId = @DeliveryId";
                MySqlParameter[] pars ={
                                      new MySqlParameter("@DeliveryId",MySqlDbType.VarChar,36)
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
        /// <param name="Delivery"></param>
        /// <param name="row"></param>
        /// <param name="row"></param>
        private void LoadEntity(Delivery Delivery, DataRow row)
        {
            Delivery.DeliveryId = row["DeliveryId"] != DBNull.Value ? row["DeliveryId"].ToString() : string.Empty;
            Delivery.Complete = row["Complete"] != DBNull.Value ? row["Complete"].ToString() : string.Empty;
            Delivery.Consignee = row["Consignee"] != DBNull.Value ? row["Consignee"].ToString() : string.Empty;
            Delivery.Phone = row["Phone"] != DBNull.Value ? row["Phone"].ToString() : string.Empty;
            Delivery.UserId = row["UserId"] != DBNull.Value ? row["UserId"].ToString() : string.Empty;

        }



    }
}

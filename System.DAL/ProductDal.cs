using MySql.Data.MySqlClient;
using System.Collections.Generic;
using System.Data;
using System.Model;

/// <summary>
/// 数据处理层
/// </summary>
namespace System.DAL
{

    /// <summary>
    /// 商品表
    /// </summary>
    public class ProductDal
    {
        /// <summary>
        /// 获取列表
        /// </summary>
        /// <returns></returns>
        public List<Product> GetList()
        {
            string sql = "select ProductId,Title,CateId,MarketPrice,Price,Content,PostTime,Stock from Product";
            DataTable da = SqlHelper.GetDataTable(sql, CommandType.Text);
            List<Product> list = null;
            if (da.Rows.Count > 0)
            {
                list = new List<Product>();
                Product Product = null;
                foreach (DataRow row in da.Rows)
                {
                    Product = new Product();
                    LoadEntity(Product, row);
                    list.Add(Product);
                }
            }
            return list;
        }


        /// <summary>
        /// 分页获取列表
        /// </summary>
        /// <returns></returns>
        public List<Product> GetList(int page, int index)
        {

            string sql = $"select ProductId,Title,CateId,MarketPrice,Price,Content,PostTime,Stock from Product limit  {((page - 1) * index)}, {index}";
            DataTable da = SqlHelper.GetDataTable(sql, CommandType.Text);
            List<Product> list = null;
            if (da.Rows.Count > 0)
            {
                list = new List<Product>();
                Product Product = null;
                foreach (DataRow row in da.Rows)
                {
                    Product = new Product();
                    LoadEntity(Product, row);
                    list.Add(Product);
                }
            }
            return list;
        }

        ///// <summary>
        ///// 获取一条用户信息 By ID
        ///// </summary>
        ///// <param name="id"></param>
        ///// <returns></returns>
        //public Product GetDeail(int id)
        //{
        //    string sql = "select CateId,CateName,ParentId from Product where CateId = @CateId";
        //    MySqlParameter[] pars ={
        //                              new MySqlParameter("@CateId",SqlDbType.Int)
        //                          };
        //    pars[0].Value = id;
        //    DataTable dt = SqlHelper.GetDataTable(sql, CommandType.Text, pars);
        //    Product instance = null;
        //    if (dt.Rows.Count > 0)
        //    {
        //        instance = new Product();
        //        LoadEntity(instance, dt.Rows[0]);
        //    }
        //    return instance;
        //}

        /// <summary>
        /// 添加信息
        /// </summary>
        /// <param name="Product"></param>
        /// <returns></returns>
        public int AddProduct(Product Product)
        {
            string sql = "insert into Product(ProductId,Title,CateId,MarketPrice,Price,Content,PostTime,Stock) values(@ProductId,@Title,@CateId,@MarketPrice,@Price,@Content,@PostTime,@Stock)";
            MySqlParameter[] pars = {
                                new MySqlParameter("@ProductId",MySqlDbType.VarChar,32),
                                  new MySqlParameter("@Title",MySqlDbType.VarChar,32),
                                              new MySqlParameter("@CateId",MySqlDbType.VarChar,32),
                                         new MySqlParameter("@MarketPrice",MySqlDbType.Decimal),
                                         new MySqlParameter("@Price",MySqlDbType.Decimal),
                                           new MySqlParameter("@Stock",MySqlDbType.Int32),
                                           new MySqlParameter("@PostTime",MySqlDbType.DateTime),
                                           new MySqlParameter("@Content",MySqlDbType.Text),
                                  };
            pars[0].Value = Product.ProductId;
            pars[1].Value = Product.Title;
            pars[2].Value = Product.CateId;
            pars[3].Value = Product.ProductId;
            pars[4].Value = Product.Title;
            pars[5].Value = Product.CateId;
            pars[5].Value = Product.Title;
            pars[7].Value = Product.CateId;
            return SqlHelper.ExecuteNonquery(sql, CommandType.Text, pars);
        }

        /// <summary>
        /// 更新用户信息
        /// </summary>
        /// <param name="Product"></param>
        /// <returns></returns>
        public int UpdateProduct(Product Product)
        {

            string sql = "UPDATE Product SET CateName = @CateName,ParentId = @ParentId, WHERE CateId = @CateId";
            MySqlParameter[] pars = {
                                       new MySqlParameter("@CateName",MySqlDbType.VarChar,50),
                                       new MySqlParameter("@ParentId",MySqlDbType.VarChar,50),
                                       new MySqlParameter("@CateId",MySqlDbType.VarChar),

                                   };
            pars[0].Value = Product.CateName;
            pars[1].Value = Product.ParentId;
            pars[2].Value = Product.CateId;
            return SqlHelper.ExecuteNonquery(sql, CommandType.Text, pars);
        }

        /// <summary>
        /// 删除用户信息
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public int DeleteProduct(string id)
        {
            try
            {
                string sql = "DELETE FROM Product WHERE CateId = @CateId";
                MySqlParameter[] pars ={
                                      new MySqlParameter("@CateId",MySqlDbType.VarChar,36)
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
        /// <param name="Product"></param>
        /// <param name="row"></param>
        /// <param name="row"></param>
        private void LoadEntity(Product Product, DataRow row)
        {
            // ？？ 是否可进一步封装
            //Type t = Product.GetType(); 
            //foreach (PropertyInfo pi in t.GetProperties())
            //{
            //    var name = pi.Name;//获得属性的名字         
            //}
            Product.Content = row["Content"] != DBNull.Value ? row["Content"].ToString() : string.Empty;
            Product.CateId = row["CateId"] != DBNull.Value ? row["CateId"].ToString() : string.Empty;
            Product.MarketPrice = Convert.ToDecimal(row["MarketPrice"] != DBNull.Value ? row["MarketPrice"].ToString() : string.Empty);
            Product.Price = Convert.ToDecimal(row["Price"] != DBNull.Value ? row["Price"].ToString() : string.Empty);
            Product.PostTime = Convert.ToDateTime(row["PostTime"] != DBNull.Value ? row["PostTime"].ToString() : string.Empty);
            Product.ProductId = row["ProductId"] != DBNull.Value ? row["ProductId"].ToString() : string.Empty;
            Product.Title = row["Title"] != DBNull.Value ? row["Title"].ToString() : string.Empty;
            Product.Stock = Convert.ToInt32(row["Stock"] != DBNull.Value ? row["Stock"].ToString() : string.Empty);
        }

        

    }
}

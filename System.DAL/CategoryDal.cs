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
    /// 商品类型表
    /// </summary>
    public class CategoryDal
    {



        /// <summary>
        /// 获取列表
        /// </summary>
        /// <returns></returns>
        public List<Category> GetList()
        {
            string sql = "select CateId,CateName,ParentId from Category";
            DataTable da = SqlHelper.GetDataTable(sql, CommandType.Text);
            List<Category> list = null;
            if (da.Rows.Count > 0)
            {
                list = new List<Category>();
                Category category = null;
                foreach (DataRow row in da.Rows)
                {
                    category = new Category();
                    LoadEntity(category, row);
                    list.Add(category);
                }
            }
            return list;
        }


        /// <summary>
        /// 分页获取列表
        /// </summary>
        /// <returns></returns>
        public List<Category> GetList(int page, int index)
        {

            string sql = $"select CateId,CateName,ParentId from Category limit  {((page - 1) * index)}, {index}";
            DataTable da = SqlHelper.GetDataTable(sql, CommandType.Text);
            List<Category> list = null;
            if (da.Rows.Count > 0)
            {
                list = new List<Category>();
                Category category = null;
                foreach (DataRow row in da.Rows)
                {
                    category = new Category();
                    LoadEntity(category, row);
                    list.Add(category);
                }
            }
            return list;
        }

        /// <summary>
        /// 获取一条用户信息 By ID
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public Category GetDeail(int id)
        {
            string sql = "select CateId,CateName,ParentId from Category where CateId = @CateId";
            MySqlParameter[] pars ={
                                      new MySqlParameter("@CateId",SqlDbType.Int)
                                  };
            pars[0].Value = id;
            DataTable dt = SqlHelper.GetDataTable(sql, CommandType.Text, pars);
            Category instance = null;
            if (dt.Rows.Count > 0)
            {
                instance = new Category();
                LoadEntity(instance, dt.Rows[0]);
            }
            return instance;
        }

        /// <summary>
        /// 添加用户信息
        /// </summary>
        /// <param name="category"></param>
        /// <returns></returns>
        public int Addcategory(Category category)
        {
            string sql = "insert into category(CateId,CateName,ParentId) values(@CateId,@CateName,@ParentId)";
            MySqlParameter[] pars = {
                                new MySqlParameter("@CateId",MySqlDbType.VarChar,32),
                                  new MySqlParameter("@CateName",MySqlDbType.VarChar,32),
                                         new MySqlParameter("@ParentId",MySqlDbType.VarChar,32),
                                  };
            pars[0].Value = category.CateId;
            pars[1].Value = category.CateName;
            pars[2].Value = category.ParentId;
            return SqlHelper.ExecuteNonquery(sql, CommandType.Text, pars);
        }

        /// <summary>
        /// 更新用户信息
        /// </summary>
        /// <param name="category"></param>
        /// <returns></returns>
        public int Updatecategory(Category category)
        {
            string sql = $"{ CreateSqlString.UpdateSqlString(category)    } WHERE CateId =@CateId";
            var pars = CreateSqlString.SqlParameterArray(category);
            //string sql = "UPDATE Category SET CateName = @CateName,ParentId = @ParentId, WHERE CateId = @CateId";
            //MySqlParameter[] pars = {
            //                           new MySqlParameter("@CateName",MySqlDbType.VarChar,50),
            //                           new MySqlParameter("@ParentId",MySqlDbType.VarChar,50),
            //                           new MySqlParameter("@CateId",MySqlDbType.VarChar),

            //                       };
            //pars[0].Value = category.CateName;
            //pars[1].Value = category.ParentId;
            //pars[2].Value = category.CateId;
            return SqlHelper.ExecuteNonquery(sql, CommandType.Text, pars);
        }

        /// <summary>
        /// 删除用户信息
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public int Deletecategory(string id)
        {
            try
            {
                string sql = "DELETE FROM Category WHERE CateId = @CateId";
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
        /// 批量删除信息
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public int DeletecAllategory(string[] id)
        {
            try
            {
                var arry = string.Join("', '", id);
                string sql = $"DELETE FROM Category WHERE CateId in(@CateId)";
                MySqlParameter[] pars ={
                                      new MySqlParameter("@CateId",MySqlDbType.VarChar,36)
                                  };
                pars[0].Value = arry;
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
        /// <param name="category"></param>
        /// <param name="row"></param>
        /// <param name="row"></param>
        private void LoadEntity(Category category, DataRow row)
        {
            // ？？ 是否可进一步封装
            //Type t = category.GetType(); 
            //foreach (PropertyInfo pi in t.GetProperties())
            //{
            //    var name = pi.Name;//获得属性的名字         
            //}
            category.CateName = row["CateName"] != DBNull.Value ? row["CateName"].ToString() : string.Empty;
            category.CateId = row["CateId"] != DBNull.Value ? row["CateId"].ToString() : string.Empty;
            category.ParentId = row["ParentId"] != DBNull.Value ? row["ParentId"].ToString() : string.Empty;

        }

    }
}

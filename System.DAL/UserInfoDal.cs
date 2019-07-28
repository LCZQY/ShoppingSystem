using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Model;
using System.Text;
using System.Threading.Tasks;

/// <summary>
/// 数据处理层
/// </summary>
namespace System.DAL
{
    public class UserInfoDal
    {

        /// <summary>
        /// 获取用户列表
        /// </summary>
        /// <returns></returns>
        public List<Users> GetList()
        {
            string sql = "select * from Users";
            DataTable da = SqlHelper.GetDataTable(sql, CommandType.Text);
            List<Users> list = null;
            if (da.Rows.Count > 0)
            {
                list = new List<Users>();
                Users Users = null;
                foreach (DataRow row in da.Rows)
                {
                    Users = new Users();
                    LoadEntity(Users, row);
                    list.Add(Users);
                }
            }
            return list;
        }

        /// <summary>
        /// 获取一条用户信息 By ID
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public Users GetDeail(int id)
        {
            string sql = "SELECT id,Usersname,Userspass,regtime,email FROM Users where id = @id";
            SqlParameter[] pars ={
                                      new SqlParameter("@id",SqlDbType.Int)
                                  };
            pars[0].Value = id;
            DataTable dt = SqlHelper.GetDataTable(sql, CommandType.Text, pars);
            Users instance = null;
            if (dt.Rows.Count > 0)
            {
                instance = new Users();
                LoadEntity(instance, dt.Rows[0]);
            }
            return instance;
        }

        /// <summary>
        /// 添加用户信息
        /// </summary>
        /// <param name="Users"></param>
        /// <returns></returns>
        public int AddUsers(Users Users)
        {
            string sql = "insert into Users(UsersName,UsersPass,RegTime,Email) values(@UsersName,@UsersPass,@RegTime,@Email)";
            SqlParameter[] pars = {
                                new SqlParameter("@UsersName",SqlDbType.NVarChar,32),
                                  new SqlParameter("@UsersPass",SqlDbType.NVarChar,32),
                                         new SqlParameter("@RegTime",SqlDbType.DateTime),
                                    new SqlParameter("@Email",SqlDbType.NVarChar,32)
                                  };
            pars[0].Value = Users.UserName;
            pars[1].Value = Users.UserPass;
            pars[2].Value = Users.RegTime;
            pars[3].Value = Users.Email;
            return SqlHelper.ExecuteNonquery(sql, CommandType.Text, pars);
        }

        /// <summary>
        /// 更新用户信息
        /// </summary>
        /// <param name="Users"></param>
        /// <returns></returns>
        public int UpdateUsers(Users Users)
        {
            string sql = "UPDATE Users SET Usersname = @Usersname,Userspass = @Userspass,regtime = @regtime,email = @email WHERE id = @id";
            SqlParameter[] pars = {
                                       new SqlParameter("@Usersname",SqlDbType.NVarChar,50),
                                       new SqlParameter("@Userspass",SqlDbType.NVarChar,50),
                                       new SqlParameter("@regtime",SqlDbType.DateTime),
                                       new SqlParameter("@email",SqlDbType.NVarChar,50),
                                       new SqlParameter("@id",SqlDbType.Int)
                                   };
            pars[0].Value = Users.UserName;
            pars[1].Value = Users.UserPass;
            pars[2].Value = Users.RegTime;
            pars[3].Value = Users.Email;
            pars[4].Value = Users.Id;
            return SqlHelper.ExecuteNonquery(sql, CommandType.Text, pars);
        }

        /// <summary>
        /// 删除用户信息
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public int DeleteUsers(int id)
        {
            string sql = "DELETE FROM Users WHERE id = @id";
            SqlParameter[] pars ={
                                      new SqlParameter("@id",SqlDbType.Int)
                                  };
            pars[0].Value = id;
            return SqlHelper.ExecuteNonquery(sql, CommandType.Text, pars);
        }

        private void LoadEntity(Users Users, DataRow row)
        {
            Users.UserName = row["UsersName"] != DBNull.Value ? row["UsersName"].ToString() : string.Empty;

            Users.UserPass = row["UsersPass"] != DBNull.Value ? row["UsersPass"].ToString() : string.Empty;
            Users.Email = row["Email"] != DBNull.Value ? row["Email"].ToString() : string.Empty;
            Users.Id = Convert.ToInt32(row["ID"]);
            Users.RegTime = row["RegTime"] != DBNull.Value ? Convert.ToDateTime(row["RegTime"]) : DateTime.Now;
        }

    }
}

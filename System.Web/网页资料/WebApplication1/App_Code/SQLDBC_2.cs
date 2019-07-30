using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;


namespace WebApplication1.App_aspx.App_HomePage
{
    public class SQLDBC
    {
        public string ConnStr = string.Empty;
        public SqlConnection ConnObj;    //连接字符串对象
          
        public SQLDBC()
        {
            //默认连接字符串
            // ConnStr = "user id=sa;password=&U*I(O)Pjojo;initial catalog=KDCDB;data source=10.142.1.2";
            ConnStr = System.Configuration.ConfigurationManager.ConnectionStrings["LCConnectionString"].ConnectionString;

        }


        public void open()       //打开数据库
        {
            ConnObj = new SqlConnection(ConnStr);
            ConnObj.Open();
        }


        public void Close()       //关闭数据库
        {
            if (ConnObj != null)
            {
                ConnObj.Dispose();
                ConnObj.Close();
            }
            GC.Collect();
        }

        //返回connection对象  

        public SqlConnection ReturnConn()
        {
            SqlConnection Conn = new SqlConnection(ConnStr);
            Conn.Open();
            return Conn;
        }




        // 关闭数据库连接，释放对象
        public void Dispose(SqlConnection Conn)
        {
            if (Conn != null)
            {
                Conn.Close();
                Conn.Dispose();
            }
            GC.Collect();
        }


        /// <summary>
        /// 执行sql语句
        /// </summary>
        /// <param name="SQL">SQL语句</param>

        public void RunProc(string SQL)
        {
            SqlConnection Conn;
            Conn = new SqlConnection(ConnStr);
            Conn.Open();

            SqlCommand Cmd;
            Cmd = CreateCmd(SQL, Conn);
            //try
            //{
            Cmd.ExecuteNonQuery();
            //}
            //catch
            //{
            //    // throw new Exception(SQL);
            //}
            Dispose(Conn);
            return;
        }


        /// 运行SQL语句,返回DataSet对象 
        /// SQL语句
        /// DataSet对象

        public DataSet RunProc(string SQL, DataSet Ds)
        {
            SqlConnection Conn;
            Conn = new SqlConnection(ConnStr);
            //if (Conn.State == System.Data.ConnectionState.Closed)

            Conn.Open();

            SqlDataAdapter Da;

            //Da = CreateDa(SQL, Conn); 
            Da = new SqlDataAdapter(SQL, Conn);
            try
            {
                Da.Fill(Ds);
            }
            catch (Exception Err)
            {
                throw Err;
            }
            Dispose(Conn);
            return Ds;
        }

        /// <summary>
        /// 返回DataTable对象
        /// </summary>
        /// <param name="SQL">检索数据sql字符串</param>
        /// <param name="Dt">datatable对象</param>
        /// <returns></returns>
        public DataTable ReturnDataTable(string SQL, DataTable Dt)
        {
            SqlConnection Conn;
            Conn = new SqlConnection(ConnStr);
            Conn.Open();
            SqlDataAdapter da = new SqlDataAdapter(SQL, Conn);
            try
            {
                da.Fill(Dt);
            }
            catch (Exception Err)
            {
                throw Err;
            }
            Dispose(Conn);
            da.Dispose();//释放SqlDataAdapter
            return Dt;

        }



        /// 返回adapter对象 

        public SqlDataAdapter CreateDa(string SQL)
        {
            //  SqlConnection Conn;
            //  Conn = new SqlConnection(ConnStr);
            //  Conn.Open();
            open();//使用全局SqlConnection对象
            SqlDataAdapter Da;
            Da = new SqlDataAdapter(SQL, ConnObj);
            return Da;
        }



        /// 运行SQL语句返回DataReader 
        /// OracleDataReader对象.
        public SqlDataReader RunProcGetReader(string SQL)
        {
            //SqlConnection Conn;
            //Conn = new SqlConnection(ConnStr);
            //Conn.Open();
            SqlCommand Cmd;
            open();//使用全局SqlConnection对象
            Cmd = CreateCmd(SQL, ConnObj);
            SqlDataReader Dr;

            try
            {
                Dr = Cmd.ExecuteReader(CommandBehavior.Default);
            }
            catch
            {
                throw new Exception(SQL);
            }
            //Dispose(Conn); 
            return Dr;
        }


        /// 生成Command对象 

        public SqlCommand CreateCmd(string SQL, SqlConnection Conn)
        {
            SqlCommand Cmd;
            Cmd = new SqlCommand(SQL, Conn);
            return Cmd;
        }


        /// 生成Command对象 
        public SqlCommand CreateCmd(string SQL)
        {
            // SqlConnection Conn;
            // Conn = new SqlConnection(ConnStr);
            //  Conn.Open();
            open();//使用全局SqlConnection对象
            SqlCommand Cmd;
            Cmd = new SqlCommand(SQL, ConnObj);
            return Cmd;
        }





        /// 运行SQL语句,返回DataSet对象 
        /// SQL语句
        /// DataSet对象
        /// 表名
        public DataSet RunProc(string SQL, DataSet Ds, string tablename)
        {

            SqlConnection Conn;

            Conn = new SqlConnection(ConnStr);
            Conn.Open();
            SqlDataAdapter Da;

            Da = CreateDa(SQL);
            try
            {
                Da.Fill(Ds, tablename);
            }
            catch (Exception Ex)
            {
                throw Ex;
            }
            Dispose(Conn);
            return Ds;
        }


        /// <summary>
        /// 检验是否存在数据 
        /// </summary>
        /// <param name="SQL">sql命令字符串</param>
        /// <returns>布尔值</returns>
        public bool ExistDate(string SQL)
        {
            SqlConnection Conn;
            Conn = new SqlConnection(ConnStr);
            Conn.Open();
            SqlDataReader Dr;
            Dr = CreateCmd(SQL, Conn).ExecuteReader();
            if (Dr.Read())
            {
                Dispose(Conn);
                return true;
            }
            else
            {
                Dispose(Conn);
                return false;
            }
        }



        ///// 字符串
        /// <summary>
        /// 返回SQL语句执行结果的第一行第一列 
        /// </summary>
        /// <param name="SQL"></param>
        /// <returns></returns>
        public string ReturnValue(string SQL)
        {
            SqlConnection Conn;
            Conn = new SqlConnection(ConnStr);
            Conn.Open();
            string result;
            SqlDataReader Dr;

            try
            {
                Dr = CreateCmd(SQL, Conn).ExecuteReader();
                if (Dr.Read())
                {
                    result = Dr[0].ToString();
                    Dr.Close();
                }
                else
                {
                    result = "";
                    Dr.Close();
                }
            }
            catch
            {
                throw new Exception(SQL);
            }
            Dispose(Conn);
            return result;
        }


        /// <summary>
        /// 返回SQL语句第一列,第ColumnI列,
        /// </summary>
        /// <param name="SQL">sql语句</param>
        /// <param name="ColumnI">列数</param>
        /// <returns>字段值</returns>
        public string ReturnValue(string SQL, int ColumnI)
        {
            SqlConnection Conn;
            Conn = new SqlConnection(ConnStr);
            Conn.Open();
            string result;
            SqlDataReader Dr;
            try
            {
                Dr = CreateCmd(SQL, Conn).ExecuteReader();
            }
            catch
            {
                throw new Exception(SQL);
            }
            if (Dr.Read())
            {
                result = Dr[ColumnI].ToString();
            }
            else
            {
                result = "";
            }
            Dr.Close();
            Dispose(Conn);
            return result;
        }


        //获得记录总数
        public int CalculateRecord(string SQL)
        {
            int intCount;
            SqlConnection Conn;
            Conn = new SqlConnection(ConnStr);
            Conn.Open();
            SqlCommand MyComm = new SqlCommand(SQL, Conn);
            SqlDataReader dr = MyComm.ExecuteReader();
            if (dr.Read())
            {
                intCount = Int32.Parse(dr[0].ToString());
            }
            else
            {
                intCount = 0;
            }
            dr.Dispose();
            dr.Close();
            Dispose(Conn);
            return intCount;
        }

    }
}

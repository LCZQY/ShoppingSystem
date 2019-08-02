using MySql.Data.MySqlClient;
using System.Reflection;

namespace System.Common
{
    public class Sql
    {
        public string FieldStr { get; set; }
        public string ParameterStr { get; set; }

        public string UpdateStr { get; set; }

    }

    /// <summary>
    /// 使用本帮助类时,注意一定要按照属性的顺利赋值
    /// </summary>
    public class CreateSqlString
    {

        /// <summary>
        ///  抽取实体属性
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="model"></param>
        /// <returns></returns>
        private static Sql SplicingSql<T>(T model)
        {
            var field = "";
            var parameter = "";
            var updatestr = "";
            Type t = model.GetType();
            foreach (PropertyInfo pi in t.GetProperties())
            {
                field += pi.Name + ",";
                parameter += "@" + pi.Name + ",";
                updatestr += $"{pi.Name} =@{pi.Name},";
            }
            field = field.Substring(0, field.LastIndexOf(",") );
            parameter = parameter.Substring(0, parameter.LastIndexOf(","));
            updatestr = updatestr.Substring(0, updatestr.LastIndexOf(",") );
            Sql sql = new Sql { FieldStr = field, ParameterStr = parameter, UpdateStr = updatestr };
            return sql;
        }


        /// <summary>
        /// 获取实体名称
        /// </summary>
        /// <param name="obj"></param>
        /// <returns></returns>
        private static string GetName(string obj)
        {
            var start = obj.LastIndexOf('.') + 1;
            return obj.Substring(start, obj.Length - start);
        }

        /// <summary>
        /// 插入Sql
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="model"></param>
        /// <returns></returns>
        public static string SelectSqlString<T>(T model)
        {
            var name = typeof(T).ToString();
            var str = SplicingSql(model);
            var Sql = $"SELECT { str.FieldStr } FROM {GetName(name)}";
            return Sql;
        }

        /// <summary>
        /// 插入Sql
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="model"></param>
        /// <returns></returns>
        public static string InsertSqlString<T>(T model)
        {
            var name = typeof(T).ToString();
            var str = SplicingSql(model);
            var Sql = $"INSERT INTO {GetName(name)}({ str.FieldStr } )VALUES ({ str.ParameterStr})";
            return Sql;
        }


        /// <summary>
        /// 更新Sql
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="model"></param>
        /// <returns></returns>
        public static string UpdateSqlString<T>(T model)
        {
            var name = typeof(T).ToString();
            var str = SplicingSql(model);
            var Sql = $"UPDATE {GetName(name)}  SET {str.UpdateStr}";
            return Sql;
        }


        /// <summary>
        /// 删除Sql
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="model"></param>
        /// <returns></returns>
        public static string DeleteSqlString<T>(T model)
        {
            var name = typeof(T).ToString();
            var Sql = $"DELETE FROM {GetName(name)}";
            return Sql;
        }

        /// <summary>
        /// 防止Sql注入，组合参数化写法
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="model"></param>
        /// <returns></returns>
        public static MySqlParameter[] SqlParameterArray<T>(T model)
        {
            Type t = model.GetType();
            try
            {
                MySqlParameter[] pars = new MySqlParameter[t.GetProperties().Length];
                var i = 0;
                foreach (PropertyInfo pi in t.GetProperties())
                {
                    var value = pi.GetValue(model, null);//用pi.GetValue获得值
                    var type = (value?.GetType() ?? typeof(object)).Name;//获得属性的类型         
                                                                         //if (pi.Name.ToLower().IndexOf("id") > -1) continue;
                    switch (type)
                    {
                        case "String":
                            pars[i] = new MySqlParameter($"@{pi.Name}", MySqlDbType.VarChar, 32);

                            break;
                        case "DateTime":
                            pars[i] = new MySqlParameter($"@{pi.Name}", MySqlDbType.DateTime);

                            break;
                        case "Int32":
                            pars[i] = new MySqlParameter($"@{pi.Name}", MySqlDbType.Int32);

                            break;
                        case "Decimal":
                            pars[i] = new MySqlParameter($"@{pi.Name}", MySqlDbType.Decimal);

                            break;
                        case "Double":
                            pars[i] = new MySqlParameter($"@{pi.Name}", MySqlDbType.Double);
                            break;
                        default:
                            pars[i] = new MySqlParameter($"@{pi.Name}", MySqlDbType.VarChar, 32);
                            break;
                    }
                    pars[i].Value = value?? null;
                    i += 1;
                }

                return pars;
            }catch(Exception e)
            {
                string error = e.Message;
                throw;

            }

        }
    }
}

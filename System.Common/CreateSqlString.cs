using System;
using System.Collections.Generic;
using System.Reflection;
using System.Text;

namespace System.Common
{
    public class Sql
    {
        public  string FieldStr { get; set; }
        public  string ParameterStr { get; set; }

        public string UpdateStr { get; set; }

    }
    public class CreateSqlString
    {

        /// <summary>
        ///  抽取实体属性
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="model"></param>
        /// <returns></returns>
        public static Sql SplicingSql<T>(T model)
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
            field = field.Substring(0, field.LastIndexOf(",") - 1);
            parameter = parameter.Substring(0, parameter.LastIndexOf(",") - 1);
            updatestr = updatestr.Substring(0, updatestr.LastIndexOf(",") - 1);
            Sql sql = new Sql { FieldStr = field, ParameterStr = parameter };
            return sql;
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
            var d = name.LastIndexOf(".");
            var df = name.Length - name.LastIndexOf(".");
          //  name.Substring(, name.Length - name.LastIndexOf("."));
            var str = SplicingSql(model);
            var Sql = $"INSERT INTO {name}({ str.FieldStr } )VALUES ({ str.ParameterStr});";
            return Sql;
        }


        /// <summary>
        /// 插入Sql
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="model"></param>
        /// <returns></returns>
        public static dynamic  UpdateSqlString<T>(T model)
        {
            var name = typeof(T).ToString();
            name.Substring(name.LastIndexOf(","), name.Length - 1);
            var str = SplicingSql(model);
            var Sql = $"UPDATE {name}  SET {str}";
            return Sql;
        }


    }
}

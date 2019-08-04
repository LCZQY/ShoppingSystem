using System;
using System.Reflection;
using System.Web;
using System.Web.Caching;

namespace ShoppingSystem.Common
{
    public class CacheControl
    {
        private static string devMode;

        /// <summary>
        ///  过期时间
        /// </summary>
        /// <returns></returns>
        public static TimeSpan DefaultCacheTime()
        {
            return new TimeSpan(5, 0, 0);
        }

        /// <summary>
        /// 获取缓存
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <returns></returns>
        public static T Get<T>() where T : new()
        {
            string fullName = typeof(T).FullName;
            object cache = GetCache(fullName);
            if (cache == null)
            {
                T objObject = (T)Activator.CreateInstance(typeof(T));
                SetCache(fullName, objObject, DefaultCacheTime());
                return objObject;
            }
            return (T)cache;
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="cacheKey"></param>
        /// <returns></returns>
        public static object GetCache(string cacheKey)
        {
            if (devMode == "Y")
            {
                return null;
            }
            return HttpRuntime.Cache[cacheKey];
        }

        public static object GetObject(Type type)
        {
            string fullName = type.FullName;
            object cache = GetCache(fullName);
            if (cache == null)
            {
                object objObject = Activator.CreateInstance(type);
                SetCache(fullName, objObject, DefaultCacheTime());
                return objObject;
            }
            return cache;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="type"></param>
        /// <param name="dll"></param>
        /// <returns></returns>
        public static object GetObject(Type type, Assembly dll)
        {
            string fullName = type.FullName;
            object cache = GetCache(fullName);
            if (cache == null)
            {
                object objObject = dll.CreateInstance(type.FullName, true);
                SetCache(fullName, objObject, DefaultCacheTime());
                return objObject;
            }
            return cache;
        }

        /// <summary>
        /// 删除缓存
        /// </summary>
        /// <param name="cacheKey"></param>
        public static void RemoveCache(string cacheKey)
        {

            HttpRuntime.Cache.Remove(cacheKey);
        }

        /// <summary>
        /// 存入缓存
        /// </summary>
        /// <param name="cacheKey"></param>
        /// <param name="objObject"></param>
        /// <param name="slidingExpiration"></param>
        public static void SetCache(string cacheKey, object objObject, TimeSpan slidingExpiration)
        {
            HttpRuntime.Cache.Insert(cacheKey, objObject, null, Cache.NoAbsoluteExpiration, slidingExpiration);
        }


    }
}

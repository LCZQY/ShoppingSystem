/// <summary>
/// 数据模型层
/// </summary>
namespace System.Model
{
    /// <summary>
    /// 管理员表
    /// </summary>
    public class AdminUser
    {
        /// <summary>
        /// key
        /// </summary>
        public string SuId { get; set; }

        /// <summary>
        /// 管理员账号
        /// </summary>
        public string UserName { get; set; }
        /// <summary>
        /// 密码：默认123456
        /// </summary>
        public string Pwd { get; set; }

        /// <summary>
        /// 角色【0:管理员， 1：超级管理员 】
        /// </summary>
        public int? Role { get; set; }
    }

    ///// <summary>
    ///// 角色类型
    ///// </summary>
    //public enum RoleEnum
    //{
    //    /// <summary>
    //    /// 管理员： 可以执行一些操作就是不可以开后台账号
    //    /// </summary>
    //    Admin = 0,
    //    /// <summary>
    //    /// 超级管理员：  随你为所欲为，后面版本可以细分权限
    //    /// </summary>
    //    SystemAdmin = 1
    //}

}

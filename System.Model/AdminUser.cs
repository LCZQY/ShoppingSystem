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
        public string SuId { get; set; }
        public string UserName { get; set; }
        public string Pwd { get; set; }
        public RoleEnum Role { get; set; }
    }

    /// <summary>
    /// 角色类型
    /// </summary>
    public enum RoleEnum
    {
        /// <summary>
        /// 管理员： 可以执行一些操作就是不可以开后台账号
        /// </summary>
        Admin = 0,
        /// <summary>
        /// 超级管理员：  随你为所欲为，后面版本可以细分权限
        /// </summary>
        SystemAdmin = 1
    }

}

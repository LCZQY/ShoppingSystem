using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

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
        public int SuId { get; set; }
        public string UserName { get; set; }
        public string Pwd { get; set; }
        public EnumRole role { get; set; }      
    }

    /// <summary>
    /// 角色类型
    /// </summary>
    public enum EnumRole
    {
        Admin=0,
        SystemAdmin=1
    }

}

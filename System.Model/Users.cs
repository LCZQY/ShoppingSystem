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
    /// 用户
    /// </summary>
    public class Users
    {    
        /// <summary>
        /// key
        /// </summary>
        public string UserId { get; set; }

        /// <summary>
        /// 用户名
        /// </summary>
        public string UserName { get; set; }

        /// <summary>
        /// 密码
        /// </summary>
        public string Pwd { get; set; }

        /// <summary>
        /// 电子邮件
        /// </summary>
        public string Email { get; set; }

        /// <summary>
        /// 昵称
        /// </summary>
        public string Nick { get; set; }

        
        /// <summary>
        /// 用户收获地址ID
        /// </summary>
        public string DeliveryId { get; set; }
    }


}

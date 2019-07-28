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
        public int Id { get; set; }
        public string UserName { get; set; }
        public string UserPass { get; set; }
        public DateTime RegTime { get; set; }
        public string Email { get; set; }
    }


}

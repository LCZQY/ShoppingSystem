using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace System.Common
{/// <summary>
/// layer 表格数据绑定指定返回体
/// </summary>
    public class LayerTableJson
    {


        /// <summary>
        /// 行数
        /// </summary>
        public int count { get; set; }
        /// <summary>
        /// 状态码
        /// </summary>
        public int code { get; set; } = 0;
        /// <summary>
        /// 消息
        /// </summary>
        public string msg { get; set; }
        /// <summary>
        /// 数据
        /// </summary>
        public dynamic data { get; set; }

    }

    /// <summary>
    /// 返回体
    /// </summary>
    public class ResponseMessage
    {
        /// <summary>
        /// 状态码
        /// </summary>
        public int code { get; set; } = 0;
        /// <summary>
        /// 消息
        /// </summary>
        public string msg { get; set; }
    }
}

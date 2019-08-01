using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace System.Model
{
    /// <summary>
    /// 促销资讯表
    /// </summary>
    public class News
    {

        /// <summary>
        /// key
        /// </summary>
        public string NewsId { get; set; }

        /// <summary>
        /// 标题
        /// </summary>
        public string Title { get; set; }

        /// <summary>
        /// 分类 【可抽出单独的一张表】
        /// </summary>
        public string NTypes { get; set; }

        /// <summary>
        /// 内容
        /// </summary>
        public string Content { get; set; }

        /// <summary>
        /// 图片URL
        /// </summary>
        public string PhotoUrl { get; set; }


        /// <summary>
        /// 发布时间
        /// </summary>
        public DateTime PushTime { get; set; }

        /// <summary>
        /// 消息状态
        /// </summary>
        public NewsEnum States { get; set; }
    }

    /// <summary>
    /// 消息状态
    /// </summary>
    public enum NewsEnum
    {
        /// <summary>
        /// 置顶
        /// </summary>
        Top = 0,
        /// <summary>
        /// 热点
        /// </summary>
        Hot = 1

    }
}

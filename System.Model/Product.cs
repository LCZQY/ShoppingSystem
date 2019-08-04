using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Shopping.Model
{
    /// <summary>
    /// 商品表
    /// </summary>
    public class Product
    {
        /// <summary>
        /// key
        /// </summary>
        public string ProductId { get; set; }

        /// <summary>
        /// 商品名
        /// </summary>
        public string Title { get; set; }

        /// <summary>
        ///分类id
        /// </summary>
        public string CateId { get; set; }

        /// <summary>
        /// 标记价格（市场价格）
        /// </summary>
        public decimal MarketPrice { get; set; }

        /// <summary>
        /// 本地价格（本站价格）
        /// </summary>
        public decimal Price { get; set; }

        /// <summary>
        /// 商品说明描述
        /// </summary>
        public string Content { get; set; }

        /// <summary>
        /// 上架时间
        /// </summary>
        public DateTime PostTime { get; set; }

        /// <summary>
        /// 库存数量
        /// </summary>
        public int Stock { get; set; }
    }

    public class ProductEx : Product
    {
        /// <summary>
        /// 图片路径
        /// </summary>
        public string Path { get; set; }

    }
}

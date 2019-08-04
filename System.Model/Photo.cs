using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ShoppingSystem.Model
{
    /// <summary>
    ///商品图片表
    /// </summary>
    public class Photo
    {
        
        /// <summary>
        /// key
        /// </summary>
        public string PhotoId { get; set; }

        /// <summary>
        /// 商品ID
        /// </summary>
        public string ProductId { get; set; }

        /// <summary>
        /// 图片地址
        /// </summary>
        public string PhotoUrl { get; set; }


    }
}
